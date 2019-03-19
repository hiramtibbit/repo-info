<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:4`](#mono4)
-	[`mono:4.8`](#mono48)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:5`](#mono5)
-	[`mono:5.16`](#mono516)
-	[`mono:5.16.1`](#mono5161)
-	[`mono:5.16.1.0`](#mono51610)
-	[`mono:5.16.1.0-slim`](#mono51610-slim)
-	[`mono:5.16.1-slim`](#mono5161-slim)
-	[`mono:5.16-slim`](#mono516-slim)
-	[`mono:5.18`](#mono518)
-	[`mono:5.18.1`](#mono5181)
-	[`mono:5.18.1.0`](#mono51810)
-	[`mono:5.18.1.0-slim`](#mono51810-slim)
-	[`mono:5.18.1-slim`](#mono5181-slim)
-	[`mono:5.18-slim`](#mono518-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:54e7cc575e102476b358dc9625123841ee81d84632982c92873158218e2d1300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:0c7348571bb805d15969b451b47db9029e9fb3e4bee3e96cc50ceb1e85446e71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc58806e6545694419f5f0a4871f0e92c3556cf1881a08538468171092da499`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:23:13 GMT
ADD file:bbbee952d330957b2a425a378d451176c784585717c9e47df6c05c10881a7b3c in / 
# Mon, 04 Mar 2019 23:23:13 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:43:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 05:43:41 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 05:43:56 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:43:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 05:45:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2b15b7abe8b39a409a8b29c5ce62b22ce091102ca25fbf49aa877cca40983717`  
		Last Modified: Mon, 04 Mar 2019 23:27:27 GMT  
		Size: 39.3 MB (39339775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9d36945347d5333a3dc7dc6b2371a273cb9cd8273693e1efd4fab488ad1b2f`  
		Last Modified: Tue, 05 Mar 2019 06:00:58 GMT  
		Size: 6.4 MB (6419151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd25c9f2a79992e7cf884147f87d3dbcf422f5ce57fae0030aaa7e2101f142b7`  
		Last Modified: Tue, 05 Mar 2019 06:00:56 GMT  
		Size: 29.9 KB (29911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1170575c9de2fc05f31f2b60f64558d6e3cf4cda6aa8ae7ffac26e065e11db64`  
		Last Modified: Tue, 05 Mar 2019 06:01:21 GMT  
		Size: 107.2 MB (107180886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v5

```console
$ docker pull mono@sha256:38611d5ffd1cba9e263a059b8333400690e4d76c2581b07fa217da8cd259d8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d7c949a27beb490b6421128b6145254d7c3bb05bff5a288056b01b9f9e52a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:57:20 GMT
ADD file:0826f52e4e56e8a465fd832739b8eae1ccdf00313b775ea84a0fe1394d496009 in / 
# Tue, 05 Mar 2019 09:57:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:49:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 10:49:47 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 10:50:04 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:50:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 10:51:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ebf8468b45cf43bc121a229a3ba731d234459b2e3f4d35cbf9e2ee954c2a7364`  
		Last Modified: Tue, 05 Mar 2019 10:04:07 GMT  
		Size: 38.0 MB (37992220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd492abcb7f6eea764a661143494c1b0d3af3cb82fb737c26501e063a3ec5`  
		Last Modified: Tue, 05 Mar 2019 11:07:33 GMT  
		Size: 6.3 MB (6264771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d831dad33d9647bd6ae12433b07fb779db9d90beddde618263ab7ea5c2d30ca`  
		Last Modified: Tue, 05 Mar 2019 11:07:31 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b81880d69837e5f6f7d5b5ad73f40ebef5bc3fd798f431ac3e8cd88bed659`  
		Last Modified: Tue, 05 Mar 2019 11:08:07 GMT  
		Size: 97.1 MB (97061897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v7

```console
$ docker pull mono@sha256:544732c2c35ea14338c39286a0b74e21f743e5c5e7796090f1049359c16941bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe9b552ed83a4c1db5b651ebd06bcc74b3db68437892507b5ab79791ea6b3cc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:13:21 GMT
ADD file:e4f915f745bb98797369f2b70d5191cc91c3709aa7cce03f9a009b3b79fa05de in / 
# Tue, 05 Mar 2019 13:13:23 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:19:04 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 14:19:05 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 14:19:20 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 14:21:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4cf24189586df875d4f26389a5b720f76f48806bf83732cea3a108c6a9417008`  
		Last Modified: Tue, 05 Mar 2019 13:19:59 GMT  
		Size: 36.6 MB (36619951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7845ad4ee5b89b9d1ed2477305dfc5c0f9d7237e1c73d9889834cf8f082f268`  
		Last Modified: Tue, 05 Mar 2019 14:35:34 GMT  
		Size: 6.1 MB (6116761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7011191e5304e9be3631f9662b01afac1b68e883e20fc450b93e2087c64d6e`  
		Last Modified: Tue, 05 Mar 2019 14:35:33 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955a9fd5e89204de29ba6472475211691835f40c111a237f29493d12d2af2aea`  
		Last Modified: Tue, 05 Mar 2019 14:36:10 GMT  
		Size: 96.1 MB (96121464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; 386

```console
$ docker pull mono@sha256:2aa0b767cc68310c10ced8b0a9dffb0e3a310e232bc49fd32fb2e906bf0d1594
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152960981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280b2fbeb851e7388e80742f8cb06c07f179067fbfd53eb77f475b7ad69f1fd9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:47:59 GMT
ADD file:4fc0df88c99e9f004b54840d6cf825b24858e081c1d856547b13706c9433a626 in / 
# Tue, 05 Mar 2019 11:47:59 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:41:38 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 17:41:39 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 17:41:50 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:41:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 17:42:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:79bd0df238b04ae4a688a5691a4b088c6a4613287f0b59e96a612e1546c9ecee`  
		Last Modified: Tue, 05 Mar 2019 11:56:55 GMT  
		Size: 40.5 MB (40532914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1eae66d13e04af30c15a5e385a2da8e9a420f95ec7e032a52f772d19596f0d`  
		Last Modified: Tue, 05 Mar 2019 17:47:38 GMT  
		Size: 6.4 MB (6406182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1c2c1d7591dc95ac6664d922c095f4e85f873bcf49f55fad517cb7ef0b53b6`  
		Last Modified: Tue, 05 Mar 2019 17:47:37 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8641d38433905e95fd01b37d335a936768fd0b87cd3ca9c78e03b337476dc`  
		Last Modified: Tue, 05 Mar 2019 17:48:04 GMT  
		Size: 106.0 MB (105991980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:54e7cc575e102476b358dc9625123841ee81d84632982c92873158218e2d1300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:0c7348571bb805d15969b451b47db9029e9fb3e4bee3e96cc50ceb1e85446e71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc58806e6545694419f5f0a4871f0e92c3556cf1881a08538468171092da499`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:23:13 GMT
ADD file:bbbee952d330957b2a425a378d451176c784585717c9e47df6c05c10881a7b3c in / 
# Mon, 04 Mar 2019 23:23:13 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:43:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 05:43:41 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 05:43:56 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:43:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 05:45:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2b15b7abe8b39a409a8b29c5ce62b22ce091102ca25fbf49aa877cca40983717`  
		Last Modified: Mon, 04 Mar 2019 23:27:27 GMT  
		Size: 39.3 MB (39339775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9d36945347d5333a3dc7dc6b2371a273cb9cd8273693e1efd4fab488ad1b2f`  
		Last Modified: Tue, 05 Mar 2019 06:00:58 GMT  
		Size: 6.4 MB (6419151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd25c9f2a79992e7cf884147f87d3dbcf422f5ce57fae0030aaa7e2101f142b7`  
		Last Modified: Tue, 05 Mar 2019 06:00:56 GMT  
		Size: 29.9 KB (29911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1170575c9de2fc05f31f2b60f64558d6e3cf4cda6aa8ae7ffac26e065e11db64`  
		Last Modified: Tue, 05 Mar 2019 06:01:21 GMT  
		Size: 107.2 MB (107180886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v5

```console
$ docker pull mono@sha256:38611d5ffd1cba9e263a059b8333400690e4d76c2581b07fa217da8cd259d8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d7c949a27beb490b6421128b6145254d7c3bb05bff5a288056b01b9f9e52a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:57:20 GMT
ADD file:0826f52e4e56e8a465fd832739b8eae1ccdf00313b775ea84a0fe1394d496009 in / 
# Tue, 05 Mar 2019 09:57:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:49:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 10:49:47 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 10:50:04 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:50:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 10:51:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ebf8468b45cf43bc121a229a3ba731d234459b2e3f4d35cbf9e2ee954c2a7364`  
		Last Modified: Tue, 05 Mar 2019 10:04:07 GMT  
		Size: 38.0 MB (37992220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd492abcb7f6eea764a661143494c1b0d3af3cb82fb737c26501e063a3ec5`  
		Last Modified: Tue, 05 Mar 2019 11:07:33 GMT  
		Size: 6.3 MB (6264771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d831dad33d9647bd6ae12433b07fb779db9d90beddde618263ab7ea5c2d30ca`  
		Last Modified: Tue, 05 Mar 2019 11:07:31 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b81880d69837e5f6f7d5b5ad73f40ebef5bc3fd798f431ac3e8cd88bed659`  
		Last Modified: Tue, 05 Mar 2019 11:08:07 GMT  
		Size: 97.1 MB (97061897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v7

```console
$ docker pull mono@sha256:544732c2c35ea14338c39286a0b74e21f743e5c5e7796090f1049359c16941bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe9b552ed83a4c1db5b651ebd06bcc74b3db68437892507b5ab79791ea6b3cc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:13:21 GMT
ADD file:e4f915f745bb98797369f2b70d5191cc91c3709aa7cce03f9a009b3b79fa05de in / 
# Tue, 05 Mar 2019 13:13:23 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:19:04 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 14:19:05 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 14:19:20 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 14:21:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4cf24189586df875d4f26389a5b720f76f48806bf83732cea3a108c6a9417008`  
		Last Modified: Tue, 05 Mar 2019 13:19:59 GMT  
		Size: 36.6 MB (36619951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7845ad4ee5b89b9d1ed2477305dfc5c0f9d7237e1c73d9889834cf8f082f268`  
		Last Modified: Tue, 05 Mar 2019 14:35:34 GMT  
		Size: 6.1 MB (6116761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7011191e5304e9be3631f9662b01afac1b68e883e20fc450b93e2087c64d6e`  
		Last Modified: Tue, 05 Mar 2019 14:35:33 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955a9fd5e89204de29ba6472475211691835f40c111a237f29493d12d2af2aea`  
		Last Modified: Tue, 05 Mar 2019 14:36:10 GMT  
		Size: 96.1 MB (96121464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; 386

```console
$ docker pull mono@sha256:2aa0b767cc68310c10ced8b0a9dffb0e3a310e232bc49fd32fb2e906bf0d1594
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152960981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280b2fbeb851e7388e80742f8cb06c07f179067fbfd53eb77f475b7ad69f1fd9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:47:59 GMT
ADD file:4fc0df88c99e9f004b54840d6cf825b24858e081c1d856547b13706c9433a626 in / 
# Tue, 05 Mar 2019 11:47:59 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:41:38 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 17:41:39 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 17:41:50 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:41:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 17:42:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:79bd0df238b04ae4a688a5691a4b088c6a4613287f0b59e96a612e1546c9ecee`  
		Last Modified: Tue, 05 Mar 2019 11:56:55 GMT  
		Size: 40.5 MB (40532914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1eae66d13e04af30c15a5e385a2da8e9a420f95ec7e032a52f772d19596f0d`  
		Last Modified: Tue, 05 Mar 2019 17:47:38 GMT  
		Size: 6.4 MB (6406182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1c2c1d7591dc95ac6664d922c095f4e85f873bcf49f55fad517cb7ef0b53b6`  
		Last Modified: Tue, 05 Mar 2019 17:47:37 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8641d38433905e95fd01b37d335a936768fd0b87cd3ca9c78e03b337476dc`  
		Last Modified: Tue, 05 Mar 2019 17:48:04 GMT  
		Size: 106.0 MB (105991980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:54e7cc575e102476b358dc9625123841ee81d84632982c92873158218e2d1300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:0c7348571bb805d15969b451b47db9029e9fb3e4bee3e96cc50ceb1e85446e71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc58806e6545694419f5f0a4871f0e92c3556cf1881a08538468171092da499`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:23:13 GMT
ADD file:bbbee952d330957b2a425a378d451176c784585717c9e47df6c05c10881a7b3c in / 
# Mon, 04 Mar 2019 23:23:13 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:43:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 05:43:41 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 05:43:56 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:43:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 05:45:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2b15b7abe8b39a409a8b29c5ce62b22ce091102ca25fbf49aa877cca40983717`  
		Last Modified: Mon, 04 Mar 2019 23:27:27 GMT  
		Size: 39.3 MB (39339775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9d36945347d5333a3dc7dc6b2371a273cb9cd8273693e1efd4fab488ad1b2f`  
		Last Modified: Tue, 05 Mar 2019 06:00:58 GMT  
		Size: 6.4 MB (6419151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd25c9f2a79992e7cf884147f87d3dbcf422f5ce57fae0030aaa7e2101f142b7`  
		Last Modified: Tue, 05 Mar 2019 06:00:56 GMT  
		Size: 29.9 KB (29911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1170575c9de2fc05f31f2b60f64558d6e3cf4cda6aa8ae7ffac26e065e11db64`  
		Last Modified: Tue, 05 Mar 2019 06:01:21 GMT  
		Size: 107.2 MB (107180886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v5

```console
$ docker pull mono@sha256:38611d5ffd1cba9e263a059b8333400690e4d76c2581b07fa217da8cd259d8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d7c949a27beb490b6421128b6145254d7c3bb05bff5a288056b01b9f9e52a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:57:20 GMT
ADD file:0826f52e4e56e8a465fd832739b8eae1ccdf00313b775ea84a0fe1394d496009 in / 
# Tue, 05 Mar 2019 09:57:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:49:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 10:49:47 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 10:50:04 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:50:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 10:51:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ebf8468b45cf43bc121a229a3ba731d234459b2e3f4d35cbf9e2ee954c2a7364`  
		Last Modified: Tue, 05 Mar 2019 10:04:07 GMT  
		Size: 38.0 MB (37992220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd492abcb7f6eea764a661143494c1b0d3af3cb82fb737c26501e063a3ec5`  
		Last Modified: Tue, 05 Mar 2019 11:07:33 GMT  
		Size: 6.3 MB (6264771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d831dad33d9647bd6ae12433b07fb779db9d90beddde618263ab7ea5c2d30ca`  
		Last Modified: Tue, 05 Mar 2019 11:07:31 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b81880d69837e5f6f7d5b5ad73f40ebef5bc3fd798f431ac3e8cd88bed659`  
		Last Modified: Tue, 05 Mar 2019 11:08:07 GMT  
		Size: 97.1 MB (97061897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:544732c2c35ea14338c39286a0b74e21f743e5c5e7796090f1049359c16941bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe9b552ed83a4c1db5b651ebd06bcc74b3db68437892507b5ab79791ea6b3cc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:13:21 GMT
ADD file:e4f915f745bb98797369f2b70d5191cc91c3709aa7cce03f9a009b3b79fa05de in / 
# Tue, 05 Mar 2019 13:13:23 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:19:04 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 14:19:05 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 14:19:20 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 14:21:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4cf24189586df875d4f26389a5b720f76f48806bf83732cea3a108c6a9417008`  
		Last Modified: Tue, 05 Mar 2019 13:19:59 GMT  
		Size: 36.6 MB (36619951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7845ad4ee5b89b9d1ed2477305dfc5c0f9d7237e1c73d9889834cf8f082f268`  
		Last Modified: Tue, 05 Mar 2019 14:35:34 GMT  
		Size: 6.1 MB (6116761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7011191e5304e9be3631f9662b01afac1b68e883e20fc450b93e2087c64d6e`  
		Last Modified: Tue, 05 Mar 2019 14:35:33 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955a9fd5e89204de29ba6472475211691835f40c111a237f29493d12d2af2aea`  
		Last Modified: Tue, 05 Mar 2019 14:36:10 GMT  
		Size: 96.1 MB (96121464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; 386

```console
$ docker pull mono@sha256:2aa0b767cc68310c10ced8b0a9dffb0e3a310e232bc49fd32fb2e906bf0d1594
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152960981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280b2fbeb851e7388e80742f8cb06c07f179067fbfd53eb77f475b7ad69f1fd9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:47:59 GMT
ADD file:4fc0df88c99e9f004b54840d6cf825b24858e081c1d856547b13706c9433a626 in / 
# Tue, 05 Mar 2019 11:47:59 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:41:38 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 17:41:39 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 17:41:50 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:41:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 17:42:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:79bd0df238b04ae4a688a5691a4b088c6a4613287f0b59e96a612e1546c9ecee`  
		Last Modified: Tue, 05 Mar 2019 11:56:55 GMT  
		Size: 40.5 MB (40532914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1eae66d13e04af30c15a5e385a2da8e9a420f95ec7e032a52f772d19596f0d`  
		Last Modified: Tue, 05 Mar 2019 17:47:38 GMT  
		Size: 6.4 MB (6406182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1c2c1d7591dc95ac6664d922c095f4e85f873bcf49f55fad517cb7ef0b53b6`  
		Last Modified: Tue, 05 Mar 2019 17:47:37 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8641d38433905e95fd01b37d335a936768fd0b87cd3ca9c78e03b337476dc`  
		Last Modified: Tue, 05 Mar 2019 17:48:04 GMT  
		Size: 106.0 MB (105991980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:54e7cc575e102476b358dc9625123841ee81d84632982c92873158218e2d1300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:0c7348571bb805d15969b451b47db9029e9fb3e4bee3e96cc50ceb1e85446e71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc58806e6545694419f5f0a4871f0e92c3556cf1881a08538468171092da499`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:23:13 GMT
ADD file:bbbee952d330957b2a425a378d451176c784585717c9e47df6c05c10881a7b3c in / 
# Mon, 04 Mar 2019 23:23:13 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:43:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 05:43:41 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 05:43:56 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:43:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 05:45:11 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2b15b7abe8b39a409a8b29c5ce62b22ce091102ca25fbf49aa877cca40983717`  
		Last Modified: Mon, 04 Mar 2019 23:27:27 GMT  
		Size: 39.3 MB (39339775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9d36945347d5333a3dc7dc6b2371a273cb9cd8273693e1efd4fab488ad1b2f`  
		Last Modified: Tue, 05 Mar 2019 06:00:58 GMT  
		Size: 6.4 MB (6419151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd25c9f2a79992e7cf884147f87d3dbcf422f5ce57fae0030aaa7e2101f142b7`  
		Last Modified: Tue, 05 Mar 2019 06:00:56 GMT  
		Size: 29.9 KB (29911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1170575c9de2fc05f31f2b60f64558d6e3cf4cda6aa8ae7ffac26e065e11db64`  
		Last Modified: Tue, 05 Mar 2019 06:01:21 GMT  
		Size: 107.2 MB (107180886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v5

```console
$ docker pull mono@sha256:38611d5ffd1cba9e263a059b8333400690e4d76c2581b07fa217da8cd259d8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d7c949a27beb490b6421128b6145254d7c3bb05bff5a288056b01b9f9e52a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:57:20 GMT
ADD file:0826f52e4e56e8a465fd832739b8eae1ccdf00313b775ea84a0fe1394d496009 in / 
# Tue, 05 Mar 2019 09:57:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:49:47 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 10:49:47 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 10:50:04 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:50:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 10:51:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ebf8468b45cf43bc121a229a3ba731d234459b2e3f4d35cbf9e2ee954c2a7364`  
		Last Modified: Tue, 05 Mar 2019 10:04:07 GMT  
		Size: 38.0 MB (37992220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982bd492abcb7f6eea764a661143494c1b0d3af3cb82fb737c26501e063a3ec5`  
		Last Modified: Tue, 05 Mar 2019 11:07:33 GMT  
		Size: 6.3 MB (6264771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d831dad33d9647bd6ae12433b07fb779db9d90beddde618263ab7ea5c2d30ca`  
		Last Modified: Tue, 05 Mar 2019 11:07:31 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607b81880d69837e5f6f7d5b5ad73f40ebef5bc3fd798f431ac3e8cd88bed659`  
		Last Modified: Tue, 05 Mar 2019 11:08:07 GMT  
		Size: 97.1 MB (97061897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v7

```console
$ docker pull mono@sha256:544732c2c35ea14338c39286a0b74e21f743e5c5e7796090f1049359c16941bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe9b552ed83a4c1db5b651ebd06bcc74b3db68437892507b5ab79791ea6b3cc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:13:21 GMT
ADD file:e4f915f745bb98797369f2b70d5191cc91c3709aa7cce03f9a009b3b79fa05de in / 
# Tue, 05 Mar 2019 13:13:23 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:19:04 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 14:19:05 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 14:19:20 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 14:21:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4cf24189586df875d4f26389a5b720f76f48806bf83732cea3a108c6a9417008`  
		Last Modified: Tue, 05 Mar 2019 13:19:59 GMT  
		Size: 36.6 MB (36619951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7845ad4ee5b89b9d1ed2477305dfc5c0f9d7237e1c73d9889834cf8f082f268`  
		Last Modified: Tue, 05 Mar 2019 14:35:34 GMT  
		Size: 6.1 MB (6116761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7011191e5304e9be3631f9662b01afac1b68e883e20fc450b93e2087c64d6e`  
		Last Modified: Tue, 05 Mar 2019 14:35:33 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955a9fd5e89204de29ba6472475211691835f40c111a237f29493d12d2af2aea`  
		Last Modified: Tue, 05 Mar 2019 14:36:10 GMT  
		Size: 96.1 MB (96121464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; 386

```console
$ docker pull mono@sha256:2aa0b767cc68310c10ced8b0a9dffb0e3a310e232bc49fd32fb2e906bf0d1594
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152960981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280b2fbeb851e7388e80742f8cb06c07f179067fbfd53eb77f475b7ad69f1fd9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:47:59 GMT
ADD file:4fc0df88c99e9f004b54840d6cf825b24858e081c1d856547b13706c9433a626 in / 
# Tue, 05 Mar 2019 11:47:59 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:41:38 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 05 Mar 2019 17:41:39 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 05 Mar 2019 17:41:50 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:41:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 05 Mar 2019 17:42:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:79bd0df238b04ae4a688a5691a4b088c6a4613287f0b59e96a612e1546c9ecee`  
		Last Modified: Tue, 05 Mar 2019 11:56:55 GMT  
		Size: 40.5 MB (40532914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1eae66d13e04af30c15a5e385a2da8e9a420f95ec7e032a52f772d19596f0d`  
		Last Modified: Tue, 05 Mar 2019 17:47:38 GMT  
		Size: 6.4 MB (6406182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1c2c1d7591dc95ac6664d922c095f4e85f873bcf49f55fad517cb7ef0b53b6`  
		Last Modified: Tue, 05 Mar 2019 17:47:37 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c8641d38433905e95fd01b37d335a936768fd0b87cd3ca9c78e03b337476dc`  
		Last Modified: Tue, 05 Mar 2019 17:48:04 GMT  
		Size: 106.0 MB (105991980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:a91a4be5fab5db654c236671b968b7e3c3d8f9d357a9f2a82a002a66d34f3262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:285214808efa03b218625428315e18f8d9ccf9a6000c67e114c5047d7342a30a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224033247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74fc7446037706377b3dcb796f8e327444523e7dcf775d9b2356e44b63674269`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 00:32:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72d3f16747e52933622a7ffe64d422116f14391e7893514c25c0d36b023c189`  
		Last Modified: Tue, 19 Mar 2019 00:39:28 GMT  
		Size: 140.1 MB (140135343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v5

```console
$ docker pull mono@sha256:b7e6cd18f3178a6a7ccd40de59f6b5de0bf172a136ea815cde630cddab1c4190
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171273783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fd447782ede14feeca996165b24d7a6e16ea9b21ccd2876400bf014076b62`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:53:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21fd8351c4d9f2d74761d23b5db32fcc2d57c1fa8ea3ca33b4797b9c291da4d`  
		Last Modified: Tue, 19 Mar 2019 08:58:26 GMT  
		Size: 125.6 MB (125589951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:892bdf4f3763a869ff0d3eb9f7eaf00d98632e179a8de4ef343f56e1568e2a4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188208188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145cb44b791af643a65c4f7c874b0a4a86c82532de7ef5a3572837ae980fd12c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:54:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa182585d233fbb7c93d9c0c8ea0d1a13461ddd355036a38b359c09f7cc44c2b`  
		Last Modified: Tue, 19 Mar 2019 09:06:57 GMT  
		Size: 139.4 MB (139385561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; ppc64le

```console
$ docker pull mono@sha256:6f7a8c226b33e04b64f84069a4f88342ef848704fc5668d780e1a9bbf3ae8808
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173696350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4abacfd6b0151898b71ef6fb2fa022d83f03a08d84bc3b0f32ea8256e541ac`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:30:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92609e0ed6685afe32731ca591c5f09ce306c4dd26da3c34712b4d52545a5394`  
		Last Modified: Tue, 19 Mar 2019 08:40:47 GMT  
		Size: 126.0 MB (126047683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16`

```console
$ docker pull mono@sha256:10d25b85b5cb34cdd76b61ecd8fc22ebe034ef7b3bbbcd8afea740bc6f0d938e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.16` - linux; amd64

```console
$ docker pull mono@sha256:bc7918003614e906497d293051aa4bbda37c1ac09eb92cf1f1029983e8c6eb0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205233670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31458f00efd2f4fd241d8a88898bf9b418b773fd2c84a3f303e8b16852612a84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:23:25 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 00:23:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 00:38:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e8e0bf1451cb494a9c48873dd534a312b9d63711bb76350485a63eed40d828`  
		Last Modified: Tue, 19 Mar 2019 00:38:50 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2892b29d1b8efb21cb325acdf421f1c66afdb7bfd3c04dca9775ca8af356c5`  
		Last Modified: Tue, 19 Mar 2019 00:38:59 GMT  
		Size: 45.7 MB (45721608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f778f0a02c206698924adb491b1a87935f16af361e6d73097723b29658bbcec4`  
		Last Modified: Tue, 19 Mar 2019 00:39:57 GMT  
		Size: 136.8 MB (136771589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v5

```console
$ docker pull mono@sha256:55ab538db8550f624953e13d4b88407d584ee130faaaee9d0f04caaeccecb290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184092215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae5ebf0a5c8b4ca9c820e45c22ae5c5c7541db5299a1282c658e53b7062ef3d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:49:48 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:50:06 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:50:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:56:34 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3586e8032b226f476811da84ed979086c6def210828b6fba4a0866b5673704`  
		Last Modified: Tue, 19 Mar 2019 08:57:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81eb25297996273800d602a9d21a812ea5092e4aec280e643caa327c1add6f3`  
		Last Modified: Tue, 19 Mar 2019 08:57:34 GMT  
		Size: 40.3 MB (40277891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40de1d8f727d6bcb371824e782c6fc39d91f412ead4a7f4b1b5e04fb6ef14ec`  
		Last Modified: Tue, 19 Mar 2019 09:00:13 GMT  
		Size: 122.4 MB (122409318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:dc094bc735e1a4db8940e27759d21abd5958fa62150ee6f902a806de0cbe1dac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199051037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072d802bedaf2fc2fbcd68176dae8f3f7cba9c263fa470dcdf4a546ad20cd63e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:42:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:43:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:44:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 09:02:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8b9c81cd58b1e86cb660c7e720e55d867d93019c27eebffcc61695c29dda9e`  
		Last Modified: Tue, 19 Mar 2019 09:04:46 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d28f6fb1f22347084d4697435a11db36df386f015d0cc71a98cb31c8397f118`  
		Last Modified: Tue, 19 Mar 2019 09:05:13 GMT  
		Size: 42.3 MB (42283983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bd5b39353fd1dd77ae07e2f339819cfcbad2117a30292f8c5680c93eda721`  
		Last Modified: Tue, 19 Mar 2019 09:08:46 GMT  
		Size: 136.2 MB (136172429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; ppc64le

```console
$ docker pull mono@sha256:5dd616730323a5939a26484d8a268b677b4681e8addb37852f7ab6740fcc6bd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170465818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca125518c3d34088c813a24f6aa13fe13ee0abfbb41007c3374c4d08b26a1b8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:21:08 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:22:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:23:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:37:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5078139ca0988c3041bae758947ac5ccfc221eacd0be889c5f242086406f0e9a`  
		Last Modified: Tue, 19 Mar 2019 08:39:03 GMT  
		Size: 244.5 KB (244510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bdf9f3e250e1c26a67de7c111fb52b2706da0a6c7023a74c4c0435d2a7f70`  
		Last Modified: Tue, 19 Mar 2019 08:39:19 GMT  
		Size: 24.7 MB (24656726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af68d43556b708b8ae85e6a08920521c04099cdd0e35d189dd29b84f3304ac`  
		Last Modified: Tue, 19 Mar 2019 08:42:19 GMT  
		Size: 122.8 MB (122813085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.1`

```console
$ docker pull mono@sha256:10d25b85b5cb34cdd76b61ecd8fc22ebe034ef7b3bbbcd8afea740bc6f0d938e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.16.1` - linux; amd64

```console
$ docker pull mono@sha256:bc7918003614e906497d293051aa4bbda37c1ac09eb92cf1f1029983e8c6eb0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205233670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31458f00efd2f4fd241d8a88898bf9b418b773fd2c84a3f303e8b16852612a84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:23:25 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 00:23:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 00:38:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e8e0bf1451cb494a9c48873dd534a312b9d63711bb76350485a63eed40d828`  
		Last Modified: Tue, 19 Mar 2019 00:38:50 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2892b29d1b8efb21cb325acdf421f1c66afdb7bfd3c04dca9775ca8af356c5`  
		Last Modified: Tue, 19 Mar 2019 00:38:59 GMT  
		Size: 45.7 MB (45721608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f778f0a02c206698924adb491b1a87935f16af361e6d73097723b29658bbcec4`  
		Last Modified: Tue, 19 Mar 2019 00:39:57 GMT  
		Size: 136.8 MB (136771589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1` - linux; arm variant v5

```console
$ docker pull mono@sha256:55ab538db8550f624953e13d4b88407d584ee130faaaee9d0f04caaeccecb290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184092215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae5ebf0a5c8b4ca9c820e45c22ae5c5c7541db5299a1282c658e53b7062ef3d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:49:48 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:50:06 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:50:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:56:34 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3586e8032b226f476811da84ed979086c6def210828b6fba4a0866b5673704`  
		Last Modified: Tue, 19 Mar 2019 08:57:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81eb25297996273800d602a9d21a812ea5092e4aec280e643caa327c1add6f3`  
		Last Modified: Tue, 19 Mar 2019 08:57:34 GMT  
		Size: 40.3 MB (40277891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40de1d8f727d6bcb371824e782c6fc39d91f412ead4a7f4b1b5e04fb6ef14ec`  
		Last Modified: Tue, 19 Mar 2019 09:00:13 GMT  
		Size: 122.4 MB (122409318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:dc094bc735e1a4db8940e27759d21abd5958fa62150ee6f902a806de0cbe1dac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199051037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072d802bedaf2fc2fbcd68176dae8f3f7cba9c263fa470dcdf4a546ad20cd63e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:42:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:43:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:44:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 09:02:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8b9c81cd58b1e86cb660c7e720e55d867d93019c27eebffcc61695c29dda9e`  
		Last Modified: Tue, 19 Mar 2019 09:04:46 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d28f6fb1f22347084d4697435a11db36df386f015d0cc71a98cb31c8397f118`  
		Last Modified: Tue, 19 Mar 2019 09:05:13 GMT  
		Size: 42.3 MB (42283983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bd5b39353fd1dd77ae07e2f339819cfcbad2117a30292f8c5680c93eda721`  
		Last Modified: Tue, 19 Mar 2019 09:08:46 GMT  
		Size: 136.2 MB (136172429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1` - linux; ppc64le

```console
$ docker pull mono@sha256:5dd616730323a5939a26484d8a268b677b4681e8addb37852f7ab6740fcc6bd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170465818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca125518c3d34088c813a24f6aa13fe13ee0abfbb41007c3374c4d08b26a1b8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:21:08 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:22:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:23:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:37:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5078139ca0988c3041bae758947ac5ccfc221eacd0be889c5f242086406f0e9a`  
		Last Modified: Tue, 19 Mar 2019 08:39:03 GMT  
		Size: 244.5 KB (244510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bdf9f3e250e1c26a67de7c111fb52b2706da0a6c7023a74c4c0435d2a7f70`  
		Last Modified: Tue, 19 Mar 2019 08:39:19 GMT  
		Size: 24.7 MB (24656726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af68d43556b708b8ae85e6a08920521c04099cdd0e35d189dd29b84f3304ac`  
		Last Modified: Tue, 19 Mar 2019 08:42:19 GMT  
		Size: 122.8 MB (122813085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.1.0`

```console
$ docker pull mono@sha256:10d25b85b5cb34cdd76b61ecd8fc22ebe034ef7b3bbbcd8afea740bc6f0d938e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.16.1.0` - linux; amd64

```console
$ docker pull mono@sha256:bc7918003614e906497d293051aa4bbda37c1ac09eb92cf1f1029983e8c6eb0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205233670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31458f00efd2f4fd241d8a88898bf9b418b773fd2c84a3f303e8b16852612a84`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:23:25 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 00:23:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 00:38:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e8e0bf1451cb494a9c48873dd534a312b9d63711bb76350485a63eed40d828`  
		Last Modified: Tue, 19 Mar 2019 00:38:50 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2892b29d1b8efb21cb325acdf421f1c66afdb7bfd3c04dca9775ca8af356c5`  
		Last Modified: Tue, 19 Mar 2019 00:38:59 GMT  
		Size: 45.7 MB (45721608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f778f0a02c206698924adb491b1a87935f16af361e6d73097723b29658bbcec4`  
		Last Modified: Tue, 19 Mar 2019 00:39:57 GMT  
		Size: 136.8 MB (136771589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1.0` - linux; arm variant v5

```console
$ docker pull mono@sha256:55ab538db8550f624953e13d4b88407d584ee130faaaee9d0f04caaeccecb290
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184092215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae5ebf0a5c8b4ca9c820e45c22ae5c5c7541db5299a1282c658e53b7062ef3d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:49:48 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:50:06 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:50:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:56:34 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3586e8032b226f476811da84ed979086c6def210828b6fba4a0866b5673704`  
		Last Modified: Tue, 19 Mar 2019 08:57:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81eb25297996273800d602a9d21a812ea5092e4aec280e643caa327c1add6f3`  
		Last Modified: Tue, 19 Mar 2019 08:57:34 GMT  
		Size: 40.3 MB (40277891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40de1d8f727d6bcb371824e782c6fc39d91f412ead4a7f4b1b5e04fb6ef14ec`  
		Last Modified: Tue, 19 Mar 2019 09:00:13 GMT  
		Size: 122.4 MB (122409318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:dc094bc735e1a4db8940e27759d21abd5958fa62150ee6f902a806de0cbe1dac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199051037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072d802bedaf2fc2fbcd68176dae8f3f7cba9c263fa470dcdf4a546ad20cd63e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:42:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:43:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:44:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 09:02:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8b9c81cd58b1e86cb660c7e720e55d867d93019c27eebffcc61695c29dda9e`  
		Last Modified: Tue, 19 Mar 2019 09:04:46 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d28f6fb1f22347084d4697435a11db36df386f015d0cc71a98cb31c8397f118`  
		Last Modified: Tue, 19 Mar 2019 09:05:13 GMT  
		Size: 42.3 MB (42283983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2bd5b39353fd1dd77ae07e2f339819cfcbad2117a30292f8c5680c93eda721`  
		Last Modified: Tue, 19 Mar 2019 09:08:46 GMT  
		Size: 136.2 MB (136172429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1.0` - linux; ppc64le

```console
$ docker pull mono@sha256:5dd616730323a5939a26484d8a268b677b4681e8addb37852f7ab6740fcc6bd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170465818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca125518c3d34088c813a24f6aa13fe13ee0abfbb41007c3374c4d08b26a1b8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:21:08 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:22:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:23:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:37:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5078139ca0988c3041bae758947ac5ccfc221eacd0be889c5f242086406f0e9a`  
		Last Modified: Tue, 19 Mar 2019 08:39:03 GMT  
		Size: 244.5 KB (244510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bdf9f3e250e1c26a67de7c111fb52b2706da0a6c7023a74c4c0435d2a7f70`  
		Last Modified: Tue, 19 Mar 2019 08:39:19 GMT  
		Size: 24.7 MB (24656726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43af68d43556b708b8ae85e6a08920521c04099cdd0e35d189dd29b84f3304ac`  
		Last Modified: Tue, 19 Mar 2019 08:42:19 GMT  
		Size: 122.8 MB (122813085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.1.0-slim`

```console
$ docker pull mono@sha256:d13f759146b1898a42512eb013ce2aa9bb3d3b0586b7ebe3236fef78e16110f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.16.1.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:8b2932c570330575da75329a28be144f951dfcb00c2cf6d387d3fedc65de3b0c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68462081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ee4f7c21079840242a2f5c3f6c4f398c8787ca16493ea98baca65e44c31f63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:23:25 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 00:23:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e8e0bf1451cb494a9c48873dd534a312b9d63711bb76350485a63eed40d828`  
		Last Modified: Tue, 19 Mar 2019 00:38:50 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2892b29d1b8efb21cb325acdf421f1c66afdb7bfd3c04dca9775ca8af356c5`  
		Last Modified: Tue, 19 Mar 2019 00:38:59 GMT  
		Size: 45.7 MB (45721608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1.0-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:2e119d890db02812bf93af1b5f74b14fdb9d6d62ee4980b6450d19f1e42a3415
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61682897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61cf1ce2d1d130b080c28be30565c249f7595854463b8c7eb86fb9110abcfb3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:49:48 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:50:06 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:50:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3586e8032b226f476811da84ed979086c6def210828b6fba4a0866b5673704`  
		Last Modified: Tue, 19 Mar 2019 08:57:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81eb25297996273800d602a9d21a812ea5092e4aec280e643caa327c1add6f3`  
		Last Modified: Tue, 19 Mar 2019 08:57:34 GMT  
		Size: 40.3 MB (40277891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:95941ec4b473a93d25641393e2787fb6a840b3d07e0128779b1e016228605c5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62878608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86709b8dc5b857cb78095de4b45864c10e4a7c71a5ea951ef6eab97f0a50323`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:42:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:43:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:44:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8b9c81cd58b1e86cb660c7e720e55d867d93019c27eebffcc61695c29dda9e`  
		Last Modified: Tue, 19 Mar 2019 09:04:46 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d28f6fb1f22347084d4697435a11db36df386f015d0cc71a98cb31c8397f118`  
		Last Modified: Tue, 19 Mar 2019 09:05:13 GMT  
		Size: 42.3 MB (42283983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1.0-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:4b1b7a4b7cbefedd8133142a6b40b90bafb368b39d0fbc31f52ebc16eccb87f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47652733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429629627be053f2ad38a8b55ec9b2eb6e0378d1af0ebc2da7158a1eb434314`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:21:08 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:22:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:23:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5078139ca0988c3041bae758947ac5ccfc221eacd0be889c5f242086406f0e9a`  
		Last Modified: Tue, 19 Mar 2019 08:39:03 GMT  
		Size: 244.5 KB (244510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bdf9f3e250e1c26a67de7c111fb52b2706da0a6c7023a74c4c0435d2a7f70`  
		Last Modified: Tue, 19 Mar 2019 08:39:19 GMT  
		Size: 24.7 MB (24656726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.1-slim`

```console
$ docker pull mono@sha256:d13f759146b1898a42512eb013ce2aa9bb3d3b0586b7ebe3236fef78e16110f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.16.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:8b2932c570330575da75329a28be144f951dfcb00c2cf6d387d3fedc65de3b0c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68462081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ee4f7c21079840242a2f5c3f6c4f398c8787ca16493ea98baca65e44c31f63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:23:25 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 00:23:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e8e0bf1451cb494a9c48873dd534a312b9d63711bb76350485a63eed40d828`  
		Last Modified: Tue, 19 Mar 2019 00:38:50 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2892b29d1b8efb21cb325acdf421f1c66afdb7bfd3c04dca9775ca8af356c5`  
		Last Modified: Tue, 19 Mar 2019 00:38:59 GMT  
		Size: 45.7 MB (45721608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:2e119d890db02812bf93af1b5f74b14fdb9d6d62ee4980b6450d19f1e42a3415
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61682897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61cf1ce2d1d130b080c28be30565c249f7595854463b8c7eb86fb9110abcfb3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:49:48 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:50:06 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:50:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3586e8032b226f476811da84ed979086c6def210828b6fba4a0866b5673704`  
		Last Modified: Tue, 19 Mar 2019 08:57:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81eb25297996273800d602a9d21a812ea5092e4aec280e643caa327c1add6f3`  
		Last Modified: Tue, 19 Mar 2019 08:57:34 GMT  
		Size: 40.3 MB (40277891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:95941ec4b473a93d25641393e2787fb6a840b3d07e0128779b1e016228605c5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62878608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86709b8dc5b857cb78095de4b45864c10e4a7c71a5ea951ef6eab97f0a50323`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:42:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:43:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:44:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8b9c81cd58b1e86cb660c7e720e55d867d93019c27eebffcc61695c29dda9e`  
		Last Modified: Tue, 19 Mar 2019 09:04:46 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d28f6fb1f22347084d4697435a11db36df386f015d0cc71a98cb31c8397f118`  
		Last Modified: Tue, 19 Mar 2019 09:05:13 GMT  
		Size: 42.3 MB (42283983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:4b1b7a4b7cbefedd8133142a6b40b90bafb368b39d0fbc31f52ebc16eccb87f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47652733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429629627be053f2ad38a8b55ec9b2eb6e0378d1af0ebc2da7158a1eb434314`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:21:08 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:22:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:23:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5078139ca0988c3041bae758947ac5ccfc221eacd0be889c5f242086406f0e9a`  
		Last Modified: Tue, 19 Mar 2019 08:39:03 GMT  
		Size: 244.5 KB (244510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bdf9f3e250e1c26a67de7c111fb52b2706da0a6c7023a74c4c0435d2a7f70`  
		Last Modified: Tue, 19 Mar 2019 08:39:19 GMT  
		Size: 24.7 MB (24656726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16-slim`

```console
$ docker pull mono@sha256:d13f759146b1898a42512eb013ce2aa9bb3d3b0586b7ebe3236fef78e16110f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.16-slim` - linux; amd64

```console
$ docker pull mono@sha256:8b2932c570330575da75329a28be144f951dfcb00c2cf6d387d3fedc65de3b0c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68462081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ee4f7c21079840242a2f5c3f6c4f398c8787ca16493ea98baca65e44c31f63`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:23:25 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 00:23:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e8e0bf1451cb494a9c48873dd534a312b9d63711bb76350485a63eed40d828`  
		Last Modified: Tue, 19 Mar 2019 00:38:50 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2892b29d1b8efb21cb325acdf421f1c66afdb7bfd3c04dca9775ca8af356c5`  
		Last Modified: Tue, 19 Mar 2019 00:38:59 GMT  
		Size: 45.7 MB (45721608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:2e119d890db02812bf93af1b5f74b14fdb9d6d62ee4980b6450d19f1e42a3415
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61682897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61cf1ce2d1d130b080c28be30565c249f7595854463b8c7eb86fb9110abcfb3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:49:48 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:50:06 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:50:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3586e8032b226f476811da84ed979086c6def210828b6fba4a0866b5673704`  
		Last Modified: Tue, 19 Mar 2019 08:57:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81eb25297996273800d602a9d21a812ea5092e4aec280e643caa327c1add6f3`  
		Last Modified: Tue, 19 Mar 2019 08:57:34 GMT  
		Size: 40.3 MB (40277891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:95941ec4b473a93d25641393e2787fb6a840b3d07e0128779b1e016228605c5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62878608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86709b8dc5b857cb78095de4b45864c10e4a7c71a5ea951ef6eab97f0a50323`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:42:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:43:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:44:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8b9c81cd58b1e86cb660c7e720e55d867d93019c27eebffcc61695c29dda9e`  
		Last Modified: Tue, 19 Mar 2019 09:04:46 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d28f6fb1f22347084d4697435a11db36df386f015d0cc71a98cb31c8397f118`  
		Last Modified: Tue, 19 Mar 2019 09:05:13 GMT  
		Size: 42.3 MB (42283983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:4b1b7a4b7cbefedd8133142a6b40b90bafb368b39d0fbc31f52ebc16eccb87f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47652733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7429629627be053f2ad38a8b55ec9b2eb6e0378d1af0ebc2da7158a1eb434314`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:21:08 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 08:22:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:23:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5078139ca0988c3041bae758947ac5ccfc221eacd0be889c5f242086406f0e9a`  
		Last Modified: Tue, 19 Mar 2019 08:39:03 GMT  
		Size: 244.5 KB (244510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639bdf9f3e250e1c26a67de7c111fb52b2706da0a6c7023a74c4c0435d2a7f70`  
		Last Modified: Tue, 19 Mar 2019 08:39:19 GMT  
		Size: 24.7 MB (24656726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18`

```console
$ docker pull mono@sha256:a91a4be5fab5db654c236671b968b7e3c3d8f9d357a9f2a82a002a66d34f3262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.18` - linux; amd64

```console
$ docker pull mono@sha256:285214808efa03b218625428315e18f8d9ccf9a6000c67e114c5047d7342a30a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224033247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74fc7446037706377b3dcb796f8e327444523e7dcf775d9b2356e44b63674269`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 00:32:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72d3f16747e52933622a7ffe64d422116f14391e7893514c25c0d36b023c189`  
		Last Modified: Tue, 19 Mar 2019 00:39:28 GMT  
		Size: 140.1 MB (140135343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm variant v5

```console
$ docker pull mono@sha256:b7e6cd18f3178a6a7ccd40de59f6b5de0bf172a136ea815cde630cddab1c4190
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171273783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fd447782ede14feeca996165b24d7a6e16ea9b21ccd2876400bf014076b62`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:53:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21fd8351c4d9f2d74761d23b5db32fcc2d57c1fa8ea3ca33b4797b9c291da4d`  
		Last Modified: Tue, 19 Mar 2019 08:58:26 GMT  
		Size: 125.6 MB (125589951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:892bdf4f3763a869ff0d3eb9f7eaf00d98632e179a8de4ef343f56e1568e2a4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188208188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145cb44b791af643a65c4f7c874b0a4a86c82532de7ef5a3572837ae980fd12c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:54:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa182585d233fbb7c93d9c0c8ea0d1a13461ddd355036a38b359c09f7cc44c2b`  
		Last Modified: Tue, 19 Mar 2019 09:06:57 GMT  
		Size: 139.4 MB (139385561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; ppc64le

```console
$ docker pull mono@sha256:6f7a8c226b33e04b64f84069a4f88342ef848704fc5668d780e1a9bbf3ae8808
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173696350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4abacfd6b0151898b71ef6fb2fa022d83f03a08d84bc3b0f32ea8256e541ac`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:30:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92609e0ed6685afe32731ca591c5f09ce306c4dd26da3c34712b4d52545a5394`  
		Last Modified: Tue, 19 Mar 2019 08:40:47 GMT  
		Size: 126.0 MB (126047683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1`

```console
$ docker pull mono@sha256:a91a4be5fab5db654c236671b968b7e3c3d8f9d357a9f2a82a002a66d34f3262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.18.1` - linux; amd64

```console
$ docker pull mono@sha256:285214808efa03b218625428315e18f8d9ccf9a6000c67e114c5047d7342a30a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224033247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74fc7446037706377b3dcb796f8e327444523e7dcf775d9b2356e44b63674269`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 00:32:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72d3f16747e52933622a7ffe64d422116f14391e7893514c25c0d36b023c189`  
		Last Modified: Tue, 19 Mar 2019 00:39:28 GMT  
		Size: 140.1 MB (140135343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; arm variant v5

```console
$ docker pull mono@sha256:b7e6cd18f3178a6a7ccd40de59f6b5de0bf172a136ea815cde630cddab1c4190
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171273783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fd447782ede14feeca996165b24d7a6e16ea9b21ccd2876400bf014076b62`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:53:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21fd8351c4d9f2d74761d23b5db32fcc2d57c1fa8ea3ca33b4797b9c291da4d`  
		Last Modified: Tue, 19 Mar 2019 08:58:26 GMT  
		Size: 125.6 MB (125589951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:892bdf4f3763a869ff0d3eb9f7eaf00d98632e179a8de4ef343f56e1568e2a4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188208188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145cb44b791af643a65c4f7c874b0a4a86c82532de7ef5a3572837ae980fd12c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:54:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa182585d233fbb7c93d9c0c8ea0d1a13461ddd355036a38b359c09f7cc44c2b`  
		Last Modified: Tue, 19 Mar 2019 09:06:57 GMT  
		Size: 139.4 MB (139385561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; ppc64le

```console
$ docker pull mono@sha256:6f7a8c226b33e04b64f84069a4f88342ef848704fc5668d780e1a9bbf3ae8808
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173696350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4abacfd6b0151898b71ef6fb2fa022d83f03a08d84bc3b0f32ea8256e541ac`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:30:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92609e0ed6685afe32731ca591c5f09ce306c4dd26da3c34712b4d52545a5394`  
		Last Modified: Tue, 19 Mar 2019 08:40:47 GMT  
		Size: 126.0 MB (126047683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1.0`

```console
$ docker pull mono@sha256:a91a4be5fab5db654c236671b968b7e3c3d8f9d357a9f2a82a002a66d34f3262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.18.1.0` - linux; amd64

```console
$ docker pull mono@sha256:285214808efa03b218625428315e18f8d9ccf9a6000c67e114c5047d7342a30a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224033247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74fc7446037706377b3dcb796f8e327444523e7dcf775d9b2356e44b63674269`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 00:32:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72d3f16747e52933622a7ffe64d422116f14391e7893514c25c0d36b023c189`  
		Last Modified: Tue, 19 Mar 2019 00:39:28 GMT  
		Size: 140.1 MB (140135343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.0` - linux; arm variant v5

```console
$ docker pull mono@sha256:b7e6cd18f3178a6a7ccd40de59f6b5de0bf172a136ea815cde630cddab1c4190
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171273783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fd447782ede14feeca996165b24d7a6e16ea9b21ccd2876400bf014076b62`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:53:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21fd8351c4d9f2d74761d23b5db32fcc2d57c1fa8ea3ca33b4797b9c291da4d`  
		Last Modified: Tue, 19 Mar 2019 08:58:26 GMT  
		Size: 125.6 MB (125589951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:892bdf4f3763a869ff0d3eb9f7eaf00d98632e179a8de4ef343f56e1568e2a4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188208188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145cb44b791af643a65c4f7c874b0a4a86c82532de7ef5a3572837ae980fd12c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:54:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa182585d233fbb7c93d9c0c8ea0d1a13461ddd355036a38b359c09f7cc44c2b`  
		Last Modified: Tue, 19 Mar 2019 09:06:57 GMT  
		Size: 139.4 MB (139385561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.0` - linux; ppc64le

```console
$ docker pull mono@sha256:6f7a8c226b33e04b64f84069a4f88342ef848704fc5668d780e1a9bbf3ae8808
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173696350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4abacfd6b0151898b71ef6fb2fa022d83f03a08d84bc3b0f32ea8256e541ac`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:30:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92609e0ed6685afe32731ca591c5f09ce306c4dd26da3c34712b4d52545a5394`  
		Last Modified: Tue, 19 Mar 2019 08:40:47 GMT  
		Size: 126.0 MB (126047683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1.0-slim`

```console
$ docker pull mono@sha256:2b454975be4b2745f3cfabacdea005d769e0a5b47aa287d0a076e5c0d3e92127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.18.1.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:4cd6336bf30c9df10368fdaf149a874be3a637cea4fb6455712866ca0d69631b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83897904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff1f21fa66e2aceaa60dd3bd2bff598def1674ab279cd162e640a662cbd7f3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.0-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:bafadbdd3db5cbef56a2c78953ea932cd20616d39f34deae4e636bc5770d38ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45683832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1198f5372d55cc6d62f942d9e62c50b2d0130abc819bfd84e3bf65f7c55a9268`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:dd743e95a1049a6aa45cb0df5e998e9815d77afceb85327aee88a6d16843b4c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48822627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768bf879e4fcc723039b9df130eaafdbc353a2e711eb4886421c3f639a14b11e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.0-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6ee0addad004e911aa6935f98e1636d36f767f3212b51a5e18d04af3f57c7051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47648667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30c513b2c0fa85cc57f1681ae3dcd5ef8d9db6696133486be804a44845dd255`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1-slim`

```console
$ docker pull mono@sha256:2b454975be4b2745f3cfabacdea005d769e0a5b47aa287d0a076e5c0d3e92127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.18.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:4cd6336bf30c9df10368fdaf149a874be3a637cea4fb6455712866ca0d69631b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83897904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff1f21fa66e2aceaa60dd3bd2bff598def1674ab279cd162e640a662cbd7f3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:bafadbdd3db5cbef56a2c78953ea932cd20616d39f34deae4e636bc5770d38ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45683832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1198f5372d55cc6d62f942d9e62c50b2d0130abc819bfd84e3bf65f7c55a9268`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:dd743e95a1049a6aa45cb0df5e998e9815d77afceb85327aee88a6d16843b4c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48822627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768bf879e4fcc723039b9df130eaafdbc353a2e711eb4886421c3f639a14b11e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6ee0addad004e911aa6935f98e1636d36f767f3212b51a5e18d04af3f57c7051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47648667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30c513b2c0fa85cc57f1681ae3dcd5ef8d9db6696133486be804a44845dd255`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18-slim`

```console
$ docker pull mono@sha256:2b454975be4b2745f3cfabacdea005d769e0a5b47aa287d0a076e5c0d3e92127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5.18-slim` - linux; amd64

```console
$ docker pull mono@sha256:4cd6336bf30c9df10368fdaf149a874be3a637cea4fb6455712866ca0d69631b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83897904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff1f21fa66e2aceaa60dd3bd2bff598def1674ab279cd162e640a662cbd7f3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:bafadbdd3db5cbef56a2c78953ea932cd20616d39f34deae4e636bc5770d38ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45683832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1198f5372d55cc6d62f942d9e62c50b2d0130abc819bfd84e3bf65f7c55a9268`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:dd743e95a1049a6aa45cb0df5e998e9815d77afceb85327aee88a6d16843b4c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48822627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768bf879e4fcc723039b9df130eaafdbc353a2e711eb4886421c3f639a14b11e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6ee0addad004e911aa6935f98e1636d36f767f3212b51a5e18d04af3f57c7051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47648667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30c513b2c0fa85cc57f1681ae3dcd5ef8d9db6696133486be804a44845dd255`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:2b454975be4b2745f3cfabacdea005d769e0a5b47aa287d0a076e5c0d3e92127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:4cd6336bf30c9df10368fdaf149a874be3a637cea4fb6455712866ca0d69631b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83897904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff1f21fa66e2aceaa60dd3bd2bff598def1674ab279cd162e640a662cbd7f3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:bafadbdd3db5cbef56a2c78953ea932cd20616d39f34deae4e636bc5770d38ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45683832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1198f5372d55cc6d62f942d9e62c50b2d0130abc819bfd84e3bf65f7c55a9268`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:dd743e95a1049a6aa45cb0df5e998e9815d77afceb85327aee88a6d16843b4c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48822627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768bf879e4fcc723039b9df130eaafdbc353a2e711eb4886421c3f639a14b11e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6ee0addad004e911aa6935f98e1636d36f767f3212b51a5e18d04af3f57c7051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47648667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30c513b2c0fa85cc57f1681ae3dcd5ef8d9db6696133486be804a44845dd255`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:a91a4be5fab5db654c236671b968b7e3c3d8f9d357a9f2a82a002a66d34f3262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:285214808efa03b218625428315e18f8d9ccf9a6000c67e114c5047d7342a30a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224033247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74fc7446037706377b3dcb796f8e327444523e7dcf775d9b2356e44b63674269`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 00:32:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72d3f16747e52933622a7ffe64d422116f14391e7893514c25c0d36b023c189`  
		Last Modified: Tue, 19 Mar 2019 00:39:28 GMT  
		Size: 140.1 MB (140135343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v5

```console
$ docker pull mono@sha256:b7e6cd18f3178a6a7ccd40de59f6b5de0bf172a136ea815cde630cddab1c4190
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171273783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fd447782ede14feeca996165b24d7a6e16ea9b21ccd2876400bf014076b62`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:53:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21fd8351c4d9f2d74761d23b5db32fcc2d57c1fa8ea3ca33b4797b9c291da4d`  
		Last Modified: Tue, 19 Mar 2019 08:58:26 GMT  
		Size: 125.6 MB (125589951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:892bdf4f3763a869ff0d3eb9f7eaf00d98632e179a8de4ef343f56e1568e2a4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188208188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:145cb44b791af643a65c4f7c874b0a4a86c82532de7ef5a3572837ae980fd12c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:54:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa182585d233fbb7c93d9c0c8ea0d1a13461ddd355036a38b359c09f7cc44c2b`  
		Last Modified: Tue, 19 Mar 2019 09:06:57 GMT  
		Size: 139.4 MB (139385561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; ppc64le

```console
$ docker pull mono@sha256:6f7a8c226b33e04b64f84069a4f88342ef848704fc5668d780e1a9bbf3ae8808
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173696350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4abacfd6b0151898b71ef6fb2fa022d83f03a08d84bc3b0f32ea8256e541ac`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 08:30:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92609e0ed6685afe32731ca591c5f09ce306c4dd26da3c34712b4d52545a5394`  
		Last Modified: Tue, 19 Mar 2019 08:40:47 GMT  
		Size: 126.0 MB (126047683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:2b454975be4b2745f3cfabacdea005d769e0a5b47aa287d0a076e5c0d3e92127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:4cd6336bf30c9df10368fdaf149a874be3a637cea4fb6455712866ca0d69631b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83897904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff1f21fa66e2aceaa60dd3bd2bff598def1674ab279cd162e640a662cbd7f3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:bafadbdd3db5cbef56a2c78953ea932cd20616d39f34deae4e636bc5770d38ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45683832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1198f5372d55cc6d62f942d9e62c50b2d0130abc819bfd84e3bf65f7c55a9268`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:dd743e95a1049a6aa45cb0df5e998e9815d77afceb85327aee88a6d16843b4c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48822627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768bf879e4fcc723039b9df130eaafdbc353a2e711eb4886421c3f639a14b11e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6ee0addad004e911aa6935f98e1636d36f767f3212b51a5e18d04af3f57c7051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47648667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30c513b2c0fa85cc57f1681ae3dcd5ef8d9db6696133486be804a44845dd255`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

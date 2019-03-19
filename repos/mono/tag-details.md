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
$ docker pull mono@sha256:14e23f3993a1204620b621ed30cf646b7cc08c08c9ce5cd71366019205a9ef01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:ede7814a3c1e06474f33e9c18062060b694ff60c874ae151a4e06934b4608718
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223995332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1229bff40f23d49eea06436b60f55b200b030b57a82349e79d8290a25f2986b9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:42:00 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 05:42:15 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 05:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 05:54:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab64c66b580c24bc383b7368bf8c09ebfaabec5b28f330e11006c9f6fbd2d79`  
		Last Modified: Tue, 05 Mar 2019 06:00:22 GMT  
		Size: 244.4 KB (244447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d202d6f45584c525139f0711e2ce66fb5a6afe523fee62c97e086698a258fdf`  
		Last Modified: Tue, 05 Mar 2019 06:00:37 GMT  
		Size: 61.2 MB (61150410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee3c36de170c8e31357ee184faba70f1a485d6a5bbec8009d3b65c71db04d56`  
		Last Modified: Tue, 05 Mar 2019 06:02:01 GMT  
		Size: 140.1 MB (140104441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v5

```console
$ docker pull mono@sha256:4c258c198a02e421ac06dbf15cd6902491affa94cc8abf5373a1dc83d0a94df6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171248600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f82c016efccf34c1548a207ab8e475cb95c0ca86392ab41074633cfefa7074`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:47:28 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 10:47:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 10:48:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 10:54:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce2ef39506e214341c4f3ccf955806a4519cc92a3f4607c903a0d549b78954f`  
		Last Modified: Tue, 05 Mar 2019 11:06:54 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421b22cbb5492f394960c4c89bf3df41fda7624e1e9d57a90f91affa2da43ca1`  
		Last Modified: Tue, 05 Mar 2019 11:07:03 GMT  
		Size: 24.3 MB (24274149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697a31d7e80574067ce295ab4649821a946a3ba4100f4ec23d52703d0d0e860d`  
		Last Modified: Tue, 05 Mar 2019 11:09:01 GMT  
		Size: 125.6 MB (125569455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:296da7cc0b1c4b1ba313338c2a39fb78000773800974a15c108672134c2c0416
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167325244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdb1d98fc2ed9d46bfb18d2c163ad583283a56ad5cc00b8c3bd5b348afd7a58`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:16:48 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 14:17:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 14:17:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 14:24:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d2358c0a603c3177e9569f02842fd702febda71127ffdb54e095871de69bf6`  
		Last Modified: Tue, 05 Mar 2019 14:34:57 GMT  
		Size: 244.5 KB (244487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edd433dd60d381a63828caea63d93ee4463405d6d48ebec081aac2a95dec006`  
		Last Modified: Tue, 05 Mar 2019 14:35:05 GMT  
		Size: 23.6 MB (23566966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd395bf8d18a1de0967a1cc266779a8bea239e28f104b96dd0473a3efcb896`  
		Last Modified: Tue, 05 Mar 2019 14:37:03 GMT  
		Size: 124.2 MB (124231297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2523470d4978007402f86e80d912ae53149c31748aaba1c6404da32056d6da16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188159263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778c3bc57dc14f6063344ee96510bfb914c9e78c6d9847fa8ccafc84615b3c74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:07:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2b54baaf344cdb81cf7126b8ef2acd8d590b7724b62ac56960cae31cafb35`  
		Last Modified: Wed, 06 Feb 2019 22:30:59 GMT  
		Size: 139.3 MB (139341299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:97a753442dca023166ea5b85141611dc578460ba49e97fa9b295fdc77a5c2e01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233011810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8900a4fa958e671a93cd75761431f06a8cc2a41ca240a0d2a3cf4b20fe78f072`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:40:10 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 17:40:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 17:40:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 17:44:35 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c525ddd68f7ff6831882c1d8b5336c34c45fd98a0d1e35aab9ac49e11a027f`  
		Last Modified: Tue, 05 Mar 2019 17:46:57 GMT  
		Size: 244.4 KB (244434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe797d339495e7666cb54d15f81c838c0201f688224fb2cbb5818b7f087f323`  
		Last Modified: Tue, 05 Mar 2019 17:47:14 GMT  
		Size: 64.0 MB (63955799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a4b5185066d5c2f918449e71022c05694cc7fc6a445c907a42ca6d8aff8fb`  
		Last Modified: Tue, 05 Mar 2019 17:48:45 GMT  
		Size: 145.7 MB (145685897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; ppc64le

```console
$ docker pull mono@sha256:737d2260c42a2718a645d51de1ae647c3fcbd0bc365a1ecea912a71b51f30884
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173620114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8986d7066ecd69f44685a1c7719a98f36e602188c0d3bf35e284046ef33968`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:44:57 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 13:46:20 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 13:47:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 13:59:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8749af5b36cd7be437becee077f6f739b84dbe29a173e37f3f640518368d52b0`  
		Last Modified: Tue, 05 Mar 2019 14:07:08 GMT  
		Size: 244.5 KB (244534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03761f243aca144ed0d91e48d4c9dea221008558e8b8431316e1cfb25cea4ec`  
		Last Modified: Tue, 05 Mar 2019 14:07:14 GMT  
		Size: 24.6 MB (24636849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae9731eb452d5361d93afcd79faef80e1ca8e6b34b1715b42afa25924a3ffce`  
		Last Modified: Tue, 05 Mar 2019 14:08:22 GMT  
		Size: 126.0 MB (125987234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16`

```console
$ docker pull mono@sha256:4c2616d31bef8d989bbb362e1127fc8b73a44e4eb5850a23d7cefe1375c047f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16` - linux; amd64

```console
$ docker pull mono@sha256:7c582e9716aa22aed9e2ccbea80e2484f922f48647f6e96a331e845aa6deb537
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205201209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274b83cb64d7f659b659164026a28e5fd81c09678e700f2751ed1d6ceee84876`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:43:03 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 05 Mar 2019 05:43:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 05:43:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 06:00:01 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdb56f1af10bb49a285f11e05de1a1ee8d48cb3bda787efe9659182816794ba`  
		Last Modified: Tue, 05 Mar 2019 06:00:42 GMT  
		Size: 244.5 KB (244452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab70f022379f796402390d4d034c48bb046026795d96657c1607c4e7eb1e30b`  
		Last Modified: Tue, 05 Mar 2019 06:00:53 GMT  
		Size: 45.7 MB (45721073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e867c9277684c847bcf535ce2dfd63ec601948ca1529039b863197cd25e1a1`  
		Last Modified: Tue, 05 Mar 2019 06:02:36 GMT  
		Size: 136.7 MB (136739650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v5

```console
$ docker pull mono@sha256:53d49daf2be268d2118c8fa01b7dcc0fa580fd84cd633c8b0845aab8c2cc83a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184067278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1c74b5012ec224be8635ffe1a135c9f58fd2d628099eaf4e20815dd3d94760`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:48:32 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 05 Mar 2019 10:48:50 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 10:49:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 11:06:35 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53aa8d9762c2260637c89d88129f722e8415651246ed0644bfe590a5077d712`  
		Last Modified: Tue, 05 Mar 2019 11:07:12 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c84b2872084f7c8a3106db20186a79d17b8a21bc0cfe08ede08c631593b51`  
		Last Modified: Tue, 05 Mar 2019 11:07:25 GMT  
		Size: 40.3 MB (40277203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401f0404f115c2fa37ce8bd0402e9308b4acbea2655d9d4f3208515738037c8f`  
		Last Modified: Tue, 05 Mar 2019 11:09:52 GMT  
		Size: 122.4 MB (122385083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v7

```console
$ docker pull mono@sha256:c09cd659fe4b35eb692681947bfc7dd4cc7d1f2101f395b224396b6480f0a76f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178632264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fed31dc3c89d4b84f9d3b0400c3f802b35047655b71b12f48ad495cfbdb6ba0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:18:01 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 05 Mar 2019 14:18:16 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 14:18:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 14:34:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa4ae4e0e669b7847e6036a0676f7359120786617edf2d5e2b8c6c2461d54d5`  
		Last Modified: Tue, 05 Mar 2019 14:35:15 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8247b1f1f718fee36adfbccd8fe4b66d37e6a574cd015cd1a4b72086b5dbe92`  
		Last Modified: Tue, 05 Mar 2019 14:35:27 GMT  
		Size: 38.1 MB (38077427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb82b120ec348e346fc9c5d44f7ae14cc42371a78463cd266a4db8bed000ab2`  
		Last Modified: Tue, 05 Mar 2019 14:37:57 GMT  
		Size: 121.0 MB (121027860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:f42ad36101f3545254e2e41b9a993ddc082f6eb15986b153ec47ec3a7f52adb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197397500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a2bbdd94d04e44a8b2deaf9acaa1decd7972c5c05d48790215b7fce417eb85`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:55:32 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 21:56:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:58:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:28:22 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8222490bd951e6dffb04f55142adc0b4f2514bae81f9d73634df1479e3b4a`  
		Last Modified: Wed, 06 Feb 2019 22:29:16 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64199e916c8a93a0979d51a7876e7bd0a417f2d793abe798a607792cf95bf2f`  
		Last Modified: Wed, 06 Feb 2019 22:29:41 GMT  
		Size: 42.3 MB (42280568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a5979de6f605f5f7e7b257bece3c5ea65fed5a3407f3f9722144804ca75e01`  
		Last Modified: Wed, 06 Feb 2019 22:32:18 GMT  
		Size: 134.5 MB (134522332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; 386

```console
$ docker pull mono@sha256:93c5a29bd3761d5f7fc201f02c41ccefcc49bcd7de81ce1d5935f66d09319c8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (212984208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88747479cb779cf3a81c5eaf1f2e6437347966a9a613426ef199b4ff70523463`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:40:54 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 05 Mar 2019 17:41:04 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 17:41:30 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 17:46:34 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881401635c0f1673cc4a38917109aa0c4accdc574c12a49aa622796f8bad3924`  
		Last Modified: Tue, 05 Mar 2019 17:47:19 GMT  
		Size: 244.4 KB (244436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfc221d370af39bc3bed74d01961cca6d311e75d66273f0a2613db42b0dc0e5`  
		Last Modified: Tue, 05 Mar 2019 17:47:32 GMT  
		Size: 47.2 MB (47157284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05ee87dbab2ee43e242ccbe1578c8420c6ee9d5def8f8c649ac7570c96c2f2e`  
		Last Modified: Tue, 05 Mar 2019 17:49:26 GMT  
		Size: 142.5 MB (142456808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; ppc64le

```console
$ docker pull mono@sha256:5d1062895255c19f64ddf79f3ac6c9c26641621259836e8810056b9a5fe99ffb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170436154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117a7c20af7e2c97d18a71e5cb07935a52f305e0543643287e06442781a3530d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:48:09 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 05 Mar 2019 13:50:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 13:52:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 14:06:42 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b60cc53cbed6cbfd6eddc9aca94682c9765ce5845d4168377f9bfe7170531e`  
		Last Modified: Tue, 05 Mar 2019 14:07:36 GMT  
		Size: 244.7 KB (244698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fb7c57a1e8422cb6be0edd93c3d01bd7f3666894da2ec73bd9bbcb59a967ab`  
		Last Modified: Tue, 05 Mar 2019 14:07:43 GMT  
		Size: 24.7 MB (24657172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b7d2669af472c42918e83f2458d2dce4e00f6f975c666b1e9c7f879c2f39b6`  
		Last Modified: Tue, 05 Mar 2019 14:09:08 GMT  
		Size: 122.8 MB (122782787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.1`

**does not exist** (yet?)

## `mono:5.16.1.0`

**does not exist** (yet?)

## `mono:5.16.1.0-slim`

**does not exist** (yet?)

## `mono:5.16.1-slim`

**does not exist** (yet?)

## `mono:5.16-slim`

```console
$ docker pull mono@sha256:c5bd1998ec7031e690fead095907ec66baf4eff2c52a0651eb32c2b9368f769b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16-slim` - linux; amd64

```console
$ docker pull mono@sha256:af7c7a386f2d6fce032794079cea5b631e4c58ea19c8d19243cc9fda40b84748
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68461559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db15f3ca7f46256859fca6e37e09e80159c6ac7de4e24cf7a4035addb1e04376`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:43:03 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 05 Mar 2019 05:43:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 05:43:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdb56f1af10bb49a285f11e05de1a1ee8d48cb3bda787efe9659182816794ba`  
		Last Modified: Tue, 05 Mar 2019 06:00:42 GMT  
		Size: 244.5 KB (244452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab70f022379f796402390d4d034c48bb046026795d96657c1607c4e7eb1e30b`  
		Last Modified: Tue, 05 Mar 2019 06:00:53 GMT  
		Size: 45.7 MB (45721073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:470bab27979638fd6ab3c29792ff33163618d8a6cde88d5a8bad43efeb247c87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61682195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f11a149025d6d222c6747a33cf429920c797fa74dae74ec27d423ff4f09d3b8c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:48:32 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 05 Mar 2019 10:48:50 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 10:49:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53aa8d9762c2260637c89d88129f722e8415651246ed0644bfe590a5077d712`  
		Last Modified: Tue, 05 Mar 2019 11:07:12 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c84b2872084f7c8a3106db20186a79d17b8a21bc0cfe08ede08c631593b51`  
		Last Modified: Tue, 05 Mar 2019 11:07:25 GMT  
		Size: 40.3 MB (40277203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c9c8b85461ce34dcdb6938e4de5c896f50591e2780c221028b52bf25b6b9dbc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57604404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca911a58235354a6a7a20a7b54db4bd8f382240a87896723a0b8028f6ccc628`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:18:01 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 05 Mar 2019 14:18:16 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 14:18:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa4ae4e0e669b7847e6036a0676f7359120786617edf2d5e2b8c6c2461d54d5`  
		Last Modified: Tue, 05 Mar 2019 14:35:15 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8247b1f1f718fee36adfbccd8fe4b66d37e6a574cd015cd1a4b72086b5dbe92`  
		Last Modified: Tue, 05 Mar 2019 14:35:27 GMT  
		Size: 38.1 MB (38077427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:a75d117739888b57de5763c536053300392a1555abec6b10a35c0c64ed1e8183
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62875168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddef3e94b2e2fd29b95a66bfd4fafa8371d867cf5ea4daf05d7ff34acabaf221`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:55:32 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 21:56:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:58:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8222490bd951e6dffb04f55142adc0b4f2514bae81f9d73634df1479e3b4a`  
		Last Modified: Wed, 06 Feb 2019 22:29:16 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64199e916c8a93a0979d51a7876e7bd0a417f2d793abe798a607792cf95bf2f`  
		Last Modified: Wed, 06 Feb 2019 22:29:41 GMT  
		Size: 42.3 MB (42280568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; 386

```console
$ docker pull mono@sha256:7f483e82f5921375281fd97094eee071c1141e08f05853b4b63bf6f67d77147d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70527400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca3bc58d8f110734de0bae6fad5ae6e7c63d07cad403155bae685a3905a8b98`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:40:54 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 05 Mar 2019 17:41:04 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 17:41:30 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881401635c0f1673cc4a38917109aa0c4accdc574c12a49aa622796f8bad3924`  
		Last Modified: Tue, 05 Mar 2019 17:47:19 GMT  
		Size: 244.4 KB (244436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfc221d370af39bc3bed74d01961cca6d311e75d66273f0a2613db42b0dc0e5`  
		Last Modified: Tue, 05 Mar 2019 17:47:32 GMT  
		Size: 47.2 MB (47157284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:a660554bd48500ebac13eb366c531bdf95b92ab023235f779c1b65719da8142f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47653367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138244fb279334e910a2ef8549b3549a7b17d689423f2dfd189ae4bd46956af8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:48:09 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 05 Mar 2019 13:50:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 13:52:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b60cc53cbed6cbfd6eddc9aca94682c9765ce5845d4168377f9bfe7170531e`  
		Last Modified: Tue, 05 Mar 2019 14:07:36 GMT  
		Size: 244.7 KB (244698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fb7c57a1e8422cb6be0edd93c3d01bd7f3666894da2ec73bd9bbcb59a967ab`  
		Last Modified: Tue, 05 Mar 2019 14:07:43 GMT  
		Size: 24.7 MB (24657172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18`

```console
$ docker pull mono@sha256:14e23f3993a1204620b621ed30cf646b7cc08c08c9ce5cd71366019205a9ef01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18` - linux; amd64

```console
$ docker pull mono@sha256:ede7814a3c1e06474f33e9c18062060b694ff60c874ae151a4e06934b4608718
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223995332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1229bff40f23d49eea06436b60f55b200b030b57a82349e79d8290a25f2986b9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:42:00 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 05:42:15 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 05:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 05:54:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab64c66b580c24bc383b7368bf8c09ebfaabec5b28f330e11006c9f6fbd2d79`  
		Last Modified: Tue, 05 Mar 2019 06:00:22 GMT  
		Size: 244.4 KB (244447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d202d6f45584c525139f0711e2ce66fb5a6afe523fee62c97e086698a258fdf`  
		Last Modified: Tue, 05 Mar 2019 06:00:37 GMT  
		Size: 61.2 MB (61150410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee3c36de170c8e31357ee184faba70f1a485d6a5bbec8009d3b65c71db04d56`  
		Last Modified: Tue, 05 Mar 2019 06:02:01 GMT  
		Size: 140.1 MB (140104441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm variant v5

```console
$ docker pull mono@sha256:4c258c198a02e421ac06dbf15cd6902491affa94cc8abf5373a1dc83d0a94df6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171248600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f82c016efccf34c1548a207ab8e475cb95c0ca86392ab41074633cfefa7074`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:47:28 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 10:47:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 10:48:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 10:54:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce2ef39506e214341c4f3ccf955806a4519cc92a3f4607c903a0d549b78954f`  
		Last Modified: Tue, 05 Mar 2019 11:06:54 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421b22cbb5492f394960c4c89bf3df41fda7624e1e9d57a90f91affa2da43ca1`  
		Last Modified: Tue, 05 Mar 2019 11:07:03 GMT  
		Size: 24.3 MB (24274149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697a31d7e80574067ce295ab4649821a946a3ba4100f4ec23d52703d0d0e860d`  
		Last Modified: Tue, 05 Mar 2019 11:09:01 GMT  
		Size: 125.6 MB (125569455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm variant v7

```console
$ docker pull mono@sha256:296da7cc0b1c4b1ba313338c2a39fb78000773800974a15c108672134c2c0416
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167325244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdb1d98fc2ed9d46bfb18d2c163ad583283a56ad5cc00b8c3bd5b348afd7a58`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:16:48 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 14:17:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 14:17:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 14:24:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d2358c0a603c3177e9569f02842fd702febda71127ffdb54e095871de69bf6`  
		Last Modified: Tue, 05 Mar 2019 14:34:57 GMT  
		Size: 244.5 KB (244487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edd433dd60d381a63828caea63d93ee4463405d6d48ebec081aac2a95dec006`  
		Last Modified: Tue, 05 Mar 2019 14:35:05 GMT  
		Size: 23.6 MB (23566966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd395bf8d18a1de0967a1cc266779a8bea239e28f104b96dd0473a3efcb896`  
		Last Modified: Tue, 05 Mar 2019 14:37:03 GMT  
		Size: 124.2 MB (124231297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2523470d4978007402f86e80d912ae53149c31748aaba1c6404da32056d6da16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188159263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778c3bc57dc14f6063344ee96510bfb914c9e78c6d9847fa8ccafc84615b3c74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:07:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2b54baaf344cdb81cf7126b8ef2acd8d590b7724b62ac56960cae31cafb35`  
		Last Modified: Wed, 06 Feb 2019 22:30:59 GMT  
		Size: 139.3 MB (139341299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; 386

```console
$ docker pull mono@sha256:97a753442dca023166ea5b85141611dc578460ba49e97fa9b295fdc77a5c2e01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233011810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8900a4fa958e671a93cd75761431f06a8cc2a41ca240a0d2a3cf4b20fe78f072`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:40:10 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 17:40:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 17:40:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 17:44:35 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c525ddd68f7ff6831882c1d8b5336c34c45fd98a0d1e35aab9ac49e11a027f`  
		Last Modified: Tue, 05 Mar 2019 17:46:57 GMT  
		Size: 244.4 KB (244434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe797d339495e7666cb54d15f81c838c0201f688224fb2cbb5818b7f087f323`  
		Last Modified: Tue, 05 Mar 2019 17:47:14 GMT  
		Size: 64.0 MB (63955799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a4b5185066d5c2f918449e71022c05694cc7fc6a445c907a42ca6d8aff8fb`  
		Last Modified: Tue, 05 Mar 2019 17:48:45 GMT  
		Size: 145.7 MB (145685897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; ppc64le

```console
$ docker pull mono@sha256:737d2260c42a2718a645d51de1ae647c3fcbd0bc365a1ecea912a71b51f30884
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173620114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8986d7066ecd69f44685a1c7719a98f36e602188c0d3bf35e284046ef33968`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:44:57 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 13:46:20 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 13:47:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 13:59:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8749af5b36cd7be437becee077f6f739b84dbe29a173e37f3f640518368d52b0`  
		Last Modified: Tue, 05 Mar 2019 14:07:08 GMT  
		Size: 244.5 KB (244534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03761f243aca144ed0d91e48d4c9dea221008558e8b8431316e1cfb25cea4ec`  
		Last Modified: Tue, 05 Mar 2019 14:07:14 GMT  
		Size: 24.6 MB (24636849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae9731eb452d5361d93afcd79faef80e1ca8e6b34b1715b42afa25924a3ffce`  
		Last Modified: Tue, 05 Mar 2019 14:08:22 GMT  
		Size: 126.0 MB (125987234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1`

**does not exist** (yet?)

## `mono:5.18.1.0`

**does not exist** (yet?)

## `mono:5.18.1.0-slim`

**does not exist** (yet?)

## `mono:5.18.1-slim`

**does not exist** (yet?)

## `mono:5.18-slim`

```console
$ docker pull mono@sha256:f2ebf45bcdd880e7f1bccd860ee0549713bf84dc43278fd5d4a4cde2562297c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18-slim` - linux; amd64

```console
$ docker pull mono@sha256:1a67cfae017f11ae6cce13d361a6ba802dcdcab43508d22b88c0679cda315ccd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83890891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe117df2fa827431e01d2b516bc5d42bc99dd33e6cff8584827328c322a2571`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:42:00 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 05:42:15 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 05:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab64c66b580c24bc383b7368bf8c09ebfaabec5b28f330e11006c9f6fbd2d79`  
		Last Modified: Tue, 05 Mar 2019 06:00:22 GMT  
		Size: 244.4 KB (244447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d202d6f45584c525139f0711e2ce66fb5a6afe523fee62c97e086698a258fdf`  
		Last Modified: Tue, 05 Mar 2019 06:00:37 GMT  
		Size: 61.2 MB (61150410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:e04f39cba4fa5b9017694061f2b62437c6137a483f19865e118d7fcc833187f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45679145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0158f0d584a9103423bbafcf75b9e3b3576c481d56ed12cc2197af43031f71b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:47:28 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 10:47:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 10:48:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce2ef39506e214341c4f3ccf955806a4519cc92a3f4607c903a0d549b78954f`  
		Last Modified: Tue, 05 Mar 2019 11:06:54 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421b22cbb5492f394960c4c89bf3df41fda7624e1e9d57a90f91affa2da43ca1`  
		Last Modified: Tue, 05 Mar 2019 11:07:03 GMT  
		Size: 24.3 MB (24274149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:0ba48870647ea5c7320bc829662925372377825b3ddc9e06a0ac292212483d63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43093947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94d59ee42ec86f049c92ad644fd4d8eee855aa5cbaeb0cc74ea2b9c5793f3cb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:16:48 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 14:17:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 14:17:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d2358c0a603c3177e9569f02842fd702febda71127ffdb54e095871de69bf6`  
		Last Modified: Tue, 05 Mar 2019 14:34:57 GMT  
		Size: 244.5 KB (244487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edd433dd60d381a63828caea63d93ee4463405d6d48ebec081aac2a95dec006`  
		Last Modified: Tue, 05 Mar 2019 14:35:05 GMT  
		Size: 23.6 MB (23566966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b287b805ed86e312db717c9e6b15d05d8b8287ca014c54e2c3562efe4aa9887f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48817964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fecf3b2a6b04e48b286def0c57cc40a67a03e1d7e05899520be4141c0929f8d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; 386

```console
$ docker pull mono@sha256:85386d02a3ef88f42802d9253a776837046c618af7e43cd14abdde966017127d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87325913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f7e304cc9c621d9f3d29173c5a64ba7b9e2deec999293bff507b9d11755482`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:40:10 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 17:40:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 17:40:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c525ddd68f7ff6831882c1d8b5336c34c45fd98a0d1e35aab9ac49e11a027f`  
		Last Modified: Tue, 05 Mar 2019 17:46:57 GMT  
		Size: 244.4 KB (244434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe797d339495e7666cb54d15f81c838c0201f688224fb2cbb5818b7f087f323`  
		Last Modified: Tue, 05 Mar 2019 17:47:14 GMT  
		Size: 64.0 MB (63955799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:aa2f7347ea7b4f946b4fa6c5699168b1ca44c9eba046e3fc075f1620b7f2efff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47632880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a8e267ab9b9a542f41b3193694264e0f6ec94570cab156ba7a26e0edad91e8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:44:57 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 13:46:20 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 13:47:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8749af5b36cd7be437becee077f6f739b84dbe29a173e37f3f640518368d52b0`  
		Last Modified: Tue, 05 Mar 2019 14:07:08 GMT  
		Size: 244.5 KB (244534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03761f243aca144ed0d91e48d4c9dea221008558e8b8431316e1cfb25cea4ec`  
		Last Modified: Tue, 05 Mar 2019 14:07:14 GMT  
		Size: 24.6 MB (24636849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:f2ebf45bcdd880e7f1bccd860ee0549713bf84dc43278fd5d4a4cde2562297c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:1a67cfae017f11ae6cce13d361a6ba802dcdcab43508d22b88c0679cda315ccd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83890891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe117df2fa827431e01d2b516bc5d42bc99dd33e6cff8584827328c322a2571`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:42:00 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 05:42:15 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 05:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab64c66b580c24bc383b7368bf8c09ebfaabec5b28f330e11006c9f6fbd2d79`  
		Last Modified: Tue, 05 Mar 2019 06:00:22 GMT  
		Size: 244.4 KB (244447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d202d6f45584c525139f0711e2ce66fb5a6afe523fee62c97e086698a258fdf`  
		Last Modified: Tue, 05 Mar 2019 06:00:37 GMT  
		Size: 61.2 MB (61150410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:e04f39cba4fa5b9017694061f2b62437c6137a483f19865e118d7fcc833187f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45679145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0158f0d584a9103423bbafcf75b9e3b3576c481d56ed12cc2197af43031f71b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:47:28 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 10:47:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 10:48:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce2ef39506e214341c4f3ccf955806a4519cc92a3f4607c903a0d549b78954f`  
		Last Modified: Tue, 05 Mar 2019 11:06:54 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421b22cbb5492f394960c4c89bf3df41fda7624e1e9d57a90f91affa2da43ca1`  
		Last Modified: Tue, 05 Mar 2019 11:07:03 GMT  
		Size: 24.3 MB (24274149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:0ba48870647ea5c7320bc829662925372377825b3ddc9e06a0ac292212483d63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43093947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94d59ee42ec86f049c92ad644fd4d8eee855aa5cbaeb0cc74ea2b9c5793f3cb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:16:48 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 14:17:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 14:17:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d2358c0a603c3177e9569f02842fd702febda71127ffdb54e095871de69bf6`  
		Last Modified: Tue, 05 Mar 2019 14:34:57 GMT  
		Size: 244.5 KB (244487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edd433dd60d381a63828caea63d93ee4463405d6d48ebec081aac2a95dec006`  
		Last Modified: Tue, 05 Mar 2019 14:35:05 GMT  
		Size: 23.6 MB (23566966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b287b805ed86e312db717c9e6b15d05d8b8287ca014c54e2c3562efe4aa9887f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48817964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fecf3b2a6b04e48b286def0c57cc40a67a03e1d7e05899520be4141c0929f8d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:85386d02a3ef88f42802d9253a776837046c618af7e43cd14abdde966017127d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87325913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f7e304cc9c621d9f3d29173c5a64ba7b9e2deec999293bff507b9d11755482`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:40:10 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 17:40:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 17:40:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c525ddd68f7ff6831882c1d8b5336c34c45fd98a0d1e35aab9ac49e11a027f`  
		Last Modified: Tue, 05 Mar 2019 17:46:57 GMT  
		Size: 244.4 KB (244434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe797d339495e7666cb54d15f81c838c0201f688224fb2cbb5818b7f087f323`  
		Last Modified: Tue, 05 Mar 2019 17:47:14 GMT  
		Size: 64.0 MB (63955799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:aa2f7347ea7b4f946b4fa6c5699168b1ca44c9eba046e3fc075f1620b7f2efff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47632880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a8e267ab9b9a542f41b3193694264e0f6ec94570cab156ba7a26e0edad91e8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:44:57 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 13:46:20 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 13:47:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8749af5b36cd7be437becee077f6f739b84dbe29a173e37f3f640518368d52b0`  
		Last Modified: Tue, 05 Mar 2019 14:07:08 GMT  
		Size: 244.5 KB (244534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03761f243aca144ed0d91e48d4c9dea221008558e8b8431316e1cfb25cea4ec`  
		Last Modified: Tue, 05 Mar 2019 14:07:14 GMT  
		Size: 24.6 MB (24636849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:14e23f3993a1204620b621ed30cf646b7cc08c08c9ce5cd71366019205a9ef01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:ede7814a3c1e06474f33e9c18062060b694ff60c874ae151a4e06934b4608718
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223995332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1229bff40f23d49eea06436b60f55b200b030b57a82349e79d8290a25f2986b9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:42:00 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 05:42:15 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 05:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 05:54:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab64c66b580c24bc383b7368bf8c09ebfaabec5b28f330e11006c9f6fbd2d79`  
		Last Modified: Tue, 05 Mar 2019 06:00:22 GMT  
		Size: 244.4 KB (244447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d202d6f45584c525139f0711e2ce66fb5a6afe523fee62c97e086698a258fdf`  
		Last Modified: Tue, 05 Mar 2019 06:00:37 GMT  
		Size: 61.2 MB (61150410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee3c36de170c8e31357ee184faba70f1a485d6a5bbec8009d3b65c71db04d56`  
		Last Modified: Tue, 05 Mar 2019 06:02:01 GMT  
		Size: 140.1 MB (140104441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v5

```console
$ docker pull mono@sha256:4c258c198a02e421ac06dbf15cd6902491affa94cc8abf5373a1dc83d0a94df6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171248600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f82c016efccf34c1548a207ab8e475cb95c0ca86392ab41074633cfefa7074`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:47:28 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 10:47:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 10:48:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 10:54:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce2ef39506e214341c4f3ccf955806a4519cc92a3f4607c903a0d549b78954f`  
		Last Modified: Tue, 05 Mar 2019 11:06:54 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421b22cbb5492f394960c4c89bf3df41fda7624e1e9d57a90f91affa2da43ca1`  
		Last Modified: Tue, 05 Mar 2019 11:07:03 GMT  
		Size: 24.3 MB (24274149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697a31d7e80574067ce295ab4649821a946a3ba4100f4ec23d52703d0d0e860d`  
		Last Modified: Tue, 05 Mar 2019 11:09:01 GMT  
		Size: 125.6 MB (125569455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:296da7cc0b1c4b1ba313338c2a39fb78000773800974a15c108672134c2c0416
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167325244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdb1d98fc2ed9d46bfb18d2c163ad583283a56ad5cc00b8c3bd5b348afd7a58`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:16:48 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 14:17:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 14:17:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 14:24:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d2358c0a603c3177e9569f02842fd702febda71127ffdb54e095871de69bf6`  
		Last Modified: Tue, 05 Mar 2019 14:34:57 GMT  
		Size: 244.5 KB (244487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edd433dd60d381a63828caea63d93ee4463405d6d48ebec081aac2a95dec006`  
		Last Modified: Tue, 05 Mar 2019 14:35:05 GMT  
		Size: 23.6 MB (23566966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbd395bf8d18a1de0967a1cc266779a8bea239e28f104b96dd0473a3efcb896`  
		Last Modified: Tue, 05 Mar 2019 14:37:03 GMT  
		Size: 124.2 MB (124231297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2523470d4978007402f86e80d912ae53149c31748aaba1c6404da32056d6da16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188159263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778c3bc57dc14f6063344ee96510bfb914c9e78c6d9847fa8ccafc84615b3c74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:07:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2b54baaf344cdb81cf7126b8ef2acd8d590b7724b62ac56960cae31cafb35`  
		Last Modified: Wed, 06 Feb 2019 22:30:59 GMT  
		Size: 139.3 MB (139341299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:97a753442dca023166ea5b85141611dc578460ba49e97fa9b295fdc77a5c2e01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233011810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8900a4fa958e671a93cd75761431f06a8cc2a41ca240a0d2a3cf4b20fe78f072`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:40:10 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 17:40:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 17:40:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 17:44:35 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c525ddd68f7ff6831882c1d8b5336c34c45fd98a0d1e35aab9ac49e11a027f`  
		Last Modified: Tue, 05 Mar 2019 17:46:57 GMT  
		Size: 244.4 KB (244434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe797d339495e7666cb54d15f81c838c0201f688224fb2cbb5818b7f087f323`  
		Last Modified: Tue, 05 Mar 2019 17:47:14 GMT  
		Size: 64.0 MB (63955799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a4b5185066d5c2f918449e71022c05694cc7fc6a445c907a42ca6d8aff8fb`  
		Last Modified: Tue, 05 Mar 2019 17:48:45 GMT  
		Size: 145.7 MB (145685897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; ppc64le

```console
$ docker pull mono@sha256:737d2260c42a2718a645d51de1ae647c3fcbd0bc365a1ecea912a71b51f30884
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173620114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8986d7066ecd69f44685a1c7719a98f36e602188c0d3bf35e284046ef33968`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:44:57 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 13:46:20 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 13:47:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 05 Mar 2019 13:59:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8749af5b36cd7be437becee077f6f739b84dbe29a173e37f3f640518368d52b0`  
		Last Modified: Tue, 05 Mar 2019 14:07:08 GMT  
		Size: 244.5 KB (244534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03761f243aca144ed0d91e48d4c9dea221008558e8b8431316e1cfb25cea4ec`  
		Last Modified: Tue, 05 Mar 2019 14:07:14 GMT  
		Size: 24.6 MB (24636849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae9731eb452d5361d93afcd79faef80e1ca8e6b34b1715b42afa25924a3ffce`  
		Last Modified: Tue, 05 Mar 2019 14:08:22 GMT  
		Size: 126.0 MB (125987234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:f2ebf45bcdd880e7f1bccd860ee0549713bf84dc43278fd5d4a4cde2562297c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:1a67cfae017f11ae6cce13d361a6ba802dcdcab43508d22b88c0679cda315ccd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83890891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe117df2fa827431e01d2b516bc5d42bc99dd33e6cff8584827328c322a2571`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:42:00 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 05:42:15 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 05:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab64c66b580c24bc383b7368bf8c09ebfaabec5b28f330e11006c9f6fbd2d79`  
		Last Modified: Tue, 05 Mar 2019 06:00:22 GMT  
		Size: 244.4 KB (244447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d202d6f45584c525139f0711e2ce66fb5a6afe523fee62c97e086698a258fdf`  
		Last Modified: Tue, 05 Mar 2019 06:00:37 GMT  
		Size: 61.2 MB (61150410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:e04f39cba4fa5b9017694061f2b62437c6137a483f19865e118d7fcc833187f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45679145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0158f0d584a9103423bbafcf75b9e3b3576c481d56ed12cc2197af43031f71b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:47:28 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 10:47:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 10:48:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce2ef39506e214341c4f3ccf955806a4519cc92a3f4607c903a0d549b78954f`  
		Last Modified: Tue, 05 Mar 2019 11:06:54 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421b22cbb5492f394960c4c89bf3df41fda7624e1e9d57a90f91affa2da43ca1`  
		Last Modified: Tue, 05 Mar 2019 11:07:03 GMT  
		Size: 24.3 MB (24274149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:0ba48870647ea5c7320bc829662925372377825b3ddc9e06a0ac292212483d63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43093947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94d59ee42ec86f049c92ad644fd4d8eee855aa5cbaeb0cc74ea2b9c5793f3cb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:16:48 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 14:17:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 14:17:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d2358c0a603c3177e9569f02842fd702febda71127ffdb54e095871de69bf6`  
		Last Modified: Tue, 05 Mar 2019 14:34:57 GMT  
		Size: 244.5 KB (244487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edd433dd60d381a63828caea63d93ee4463405d6d48ebec081aac2a95dec006`  
		Last Modified: Tue, 05 Mar 2019 14:35:05 GMT  
		Size: 23.6 MB (23566966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b287b805ed86e312db717c9e6b15d05d8b8287ca014c54e2c3562efe4aa9887f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48817964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fecf3b2a6b04e48b286def0c57cc40a67a03e1d7e05899520be4141c0929f8d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:85386d02a3ef88f42802d9253a776837046c618af7e43cd14abdde966017127d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87325913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f7e304cc9c621d9f3d29173c5a64ba7b9e2deec999293bff507b9d11755482`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 17:40:10 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 17:40:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 17:40:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c525ddd68f7ff6831882c1d8b5336c34c45fd98a0d1e35aab9ac49e11a027f`  
		Last Modified: Tue, 05 Mar 2019 17:46:57 GMT  
		Size: 244.4 KB (244434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe797d339495e7666cb54d15f81c838c0201f688224fb2cbb5818b7f087f323`  
		Last Modified: Tue, 05 Mar 2019 17:47:14 GMT  
		Size: 64.0 MB (63955799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; ppc64le

```console
$ docker pull mono@sha256:aa2f7347ea7b4f946b4fa6c5699168b1ca44c9eba046e3fc075f1620b7f2efff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47632880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a8e267ab9b9a542f41b3193694264e0f6ec94570cab156ba7a26e0edad91e8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:44:57 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 05 Mar 2019 13:46:20 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 05 Mar 2019 13:47:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8749af5b36cd7be437becee077f6f739b84dbe29a173e37f3f640518368d52b0`  
		Last Modified: Tue, 05 Mar 2019 14:07:08 GMT  
		Size: 244.5 KB (244534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03761f243aca144ed0d91e48d4c9dea221008558e8b8431316e1cfb25cea4ec`  
		Last Modified: Tue, 05 Mar 2019 14:07:14 GMT  
		Size: 24.6 MB (24636849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

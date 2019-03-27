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
$ docker pull mono@sha256:b3a32027146e4ec3e14b82bc8f02623769460db9680ecd7059364137e6bf4cea
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
$ docker pull mono@sha256:037f0d26154c6dccd48ec59d676c9e6bea4c856419b4d918c1331b3b6bfb1dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224032972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964736a53b3037379ad7fcc6161db4911aa7ce6fdae511c037527f736ea9998a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:19:44 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 00:19:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:20:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 00:29:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed5a5d93d7ad4f01acb4d3b9f6185a32dcfc57d38b3b3e8cbee4b5b10e6449`  
		Last Modified: Wed, 27 Mar 2019 00:36:09 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc95c69b8dbfbf5cd3fec70ebecb69e312744865a42887855113682e7524cf`  
		Last Modified: Wed, 27 Mar 2019 00:36:23 GMT  
		Size: 61.2 MB (61157587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdba26ae6eb0b55d5156bbcc9729b83b5736a90e93534578f485a45cf5567a0`  
		Last Modified: Wed, 27 Mar 2019 00:37:15 GMT  
		Size: 140.1 MB (140134896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v5

```console
$ docker pull mono@sha256:12c342833a624af52a26eb326c173ef66817b66796833748f367b9062a65d21b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171273791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a863392beef4e96fb7f5cc2a3590947a2dd956a1a8182b5cadda6be4de4e4625`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:30:35 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 09:30:52 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:31:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 09:36:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b653da59d3f483bdd0d28b3984180b07523df6c57e2ab7365927e85c0b58df8`  
		Last Modified: Wed, 27 Mar 2019 09:39:20 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d78cbe65f5099ce318329069d8220e0a6bb39aec101d9b80cbefdc98ed1edb`  
		Last Modified: Wed, 27 Mar 2019 09:39:30 GMT  
		Size: 24.3 MB (24279187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8e2b927f158410b4860b64f2026919ef8e35232af0688bd4b49e11c4fb3ca8`  
		Last Modified: Wed, 27 Mar 2019 09:40:45 GMT  
		Size: 125.6 MB (125589467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:bd7e96655bfb8d061d1219ea793c00d0f203b65893818c246158785f7fc879ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167365885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02d01935f3b90049693826e28aa32f5985fe2a617dfd7af401b8b0d5c4c4617`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:58:26 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:58:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:59:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 12:05:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff65f933d3d5aaf794a8d9d3d529ef903cc64d8d7afef3ff40bcbecb20bf663`  
		Last Modified: Tue, 19 Mar 2019 12:08:36 GMT  
		Size: 244.5 KB (244498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae331745768e50b2856746e83c2bc8abbde638f205c5267c250125532d2bd55`  
		Last Modified: Tue, 19 Mar 2019 12:08:45 GMT  
		Size: 23.6 MB (23571106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96492b8017978f5fd5aa23207599b8a0917e02f2d5445c550237328a155004c`  
		Last Modified: Tue, 19 Mar 2019 12:09:58 GMT  
		Size: 124.3 MB (124267787 bytes)  
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

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:9a870e8fdd6f674b277cad67094fb14715532461fa9635c6b9fccea10bd625dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233078643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96f0de01a4cae1f7d04885dc93e84ef28e243be189a9794f512f37d1dafd26f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 11:08:51 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5de9d1e6da7ac7fa5d36c878f1881eb975fc776d1229ba9c2db8829c996c2`  
		Last Modified: Tue, 19 Mar 2019 11:12:24 GMT  
		Size: 145.7 MB (145734335 bytes)  
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
$ docker pull mono@sha256:dd55c348848381acc1c5a49866d6dfa0ccf8f67ed2d762cd64273e001cdda0bf
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
$ docker pull mono@sha256:702a6fd69bed81f06848221489ffd9df16259ab5a786f57fbe8d9b44cd63603a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205233592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca93e97104e29d0230baa8bc79b7a1bb447d58697bc91933ae39ad1c24eb3b7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:29 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 00:20:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 00:35:56 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c4558e29b0b0ae9b79aec91ea1a5960fd392942ad30e75e8b1c668859fed6d`  
		Last Modified: Wed, 27 Mar 2019 00:36:28 GMT  
		Size: 244.4 KB (244432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c387b6727814eae7b2ffad5608482b2c0a908750f9d97fe27ca035052d1eaee8`  
		Last Modified: Wed, 27 Mar 2019 00:36:40 GMT  
		Size: 45.7 MB (45721759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79f74a07a00b92e09c5bf5679d6d64f7bee58b9900dcb56152f8fbd69ec5b74`  
		Last Modified: Wed, 27 Mar 2019 00:37:52 GMT  
		Size: 136.8 MB (136771353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v5

```console
$ docker pull mono@sha256:0ba6ea37d97394a8aa2d2c9210b5b6481a86dfbe1e431635c1f9ab6889703d58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184092612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c645f13aa5fb32757173a77e4176da20520df4097f5fd8b8bc207adfb68cb7c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:32:04 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 09:32:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:33:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 09:38:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999fd5171dbab3eec1889123b8de5de1433b6334c226f0e5ca194b8bf9f1b11`  
		Last Modified: Wed, 27 Mar 2019 09:39:38 GMT  
		Size: 244.5 KB (244476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52101c7ddff180ceec9c6153f3133da1fa1c7bdab5becddf23cfa23256546965`  
		Last Modified: Wed, 27 Mar 2019 09:39:51 GMT  
		Size: 40.3 MB (40278003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f36b1e94cd9bb542fa205afd91eef2b1af926f03463d58f49829bf7c0814d9`  
		Last Modified: Wed, 27 Mar 2019 09:41:35 GMT  
		Size: 122.4 MB (122409470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v7

```console
$ docker pull mono@sha256:f21cf7cfe5f2d4744599aabc2f34b45c6fe38a0a4c0315cb1d5bc42cae844ece
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178645620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafeb181905b044c7fc949d8e6a0e86d3a72e3f6bb8aeb73d7b598ab7deeb068`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:59:30 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:59:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 12:00:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 12:08:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ad6e666c4687f40b2db3eeec4fc54bbd3c11598b8b889c418add0657ef576c`  
		Last Modified: Tue, 19 Mar 2019 12:08:55 GMT  
		Size: 244.5 KB (244507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b47c658832604782807cced3aa61aceea4388f6b9502d0c6a0b4b45e0e7055a`  
		Last Modified: Tue, 19 Mar 2019 12:09:08 GMT  
		Size: 38.1 MB (38078601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ab805a0e896c7c7d257ebe7ea8f6e355855b18e50329abef8e7f8cb7ea35b8`  
		Last Modified: Tue, 19 Mar 2019 12:10:53 GMT  
		Size: 121.0 MB (121040018 bytes)  
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

### `mono:5.16` - linux; 386

```console
$ docker pull mono@sha256:2ae4009fb418f592fdd9f5f65ec51c7a3ae25c714472dd9139439d61647c3512
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213003007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb5d1d3639376f541ef1afc829485c42dfdaf554e2f31f04ecdd8eb51ce3dd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:06:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:06:26 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 11:10:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b057525b6ba1f7cdeffc62416d12c7455e431ee4f8f1120b4ebffe0095bdd73d`  
		Last Modified: Tue, 19 Mar 2019 11:11:31 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393f6dd66c6b34b9852f5330a6f9373f4c803b879a255151c36442183aab4ffe`  
		Last Modified: Tue, 19 Mar 2019 11:11:43 GMT  
		Size: 47.2 MB (47159068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88da29619d6239ca1e3c484acacbd49d94fb2235df527333216d1084d7e4a09b`  
		Last Modified: Tue, 19 Mar 2019 11:13:08 GMT  
		Size: 142.5 MB (142473833 bytes)  
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
$ docker pull mono@sha256:dd55c348848381acc1c5a49866d6dfa0ccf8f67ed2d762cd64273e001cdda0bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.1` - linux; amd64

```console
$ docker pull mono@sha256:702a6fd69bed81f06848221489ffd9df16259ab5a786f57fbe8d9b44cd63603a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205233592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca93e97104e29d0230baa8bc79b7a1bb447d58697bc91933ae39ad1c24eb3b7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:29 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 00:20:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 00:35:56 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c4558e29b0b0ae9b79aec91ea1a5960fd392942ad30e75e8b1c668859fed6d`  
		Last Modified: Wed, 27 Mar 2019 00:36:28 GMT  
		Size: 244.4 KB (244432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c387b6727814eae7b2ffad5608482b2c0a908750f9d97fe27ca035052d1eaee8`  
		Last Modified: Wed, 27 Mar 2019 00:36:40 GMT  
		Size: 45.7 MB (45721759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79f74a07a00b92e09c5bf5679d6d64f7bee58b9900dcb56152f8fbd69ec5b74`  
		Last Modified: Wed, 27 Mar 2019 00:37:52 GMT  
		Size: 136.8 MB (136771353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1` - linux; arm variant v5

```console
$ docker pull mono@sha256:0ba6ea37d97394a8aa2d2c9210b5b6481a86dfbe1e431635c1f9ab6889703d58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184092612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c645f13aa5fb32757173a77e4176da20520df4097f5fd8b8bc207adfb68cb7c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:32:04 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 09:32:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:33:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 09:38:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999fd5171dbab3eec1889123b8de5de1433b6334c226f0e5ca194b8bf9f1b11`  
		Last Modified: Wed, 27 Mar 2019 09:39:38 GMT  
		Size: 244.5 KB (244476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52101c7ddff180ceec9c6153f3133da1fa1c7bdab5becddf23cfa23256546965`  
		Last Modified: Wed, 27 Mar 2019 09:39:51 GMT  
		Size: 40.3 MB (40278003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f36b1e94cd9bb542fa205afd91eef2b1af926f03463d58f49829bf7c0814d9`  
		Last Modified: Wed, 27 Mar 2019 09:41:35 GMT  
		Size: 122.4 MB (122409470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1` - linux; arm variant v7

```console
$ docker pull mono@sha256:f21cf7cfe5f2d4744599aabc2f34b45c6fe38a0a4c0315cb1d5bc42cae844ece
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178645620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafeb181905b044c7fc949d8e6a0e86d3a72e3f6bb8aeb73d7b598ab7deeb068`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:59:30 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:59:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 12:00:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 12:08:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ad6e666c4687f40b2db3eeec4fc54bbd3c11598b8b889c418add0657ef576c`  
		Last Modified: Tue, 19 Mar 2019 12:08:55 GMT  
		Size: 244.5 KB (244507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b47c658832604782807cced3aa61aceea4388f6b9502d0c6a0b4b45e0e7055a`  
		Last Modified: Tue, 19 Mar 2019 12:09:08 GMT  
		Size: 38.1 MB (38078601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ab805a0e896c7c7d257ebe7ea8f6e355855b18e50329abef8e7f8cb7ea35b8`  
		Last Modified: Tue, 19 Mar 2019 12:10:53 GMT  
		Size: 121.0 MB (121040018 bytes)  
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

### `mono:5.16.1` - linux; 386

```console
$ docker pull mono@sha256:2ae4009fb418f592fdd9f5f65ec51c7a3ae25c714472dd9139439d61647c3512
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213003007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb5d1d3639376f541ef1afc829485c42dfdaf554e2f31f04ecdd8eb51ce3dd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:06:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:06:26 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 11:10:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b057525b6ba1f7cdeffc62416d12c7455e431ee4f8f1120b4ebffe0095bdd73d`  
		Last Modified: Tue, 19 Mar 2019 11:11:31 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393f6dd66c6b34b9852f5330a6f9373f4c803b879a255151c36442183aab4ffe`  
		Last Modified: Tue, 19 Mar 2019 11:11:43 GMT  
		Size: 47.2 MB (47159068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88da29619d6239ca1e3c484acacbd49d94fb2235df527333216d1084d7e4a09b`  
		Last Modified: Tue, 19 Mar 2019 11:13:08 GMT  
		Size: 142.5 MB (142473833 bytes)  
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
$ docker pull mono@sha256:dd55c348848381acc1c5a49866d6dfa0ccf8f67ed2d762cd64273e001cdda0bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.1.0` - linux; amd64

```console
$ docker pull mono@sha256:702a6fd69bed81f06848221489ffd9df16259ab5a786f57fbe8d9b44cd63603a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205233592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca93e97104e29d0230baa8bc79b7a1bb447d58697bc91933ae39ad1c24eb3b7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:29 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 00:20:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 00:35:56 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c4558e29b0b0ae9b79aec91ea1a5960fd392942ad30e75e8b1c668859fed6d`  
		Last Modified: Wed, 27 Mar 2019 00:36:28 GMT  
		Size: 244.4 KB (244432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c387b6727814eae7b2ffad5608482b2c0a908750f9d97fe27ca035052d1eaee8`  
		Last Modified: Wed, 27 Mar 2019 00:36:40 GMT  
		Size: 45.7 MB (45721759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79f74a07a00b92e09c5bf5679d6d64f7bee58b9900dcb56152f8fbd69ec5b74`  
		Last Modified: Wed, 27 Mar 2019 00:37:52 GMT  
		Size: 136.8 MB (136771353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1.0` - linux; arm variant v5

```console
$ docker pull mono@sha256:0ba6ea37d97394a8aa2d2c9210b5b6481a86dfbe1e431635c1f9ab6889703d58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184092612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c645f13aa5fb32757173a77e4176da20520df4097f5fd8b8bc207adfb68cb7c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:32:04 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 09:32:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:33:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 09:38:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999fd5171dbab3eec1889123b8de5de1433b6334c226f0e5ca194b8bf9f1b11`  
		Last Modified: Wed, 27 Mar 2019 09:39:38 GMT  
		Size: 244.5 KB (244476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52101c7ddff180ceec9c6153f3133da1fa1c7bdab5becddf23cfa23256546965`  
		Last Modified: Wed, 27 Mar 2019 09:39:51 GMT  
		Size: 40.3 MB (40278003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f36b1e94cd9bb542fa205afd91eef2b1af926f03463d58f49829bf7c0814d9`  
		Last Modified: Wed, 27 Mar 2019 09:41:35 GMT  
		Size: 122.4 MB (122409470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:f21cf7cfe5f2d4744599aabc2f34b45c6fe38a0a4c0315cb1d5bc42cae844ece
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178645620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafeb181905b044c7fc949d8e6a0e86d3a72e3f6bb8aeb73d7b598ab7deeb068`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:59:30 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:59:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 12:00:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 12:08:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ad6e666c4687f40b2db3eeec4fc54bbd3c11598b8b889c418add0657ef576c`  
		Last Modified: Tue, 19 Mar 2019 12:08:55 GMT  
		Size: 244.5 KB (244507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b47c658832604782807cced3aa61aceea4388f6b9502d0c6a0b4b45e0e7055a`  
		Last Modified: Tue, 19 Mar 2019 12:09:08 GMT  
		Size: 38.1 MB (38078601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ab805a0e896c7c7d257ebe7ea8f6e355855b18e50329abef8e7f8cb7ea35b8`  
		Last Modified: Tue, 19 Mar 2019 12:10:53 GMT  
		Size: 121.0 MB (121040018 bytes)  
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

### `mono:5.16.1.0` - linux; 386

```console
$ docker pull mono@sha256:2ae4009fb418f592fdd9f5f65ec51c7a3ae25c714472dd9139439d61647c3512
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213003007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcb5d1d3639376f541ef1afc829485c42dfdaf554e2f31f04ecdd8eb51ce3dd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:06:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:06:26 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 11:10:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b057525b6ba1f7cdeffc62416d12c7455e431ee4f8f1120b4ebffe0095bdd73d`  
		Last Modified: Tue, 19 Mar 2019 11:11:31 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393f6dd66c6b34b9852f5330a6f9373f4c803b879a255151c36442183aab4ffe`  
		Last Modified: Tue, 19 Mar 2019 11:11:43 GMT  
		Size: 47.2 MB (47159068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88da29619d6239ca1e3c484acacbd49d94fb2235df527333216d1084d7e4a09b`  
		Last Modified: Tue, 19 Mar 2019 11:13:08 GMT  
		Size: 142.5 MB (142473833 bytes)  
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
$ docker pull mono@sha256:f22b5e5abac4bc170bb14015e90d828996d65370b53a65182c9001a3303539c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.1.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:5b832d6f172e38549bcbf34ba4fbc8169c7f2ee324b2c9cf595e4bdaa1b8084f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68462239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654d34f1ee287eee2161d100c64c36c5631bc35b62ca835a5189fd23be56ab80`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:29 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 00:20:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c4558e29b0b0ae9b79aec91ea1a5960fd392942ad30e75e8b1c668859fed6d`  
		Last Modified: Wed, 27 Mar 2019 00:36:28 GMT  
		Size: 244.4 KB (244432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c387b6727814eae7b2ffad5608482b2c0a908750f9d97fe27ca035052d1eaee8`  
		Last Modified: Wed, 27 Mar 2019 00:36:40 GMT  
		Size: 45.7 MB (45721759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1.0-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:f3303de6ee0f2cd11d6d14829ba9c461d7c5f26673098b9dfc2d4db390ae9653
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61683142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6183026b501c507f9f9452e723ea2d66a12651f9ff48323f0843cb6323a4aab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:32:04 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 09:32:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:33:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999fd5171dbab3eec1889123b8de5de1433b6334c226f0e5ca194b8bf9f1b11`  
		Last Modified: Wed, 27 Mar 2019 09:39:38 GMT  
		Size: 244.5 KB (244476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52101c7ddff180ceec9c6153f3133da1fa1c7bdab5becddf23cfa23256546965`  
		Last Modified: Wed, 27 Mar 2019 09:39:51 GMT  
		Size: 40.3 MB (40278003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:90655428e678a3a073ebd625bdc6f81984b5a808364952b64cfbca97995d2401
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57605602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b15d1ebf4b8508887fbbec558fd6a883df66d0177ce19a154d00d4d9a7b41fb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:59:30 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:59:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 12:00:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ad6e666c4687f40b2db3eeec4fc54bbd3c11598b8b889c418add0657ef576c`  
		Last Modified: Tue, 19 Mar 2019 12:08:55 GMT  
		Size: 244.5 KB (244507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b47c658832604782807cced3aa61aceea4388f6b9502d0c6a0b4b45e0e7055a`  
		Last Modified: Tue, 19 Mar 2019 12:09:08 GMT  
		Size: 38.1 MB (38078601 bytes)  
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

### `mono:5.16.1.0-slim` - linux; 386

```console
$ docker pull mono@sha256:80317ee85404929ba999c0240a2a5448e85222c9f12e9599d523b910ace772f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70529174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac50f73ef66f71c46094a313fb1106885e36f782c3608246db69077b2ae125b0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:06:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:06:26 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b057525b6ba1f7cdeffc62416d12c7455e431ee4f8f1120b4ebffe0095bdd73d`  
		Last Modified: Tue, 19 Mar 2019 11:11:31 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393f6dd66c6b34b9852f5330a6f9373f4c803b879a255151c36442183aab4ffe`  
		Last Modified: Tue, 19 Mar 2019 11:11:43 GMT  
		Size: 47.2 MB (47159068 bytes)  
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
$ docker pull mono@sha256:f22b5e5abac4bc170bb14015e90d828996d65370b53a65182c9001a3303539c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:5b832d6f172e38549bcbf34ba4fbc8169c7f2ee324b2c9cf595e4bdaa1b8084f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68462239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654d34f1ee287eee2161d100c64c36c5631bc35b62ca835a5189fd23be56ab80`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:29 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 00:20:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c4558e29b0b0ae9b79aec91ea1a5960fd392942ad30e75e8b1c668859fed6d`  
		Last Modified: Wed, 27 Mar 2019 00:36:28 GMT  
		Size: 244.4 KB (244432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c387b6727814eae7b2ffad5608482b2c0a908750f9d97fe27ca035052d1eaee8`  
		Last Modified: Wed, 27 Mar 2019 00:36:40 GMT  
		Size: 45.7 MB (45721759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:f3303de6ee0f2cd11d6d14829ba9c461d7c5f26673098b9dfc2d4db390ae9653
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61683142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6183026b501c507f9f9452e723ea2d66a12651f9ff48323f0843cb6323a4aab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:32:04 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 09:32:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:33:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999fd5171dbab3eec1889123b8de5de1433b6334c226f0e5ca194b8bf9f1b11`  
		Last Modified: Wed, 27 Mar 2019 09:39:38 GMT  
		Size: 244.5 KB (244476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52101c7ddff180ceec9c6153f3133da1fa1c7bdab5becddf23cfa23256546965`  
		Last Modified: Wed, 27 Mar 2019 09:39:51 GMT  
		Size: 40.3 MB (40278003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.1-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:90655428e678a3a073ebd625bdc6f81984b5a808364952b64cfbca97995d2401
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57605602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b15d1ebf4b8508887fbbec558fd6a883df66d0177ce19a154d00d4d9a7b41fb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:59:30 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:59:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 12:00:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ad6e666c4687f40b2db3eeec4fc54bbd3c11598b8b889c418add0657ef576c`  
		Last Modified: Tue, 19 Mar 2019 12:08:55 GMT  
		Size: 244.5 KB (244507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b47c658832604782807cced3aa61aceea4388f6b9502d0c6a0b4b45e0e7055a`  
		Last Modified: Tue, 19 Mar 2019 12:09:08 GMT  
		Size: 38.1 MB (38078601 bytes)  
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

### `mono:5.16.1-slim` - linux; 386

```console
$ docker pull mono@sha256:80317ee85404929ba999c0240a2a5448e85222c9f12e9599d523b910ace772f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70529174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac50f73ef66f71c46094a313fb1106885e36f782c3608246db69077b2ae125b0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:06:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:06:26 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b057525b6ba1f7cdeffc62416d12c7455e431ee4f8f1120b4ebffe0095bdd73d`  
		Last Modified: Tue, 19 Mar 2019 11:11:31 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393f6dd66c6b34b9852f5330a6f9373f4c803b879a255151c36442183aab4ffe`  
		Last Modified: Tue, 19 Mar 2019 11:11:43 GMT  
		Size: 47.2 MB (47159068 bytes)  
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
$ docker pull mono@sha256:f22b5e5abac4bc170bb14015e90d828996d65370b53a65182c9001a3303539c3
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
$ docker pull mono@sha256:5b832d6f172e38549bcbf34ba4fbc8169c7f2ee324b2c9cf595e4bdaa1b8084f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68462239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654d34f1ee287eee2161d100c64c36c5631bc35b62ca835a5189fd23be56ab80`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:29 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 00:20:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c4558e29b0b0ae9b79aec91ea1a5960fd392942ad30e75e8b1c668859fed6d`  
		Last Modified: Wed, 27 Mar 2019 00:36:28 GMT  
		Size: 244.4 KB (244432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c387b6727814eae7b2ffad5608482b2c0a908750f9d97fe27ca035052d1eaee8`  
		Last Modified: Wed, 27 Mar 2019 00:36:40 GMT  
		Size: 45.7 MB (45721759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:f3303de6ee0f2cd11d6d14829ba9c461d7c5f26673098b9dfc2d4db390ae9653
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61683142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6183026b501c507f9f9452e723ea2d66a12651f9ff48323f0843cb6323a4aab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:32:04 GMT
ENV MONO_VERSION=5.16.1.0
# Wed, 27 Mar 2019 09:32:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:33:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999fd5171dbab3eec1889123b8de5de1433b6334c226f0e5ca194b8bf9f1b11`  
		Last Modified: Wed, 27 Mar 2019 09:39:38 GMT  
		Size: 244.5 KB (244476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52101c7ddff180ceec9c6153f3133da1fa1c7bdab5becddf23cfa23256546965`  
		Last Modified: Wed, 27 Mar 2019 09:39:51 GMT  
		Size: 40.3 MB (40278003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:90655428e678a3a073ebd625bdc6f81984b5a808364952b64cfbca97995d2401
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57605602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b15d1ebf4b8508887fbbec558fd6a883df66d0177ce19a154d00d4d9a7b41fb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:59:30 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:59:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 12:00:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ad6e666c4687f40b2db3eeec4fc54bbd3c11598b8b889c418add0657ef576c`  
		Last Modified: Tue, 19 Mar 2019 12:08:55 GMT  
		Size: 244.5 KB (244507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b47c658832604782807cced3aa61aceea4388f6b9502d0c6a0b4b45e0e7055a`  
		Last Modified: Tue, 19 Mar 2019 12:09:08 GMT  
		Size: 38.1 MB (38078601 bytes)  
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

### `mono:5.16-slim` - linux; 386

```console
$ docker pull mono@sha256:80317ee85404929ba999c0240a2a5448e85222c9f12e9599d523b910ace772f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70529174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac50f73ef66f71c46094a313fb1106885e36f782c3608246db69077b2ae125b0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:06:17 GMT
ENV MONO_VERSION=5.16.1.0
# Tue, 19 Mar 2019 11:06:26 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian vs-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b057525b6ba1f7cdeffc62416d12c7455e431ee4f8f1120b4ebffe0095bdd73d`  
		Last Modified: Tue, 19 Mar 2019 11:11:31 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393f6dd66c6b34b9852f5330a6f9373f4c803b879a255151c36442183aab4ffe`  
		Last Modified: Tue, 19 Mar 2019 11:11:43 GMT  
		Size: 47.2 MB (47159068 bytes)  
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
$ docker pull mono@sha256:b3a32027146e4ec3e14b82bc8f02623769460db9680ecd7059364137e6bf4cea
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
$ docker pull mono@sha256:037f0d26154c6dccd48ec59d676c9e6bea4c856419b4d918c1331b3b6bfb1dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224032972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964736a53b3037379ad7fcc6161db4911aa7ce6fdae511c037527f736ea9998a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:19:44 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 00:19:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:20:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 00:29:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed5a5d93d7ad4f01acb4d3b9f6185a32dcfc57d38b3b3e8cbee4b5b10e6449`  
		Last Modified: Wed, 27 Mar 2019 00:36:09 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc95c69b8dbfbf5cd3fec70ebecb69e312744865a42887855113682e7524cf`  
		Last Modified: Wed, 27 Mar 2019 00:36:23 GMT  
		Size: 61.2 MB (61157587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdba26ae6eb0b55d5156bbcc9729b83b5736a90e93534578f485a45cf5567a0`  
		Last Modified: Wed, 27 Mar 2019 00:37:15 GMT  
		Size: 140.1 MB (140134896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm variant v5

```console
$ docker pull mono@sha256:12c342833a624af52a26eb326c173ef66817b66796833748f367b9062a65d21b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171273791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a863392beef4e96fb7f5cc2a3590947a2dd956a1a8182b5cadda6be4de4e4625`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:30:35 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 09:30:52 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:31:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 09:36:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b653da59d3f483bdd0d28b3984180b07523df6c57e2ab7365927e85c0b58df8`  
		Last Modified: Wed, 27 Mar 2019 09:39:20 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d78cbe65f5099ce318329069d8220e0a6bb39aec101d9b80cbefdc98ed1edb`  
		Last Modified: Wed, 27 Mar 2019 09:39:30 GMT  
		Size: 24.3 MB (24279187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8e2b927f158410b4860b64f2026919ef8e35232af0688bd4b49e11c4fb3ca8`  
		Last Modified: Wed, 27 Mar 2019 09:40:45 GMT  
		Size: 125.6 MB (125589467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm variant v7

```console
$ docker pull mono@sha256:bd7e96655bfb8d061d1219ea793c00d0f203b65893818c246158785f7fc879ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167365885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02d01935f3b90049693826e28aa32f5985fe2a617dfd7af401b8b0d5c4c4617`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:58:26 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:58:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:59:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 12:05:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff65f933d3d5aaf794a8d9d3d529ef903cc64d8d7afef3ff40bcbecb20bf663`  
		Last Modified: Tue, 19 Mar 2019 12:08:36 GMT  
		Size: 244.5 KB (244498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae331745768e50b2856746e83c2bc8abbde638f205c5267c250125532d2bd55`  
		Last Modified: Tue, 19 Mar 2019 12:08:45 GMT  
		Size: 23.6 MB (23571106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96492b8017978f5fd5aa23207599b8a0917e02f2d5445c550237328a155004c`  
		Last Modified: Tue, 19 Mar 2019 12:09:58 GMT  
		Size: 124.3 MB (124267787 bytes)  
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

### `mono:5.18` - linux; 386

```console
$ docker pull mono@sha256:9a870e8fdd6f674b277cad67094fb14715532461fa9635c6b9fccea10bd625dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233078643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96f0de01a4cae1f7d04885dc93e84ef28e243be189a9794f512f37d1dafd26f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 11:08:51 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5de9d1e6da7ac7fa5d36c878f1881eb975fc776d1229ba9c2db8829c996c2`  
		Last Modified: Tue, 19 Mar 2019 11:12:24 GMT  
		Size: 145.7 MB (145734335 bytes)  
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
$ docker pull mono@sha256:b3a32027146e4ec3e14b82bc8f02623769460db9680ecd7059364137e6bf4cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.1` - linux; amd64

```console
$ docker pull mono@sha256:037f0d26154c6dccd48ec59d676c9e6bea4c856419b4d918c1331b3b6bfb1dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224032972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964736a53b3037379ad7fcc6161db4911aa7ce6fdae511c037527f736ea9998a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:19:44 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 00:19:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:20:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 00:29:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed5a5d93d7ad4f01acb4d3b9f6185a32dcfc57d38b3b3e8cbee4b5b10e6449`  
		Last Modified: Wed, 27 Mar 2019 00:36:09 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc95c69b8dbfbf5cd3fec70ebecb69e312744865a42887855113682e7524cf`  
		Last Modified: Wed, 27 Mar 2019 00:36:23 GMT  
		Size: 61.2 MB (61157587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdba26ae6eb0b55d5156bbcc9729b83b5736a90e93534578f485a45cf5567a0`  
		Last Modified: Wed, 27 Mar 2019 00:37:15 GMT  
		Size: 140.1 MB (140134896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; arm variant v5

```console
$ docker pull mono@sha256:12c342833a624af52a26eb326c173ef66817b66796833748f367b9062a65d21b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171273791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a863392beef4e96fb7f5cc2a3590947a2dd956a1a8182b5cadda6be4de4e4625`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:30:35 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 09:30:52 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:31:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 09:36:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b653da59d3f483bdd0d28b3984180b07523df6c57e2ab7365927e85c0b58df8`  
		Last Modified: Wed, 27 Mar 2019 09:39:20 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d78cbe65f5099ce318329069d8220e0a6bb39aec101d9b80cbefdc98ed1edb`  
		Last Modified: Wed, 27 Mar 2019 09:39:30 GMT  
		Size: 24.3 MB (24279187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8e2b927f158410b4860b64f2026919ef8e35232af0688bd4b49e11c4fb3ca8`  
		Last Modified: Wed, 27 Mar 2019 09:40:45 GMT  
		Size: 125.6 MB (125589467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; arm variant v7

```console
$ docker pull mono@sha256:bd7e96655bfb8d061d1219ea793c00d0f203b65893818c246158785f7fc879ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167365885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02d01935f3b90049693826e28aa32f5985fe2a617dfd7af401b8b0d5c4c4617`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:58:26 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:58:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:59:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 12:05:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff65f933d3d5aaf794a8d9d3d529ef903cc64d8d7afef3ff40bcbecb20bf663`  
		Last Modified: Tue, 19 Mar 2019 12:08:36 GMT  
		Size: 244.5 KB (244498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae331745768e50b2856746e83c2bc8abbde638f205c5267c250125532d2bd55`  
		Last Modified: Tue, 19 Mar 2019 12:08:45 GMT  
		Size: 23.6 MB (23571106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96492b8017978f5fd5aa23207599b8a0917e02f2d5445c550237328a155004c`  
		Last Modified: Tue, 19 Mar 2019 12:09:58 GMT  
		Size: 124.3 MB (124267787 bytes)  
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

### `mono:5.18.1` - linux; 386

```console
$ docker pull mono@sha256:9a870e8fdd6f674b277cad67094fb14715532461fa9635c6b9fccea10bd625dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233078643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96f0de01a4cae1f7d04885dc93e84ef28e243be189a9794f512f37d1dafd26f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 11:08:51 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5de9d1e6da7ac7fa5d36c878f1881eb975fc776d1229ba9c2db8829c996c2`  
		Last Modified: Tue, 19 Mar 2019 11:12:24 GMT  
		Size: 145.7 MB (145734335 bytes)  
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
$ docker pull mono@sha256:b3a32027146e4ec3e14b82bc8f02623769460db9680ecd7059364137e6bf4cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.1.0` - linux; amd64

```console
$ docker pull mono@sha256:037f0d26154c6dccd48ec59d676c9e6bea4c856419b4d918c1331b3b6bfb1dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224032972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964736a53b3037379ad7fcc6161db4911aa7ce6fdae511c037527f736ea9998a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:19:44 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 00:19:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:20:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 00:29:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed5a5d93d7ad4f01acb4d3b9f6185a32dcfc57d38b3b3e8cbee4b5b10e6449`  
		Last Modified: Wed, 27 Mar 2019 00:36:09 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc95c69b8dbfbf5cd3fec70ebecb69e312744865a42887855113682e7524cf`  
		Last Modified: Wed, 27 Mar 2019 00:36:23 GMT  
		Size: 61.2 MB (61157587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdba26ae6eb0b55d5156bbcc9729b83b5736a90e93534578f485a45cf5567a0`  
		Last Modified: Wed, 27 Mar 2019 00:37:15 GMT  
		Size: 140.1 MB (140134896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.0` - linux; arm variant v5

```console
$ docker pull mono@sha256:12c342833a624af52a26eb326c173ef66817b66796833748f367b9062a65d21b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171273791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a863392beef4e96fb7f5cc2a3590947a2dd956a1a8182b5cadda6be4de4e4625`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:30:35 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 09:30:52 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:31:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 09:36:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b653da59d3f483bdd0d28b3984180b07523df6c57e2ab7365927e85c0b58df8`  
		Last Modified: Wed, 27 Mar 2019 09:39:20 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d78cbe65f5099ce318329069d8220e0a6bb39aec101d9b80cbefdc98ed1edb`  
		Last Modified: Wed, 27 Mar 2019 09:39:30 GMT  
		Size: 24.3 MB (24279187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8e2b927f158410b4860b64f2026919ef8e35232af0688bd4b49e11c4fb3ca8`  
		Last Modified: Wed, 27 Mar 2019 09:40:45 GMT  
		Size: 125.6 MB (125589467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:bd7e96655bfb8d061d1219ea793c00d0f203b65893818c246158785f7fc879ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167365885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02d01935f3b90049693826e28aa32f5985fe2a617dfd7af401b8b0d5c4c4617`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:58:26 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:58:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:59:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 12:05:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff65f933d3d5aaf794a8d9d3d529ef903cc64d8d7afef3ff40bcbecb20bf663`  
		Last Modified: Tue, 19 Mar 2019 12:08:36 GMT  
		Size: 244.5 KB (244498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae331745768e50b2856746e83c2bc8abbde638f205c5267c250125532d2bd55`  
		Last Modified: Tue, 19 Mar 2019 12:08:45 GMT  
		Size: 23.6 MB (23571106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96492b8017978f5fd5aa23207599b8a0917e02f2d5445c550237328a155004c`  
		Last Modified: Tue, 19 Mar 2019 12:09:58 GMT  
		Size: 124.3 MB (124267787 bytes)  
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

### `mono:5.18.1.0` - linux; 386

```console
$ docker pull mono@sha256:9a870e8fdd6f674b277cad67094fb14715532461fa9635c6b9fccea10bd625dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233078643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96f0de01a4cae1f7d04885dc93e84ef28e243be189a9794f512f37d1dafd26f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 11:08:51 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5de9d1e6da7ac7fa5d36c878f1881eb975fc776d1229ba9c2db8829c996c2`  
		Last Modified: Tue, 19 Mar 2019 11:12:24 GMT  
		Size: 145.7 MB (145734335 bytes)  
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
$ docker pull mono@sha256:761bd28fb1e35f169b0cff1a151f9018f1142412ca961b3a33bc948252e33c08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.1.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:ff1f4fc9cd200961cda0349e03aa234d2a529fcce3048f8ab86fd85d6fa52e2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83898076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec324b3e46bbb73644d76ddb3c03f5d5c2ef09bfbf2ffabda8551215460159e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:19:44 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 00:19:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:20:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed5a5d93d7ad4f01acb4d3b9f6185a32dcfc57d38b3b3e8cbee4b5b10e6449`  
		Last Modified: Wed, 27 Mar 2019 00:36:09 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc95c69b8dbfbf5cd3fec70ebecb69e312744865a42887855113682e7524cf`  
		Last Modified: Wed, 27 Mar 2019 00:36:23 GMT  
		Size: 61.2 MB (61157587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.0-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:52e255726c923211fc000e4f2250a80dc32ae301cbbd033bfd918e722c766097
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45684324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e83c041ab196cc5678e074a0580773cc0ee8c648b9022d7386259c25aab535`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:30:35 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 09:30:52 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:31:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b653da59d3f483bdd0d28b3984180b07523df6c57e2ab7365927e85c0b58df8`  
		Last Modified: Wed, 27 Mar 2019 09:39:20 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d78cbe65f5099ce318329069d8220e0a6bb39aec101d9b80cbefdc98ed1edb`  
		Last Modified: Wed, 27 Mar 2019 09:39:30 GMT  
		Size: 24.3 MB (24279187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:053620c6318139d6114573a2f52f087d77df6821404d830017f7c95f108eecbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43098098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58646381b18aa3696bf3aef5dddc741b13b6ffd41757291748d4d9cbd6dc3f1b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:58:26 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:58:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:59:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff65f933d3d5aaf794a8d9d3d529ef903cc64d8d7afef3ff40bcbecb20bf663`  
		Last Modified: Tue, 19 Mar 2019 12:08:36 GMT  
		Size: 244.5 KB (244498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae331745768e50b2856746e83c2bc8abbde638f205c5267c250125532d2bd55`  
		Last Modified: Tue, 19 Mar 2019 12:08:45 GMT  
		Size: 23.6 MB (23571106 bytes)  
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

### `mono:5.18.1.0-slim` - linux; 386

```console
$ docker pull mono@sha256:c300d558b044ef13c53bbf772c69f3d44516c84a1110579626ac57646fe5f345
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87344308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041904a582dc9f2b6f3f8bbccbf8544c4659e582bd03a0aade99800c0b210829`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
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
$ docker pull mono@sha256:761bd28fb1e35f169b0cff1a151f9018f1142412ca961b3a33bc948252e33c08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:ff1f4fc9cd200961cda0349e03aa234d2a529fcce3048f8ab86fd85d6fa52e2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83898076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec324b3e46bbb73644d76ddb3c03f5d5c2ef09bfbf2ffabda8551215460159e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:19:44 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 00:19:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:20:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed5a5d93d7ad4f01acb4d3b9f6185a32dcfc57d38b3b3e8cbee4b5b10e6449`  
		Last Modified: Wed, 27 Mar 2019 00:36:09 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc95c69b8dbfbf5cd3fec70ebecb69e312744865a42887855113682e7524cf`  
		Last Modified: Wed, 27 Mar 2019 00:36:23 GMT  
		Size: 61.2 MB (61157587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:52e255726c923211fc000e4f2250a80dc32ae301cbbd033bfd918e722c766097
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45684324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e83c041ab196cc5678e074a0580773cc0ee8c648b9022d7386259c25aab535`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:30:35 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 09:30:52 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:31:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b653da59d3f483bdd0d28b3984180b07523df6c57e2ab7365927e85c0b58df8`  
		Last Modified: Wed, 27 Mar 2019 09:39:20 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d78cbe65f5099ce318329069d8220e0a6bb39aec101d9b80cbefdc98ed1edb`  
		Last Modified: Wed, 27 Mar 2019 09:39:30 GMT  
		Size: 24.3 MB (24279187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:053620c6318139d6114573a2f52f087d77df6821404d830017f7c95f108eecbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43098098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58646381b18aa3696bf3aef5dddc741b13b6ffd41757291748d4d9cbd6dc3f1b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:58:26 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:58:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:59:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff65f933d3d5aaf794a8d9d3d529ef903cc64d8d7afef3ff40bcbecb20bf663`  
		Last Modified: Tue, 19 Mar 2019 12:08:36 GMT  
		Size: 244.5 KB (244498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae331745768e50b2856746e83c2bc8abbde638f205c5267c250125532d2bd55`  
		Last Modified: Tue, 19 Mar 2019 12:08:45 GMT  
		Size: 23.6 MB (23571106 bytes)  
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

### `mono:5.18.1-slim` - linux; 386

```console
$ docker pull mono@sha256:c300d558b044ef13c53bbf772c69f3d44516c84a1110579626ac57646fe5f345
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87344308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041904a582dc9f2b6f3f8bbccbf8544c4659e582bd03a0aade99800c0b210829`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
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
$ docker pull mono@sha256:761bd28fb1e35f169b0cff1a151f9018f1142412ca961b3a33bc948252e33c08
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
$ docker pull mono@sha256:ff1f4fc9cd200961cda0349e03aa234d2a529fcce3048f8ab86fd85d6fa52e2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83898076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec324b3e46bbb73644d76ddb3c03f5d5c2ef09bfbf2ffabda8551215460159e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:19:44 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 00:19:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:20:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed5a5d93d7ad4f01acb4d3b9f6185a32dcfc57d38b3b3e8cbee4b5b10e6449`  
		Last Modified: Wed, 27 Mar 2019 00:36:09 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc95c69b8dbfbf5cd3fec70ebecb69e312744865a42887855113682e7524cf`  
		Last Modified: Wed, 27 Mar 2019 00:36:23 GMT  
		Size: 61.2 MB (61157587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:52e255726c923211fc000e4f2250a80dc32ae301cbbd033bfd918e722c766097
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45684324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e83c041ab196cc5678e074a0580773cc0ee8c648b9022d7386259c25aab535`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:30:35 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 09:30:52 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:31:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b653da59d3f483bdd0d28b3984180b07523df6c57e2ab7365927e85c0b58df8`  
		Last Modified: Wed, 27 Mar 2019 09:39:20 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d78cbe65f5099ce318329069d8220e0a6bb39aec101d9b80cbefdc98ed1edb`  
		Last Modified: Wed, 27 Mar 2019 09:39:30 GMT  
		Size: 24.3 MB (24279187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:053620c6318139d6114573a2f52f087d77df6821404d830017f7c95f108eecbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43098098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58646381b18aa3696bf3aef5dddc741b13b6ffd41757291748d4d9cbd6dc3f1b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:58:26 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:58:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:59:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff65f933d3d5aaf794a8d9d3d529ef903cc64d8d7afef3ff40bcbecb20bf663`  
		Last Modified: Tue, 19 Mar 2019 12:08:36 GMT  
		Size: 244.5 KB (244498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae331745768e50b2856746e83c2bc8abbde638f205c5267c250125532d2bd55`  
		Last Modified: Tue, 19 Mar 2019 12:08:45 GMT  
		Size: 23.6 MB (23571106 bytes)  
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

### `mono:5.18-slim` - linux; 386

```console
$ docker pull mono@sha256:c300d558b044ef13c53bbf772c69f3d44516c84a1110579626ac57646fe5f345
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87344308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041904a582dc9f2b6f3f8bbccbf8544c4659e582bd03a0aade99800c0b210829`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
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
$ docker pull mono@sha256:761bd28fb1e35f169b0cff1a151f9018f1142412ca961b3a33bc948252e33c08
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
$ docker pull mono@sha256:ff1f4fc9cd200961cda0349e03aa234d2a529fcce3048f8ab86fd85d6fa52e2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83898076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec324b3e46bbb73644d76ddb3c03f5d5c2ef09bfbf2ffabda8551215460159e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:19:44 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 00:19:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:20:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed5a5d93d7ad4f01acb4d3b9f6185a32dcfc57d38b3b3e8cbee4b5b10e6449`  
		Last Modified: Wed, 27 Mar 2019 00:36:09 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc95c69b8dbfbf5cd3fec70ebecb69e312744865a42887855113682e7524cf`  
		Last Modified: Wed, 27 Mar 2019 00:36:23 GMT  
		Size: 61.2 MB (61157587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:52e255726c923211fc000e4f2250a80dc32ae301cbbd033bfd918e722c766097
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45684324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e83c041ab196cc5678e074a0580773cc0ee8c648b9022d7386259c25aab535`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:30:35 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 09:30:52 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:31:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b653da59d3f483bdd0d28b3984180b07523df6c57e2ab7365927e85c0b58df8`  
		Last Modified: Wed, 27 Mar 2019 09:39:20 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d78cbe65f5099ce318329069d8220e0a6bb39aec101d9b80cbefdc98ed1edb`  
		Last Modified: Wed, 27 Mar 2019 09:39:30 GMT  
		Size: 24.3 MB (24279187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:053620c6318139d6114573a2f52f087d77df6821404d830017f7c95f108eecbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43098098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58646381b18aa3696bf3aef5dddc741b13b6ffd41757291748d4d9cbd6dc3f1b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:58:26 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:58:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:59:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff65f933d3d5aaf794a8d9d3d529ef903cc64d8d7afef3ff40bcbecb20bf663`  
		Last Modified: Tue, 19 Mar 2019 12:08:36 GMT  
		Size: 244.5 KB (244498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae331745768e50b2856746e83c2bc8abbde638f205c5267c250125532d2bd55`  
		Last Modified: Tue, 19 Mar 2019 12:08:45 GMT  
		Size: 23.6 MB (23571106 bytes)  
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

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:c300d558b044ef13c53bbf772c69f3d44516c84a1110579626ac57646fe5f345
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87344308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041904a582dc9f2b6f3f8bbccbf8544c4659e582bd03a0aade99800c0b210829`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
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
$ docker pull mono@sha256:b3a32027146e4ec3e14b82bc8f02623769460db9680ecd7059364137e6bf4cea
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
$ docker pull mono@sha256:037f0d26154c6dccd48ec59d676c9e6bea4c856419b4d918c1331b3b6bfb1dd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (224032972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964736a53b3037379ad7fcc6161db4911aa7ce6fdae511c037527f736ea9998a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:19:44 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 00:19:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:20:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 00:29:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed5a5d93d7ad4f01acb4d3b9f6185a32dcfc57d38b3b3e8cbee4b5b10e6449`  
		Last Modified: Wed, 27 Mar 2019 00:36:09 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc95c69b8dbfbf5cd3fec70ebecb69e312744865a42887855113682e7524cf`  
		Last Modified: Wed, 27 Mar 2019 00:36:23 GMT  
		Size: 61.2 MB (61157587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdba26ae6eb0b55d5156bbcc9729b83b5736a90e93534578f485a45cf5567a0`  
		Last Modified: Wed, 27 Mar 2019 00:37:15 GMT  
		Size: 140.1 MB (140134896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v5

```console
$ docker pull mono@sha256:12c342833a624af52a26eb326c173ef66817b66796833748f367b9062a65d21b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171273791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a863392beef4e96fb7f5cc2a3590947a2dd956a1a8182b5cadda6be4de4e4625`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:30:35 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 09:30:52 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:31:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Mar 2019 09:36:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b653da59d3f483bdd0d28b3984180b07523df6c57e2ab7365927e85c0b58df8`  
		Last Modified: Wed, 27 Mar 2019 09:39:20 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d78cbe65f5099ce318329069d8220e0a6bb39aec101d9b80cbefdc98ed1edb`  
		Last Modified: Wed, 27 Mar 2019 09:39:30 GMT  
		Size: 24.3 MB (24279187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8e2b927f158410b4860b64f2026919ef8e35232af0688bd4b49e11c4fb3ca8`  
		Last Modified: Wed, 27 Mar 2019 09:40:45 GMT  
		Size: 125.6 MB (125589467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:bd7e96655bfb8d061d1219ea793c00d0f203b65893818c246158785f7fc879ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167365885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02d01935f3b90049693826e28aa32f5985fe2a617dfd7af401b8b0d5c4c4617`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:58:26 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:58:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:59:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 12:05:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff65f933d3d5aaf794a8d9d3d529ef903cc64d8d7afef3ff40bcbecb20bf663`  
		Last Modified: Tue, 19 Mar 2019 12:08:36 GMT  
		Size: 244.5 KB (244498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae331745768e50b2856746e83c2bc8abbde638f205c5267c250125532d2bd55`  
		Last Modified: Tue, 19 Mar 2019 12:08:45 GMT  
		Size: 23.6 MB (23571106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96492b8017978f5fd5aa23207599b8a0917e02f2d5445c550237328a155004c`  
		Last Modified: Tue, 19 Mar 2019 12:09:58 GMT  
		Size: 124.3 MB (124267787 bytes)  
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

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:9a870e8fdd6f674b277cad67094fb14715532461fa9635c6b9fccea10bd625dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233078643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96f0de01a4cae1f7d04885dc93e84ef28e243be189a9794f512f37d1dafd26f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Mar 2019 11:08:51 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd5de9d1e6da7ac7fa5d36c878f1881eb975fc776d1229ba9c2db8829c996c2`  
		Last Modified: Tue, 19 Mar 2019 11:12:24 GMT  
		Size: 145.7 MB (145734335 bytes)  
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
$ docker pull mono@sha256:761bd28fb1e35f169b0cff1a151f9018f1142412ca961b3a33bc948252e33c08
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
$ docker pull mono@sha256:ff1f4fc9cd200961cda0349e03aa234d2a529fcce3048f8ab86fd85d6fa52e2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83898076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec324b3e46bbb73644d76ddb3c03f5d5c2ef09bfbf2ffabda8551215460159e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:19:44 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 00:19:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 00:20:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ed5a5d93d7ad4f01acb4d3b9f6185a32dcfc57d38b3b3e8cbee4b5b10e6449`  
		Last Modified: Wed, 27 Mar 2019 00:36:09 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc95c69b8dbfbf5cd3fec70ebecb69e312744865a42887855113682e7524cf`  
		Last Modified: Wed, 27 Mar 2019 00:36:23 GMT  
		Size: 61.2 MB (61157587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:52e255726c923211fc000e4f2250a80dc32ae301cbbd033bfd918e722c766097
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45684324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e83c041ab196cc5678e074a0580773cc0ee8c648b9022d7386259c25aab535`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:30:35 GMT
ENV MONO_VERSION=5.18.1.0
# Wed, 27 Mar 2019 09:30:52 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 27 Mar 2019 09:31:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b653da59d3f483bdd0d28b3984180b07523df6c57e2ab7365927e85c0b58df8`  
		Last Modified: Wed, 27 Mar 2019 09:39:20 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d78cbe65f5099ce318329069d8220e0a6bb39aec101d9b80cbefdc98ed1edb`  
		Last Modified: Wed, 27 Mar 2019 09:39:30 GMT  
		Size: 24.3 MB (24279187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:053620c6318139d6114573a2f52f087d77df6821404d830017f7c95f108eecbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43098098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58646381b18aa3696bf3aef5dddc741b13b6ffd41757291748d4d9cbd6dc3f1b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:58:26 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:58:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:59:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff65f933d3d5aaf794a8d9d3d529ef903cc64d8d7afef3ff40bcbecb20bf663`  
		Last Modified: Tue, 19 Mar 2019 12:08:36 GMT  
		Size: 244.5 KB (244498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae331745768e50b2856746e83c2bc8abbde638f205c5267c250125532d2bd55`  
		Last Modified: Tue, 19 Mar 2019 12:08:45 GMT  
		Size: 23.6 MB (23571106 bytes)  
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

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:c300d558b044ef13c53bbf772c69f3d44516c84a1110579626ac57646fe5f345
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87344308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041904a582dc9f2b6f3f8bbccbf8544c4659e582bd03a0aade99800c0b210829`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
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

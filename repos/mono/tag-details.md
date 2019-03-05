<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:4`](#mono4)
-	[`mono:4.8`](#mono48)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:5`](#mono5)
-	[`mono:5.16`](#mono516)
-	[`mono:5.16.0`](#mono5160)
-	[`mono:5.16.0.220`](#mono5160220)
-	[`mono:5.16.0.220-slim`](#mono5160220-slim)
-	[`mono:5.16.0-slim`](#mono5160-slim)
-	[`mono:5.16-slim`](#mono516-slim)
-	[`mono:5.18`](#mono518)
-	[`mono:5.18.0`](#mono5180)
-	[`mono:5.18.0.225`](#mono5180225)
-	[`mono:5.18.0.225-slim`](#mono5180225-slim)
-	[`mono:5.18.0-slim`](#mono5180-slim)
-	[`mono:5.18-slim`](#mono518-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:3bac588765a39635fa6f4b3286e429025a61a3a9facf2a00902d8c9a74b016a6
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
$ docker pull mono@sha256:b04b2edddfbde0c5dc0d2fdd969d3aac857627bc4003f81c0fb91013f3c8fe86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae3fa487413a097ca9008c208bd33344e1e4b2602cf6af1c27539407a3c7d0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:05:25 GMT
ADD file:05857c02422fe7316ce1c897732369dfcd2216d72f38e7d23b05a87c84f00bda in / 
# Thu, 07 Feb 2019 13:05:26 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:47:36 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 15:47:36 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 15:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:47:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 15:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39aa05e112a663f159c176b484d3cebbd5ddc1396f57063aca1827314ffdabd8`  
		Last Modified: Thu, 07 Feb 2019 02:15:23 GMT  
		Size: 36.6 MB (36619990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f746f08ed828944c07134f03ed7cfc5c0789e5f48b10b47fab2440df093b4620`  
		Last Modified: Thu, 07 Feb 2019 16:02:48 GMT  
		Size: 6.1 MB (6116736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2745fa28f14174c1673f1e6a354749a3b5caf8e8dbbde8df7ceffbd4617e71de`  
		Last Modified: Thu, 07 Feb 2019 16:02:46 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f810e039f24df141ff1fba788a8edceb0abf6d9615cc4e88dbb26ba74bb49603`  
		Last Modified: Thu, 07 Feb 2019 16:03:24 GMT  
		Size: 96.1 MB (96121817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; 386

```console
$ docker pull mono@sha256:6b92db5bc95b36f309e32bb8ae47738830094138c4ba8bd3fd2596e2f8007691
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46472562706cc6af90e6030715a001635e5521b57d487649fdda2625f3026811`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:07:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 02:07:09 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 02:07:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:07:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 02:08:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf338459b4ff3e293d27a967ddd256706f379eee7e6a1f9681c51dc98750ff8`  
		Last Modified: Thu, 07 Feb 2019 02:13:11 GMT  
		Size: 6.4 MB (6406265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b038f867efaa3ef3315ce91e62c734da6e87c94936d293d6d49630e54cb38228`  
		Last Modified: Thu, 07 Feb 2019 02:13:09 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19018f0dd7a82f7a3606ae219cc11bdf8eef85b109af157ca02a111fb11260b1`  
		Last Modified: Thu, 07 Feb 2019 02:13:37 GMT  
		Size: 106.0 MB (105992510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:3bac588765a39635fa6f4b3286e429025a61a3a9facf2a00902d8c9a74b016a6
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
$ docker pull mono@sha256:b04b2edddfbde0c5dc0d2fdd969d3aac857627bc4003f81c0fb91013f3c8fe86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae3fa487413a097ca9008c208bd33344e1e4b2602cf6af1c27539407a3c7d0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:05:25 GMT
ADD file:05857c02422fe7316ce1c897732369dfcd2216d72f38e7d23b05a87c84f00bda in / 
# Thu, 07 Feb 2019 13:05:26 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:47:36 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 15:47:36 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 15:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:47:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 15:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39aa05e112a663f159c176b484d3cebbd5ddc1396f57063aca1827314ffdabd8`  
		Last Modified: Thu, 07 Feb 2019 02:15:23 GMT  
		Size: 36.6 MB (36619990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f746f08ed828944c07134f03ed7cfc5c0789e5f48b10b47fab2440df093b4620`  
		Last Modified: Thu, 07 Feb 2019 16:02:48 GMT  
		Size: 6.1 MB (6116736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2745fa28f14174c1673f1e6a354749a3b5caf8e8dbbde8df7ceffbd4617e71de`  
		Last Modified: Thu, 07 Feb 2019 16:02:46 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f810e039f24df141ff1fba788a8edceb0abf6d9615cc4e88dbb26ba74bb49603`  
		Last Modified: Thu, 07 Feb 2019 16:03:24 GMT  
		Size: 96.1 MB (96121817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; 386

```console
$ docker pull mono@sha256:6b92db5bc95b36f309e32bb8ae47738830094138c4ba8bd3fd2596e2f8007691
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46472562706cc6af90e6030715a001635e5521b57d487649fdda2625f3026811`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:07:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 02:07:09 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 02:07:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:07:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 02:08:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf338459b4ff3e293d27a967ddd256706f379eee7e6a1f9681c51dc98750ff8`  
		Last Modified: Thu, 07 Feb 2019 02:13:11 GMT  
		Size: 6.4 MB (6406265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b038f867efaa3ef3315ce91e62c734da6e87c94936d293d6d49630e54cb38228`  
		Last Modified: Thu, 07 Feb 2019 02:13:09 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19018f0dd7a82f7a3606ae219cc11bdf8eef85b109af157ca02a111fb11260b1`  
		Last Modified: Thu, 07 Feb 2019 02:13:37 GMT  
		Size: 106.0 MB (105992510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:3bac588765a39635fa6f4b3286e429025a61a3a9facf2a00902d8c9a74b016a6
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
$ docker pull mono@sha256:b04b2edddfbde0c5dc0d2fdd969d3aac857627bc4003f81c0fb91013f3c8fe86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae3fa487413a097ca9008c208bd33344e1e4b2602cf6af1c27539407a3c7d0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:05:25 GMT
ADD file:05857c02422fe7316ce1c897732369dfcd2216d72f38e7d23b05a87c84f00bda in / 
# Thu, 07 Feb 2019 13:05:26 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:47:36 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 15:47:36 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 15:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:47:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 15:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39aa05e112a663f159c176b484d3cebbd5ddc1396f57063aca1827314ffdabd8`  
		Last Modified: Thu, 07 Feb 2019 02:15:23 GMT  
		Size: 36.6 MB (36619990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f746f08ed828944c07134f03ed7cfc5c0789e5f48b10b47fab2440df093b4620`  
		Last Modified: Thu, 07 Feb 2019 16:02:48 GMT  
		Size: 6.1 MB (6116736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2745fa28f14174c1673f1e6a354749a3b5caf8e8dbbde8df7ceffbd4617e71de`  
		Last Modified: Thu, 07 Feb 2019 16:02:46 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f810e039f24df141ff1fba788a8edceb0abf6d9615cc4e88dbb26ba74bb49603`  
		Last Modified: Thu, 07 Feb 2019 16:03:24 GMT  
		Size: 96.1 MB (96121817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; 386

```console
$ docker pull mono@sha256:6b92db5bc95b36f309e32bb8ae47738830094138c4ba8bd3fd2596e2f8007691
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46472562706cc6af90e6030715a001635e5521b57d487649fdda2625f3026811`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:07:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 02:07:09 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 02:07:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:07:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 02:08:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf338459b4ff3e293d27a967ddd256706f379eee7e6a1f9681c51dc98750ff8`  
		Last Modified: Thu, 07 Feb 2019 02:13:11 GMT  
		Size: 6.4 MB (6406265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b038f867efaa3ef3315ce91e62c734da6e87c94936d293d6d49630e54cb38228`  
		Last Modified: Thu, 07 Feb 2019 02:13:09 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19018f0dd7a82f7a3606ae219cc11bdf8eef85b109af157ca02a111fb11260b1`  
		Last Modified: Thu, 07 Feb 2019 02:13:37 GMT  
		Size: 106.0 MB (105992510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:3bac588765a39635fa6f4b3286e429025a61a3a9facf2a00902d8c9a74b016a6
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
$ docker pull mono@sha256:b04b2edddfbde0c5dc0d2fdd969d3aac857627bc4003f81c0fb91013f3c8fe86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae3fa487413a097ca9008c208bd33344e1e4b2602cf6af1c27539407a3c7d0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:05:25 GMT
ADD file:05857c02422fe7316ce1c897732369dfcd2216d72f38e7d23b05a87c84f00bda in / 
# Thu, 07 Feb 2019 13:05:26 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:47:36 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 15:47:36 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 15:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:47:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 15:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39aa05e112a663f159c176b484d3cebbd5ddc1396f57063aca1827314ffdabd8`  
		Last Modified: Thu, 07 Feb 2019 02:15:23 GMT  
		Size: 36.6 MB (36619990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f746f08ed828944c07134f03ed7cfc5c0789e5f48b10b47fab2440df093b4620`  
		Last Modified: Thu, 07 Feb 2019 16:02:48 GMT  
		Size: 6.1 MB (6116736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2745fa28f14174c1673f1e6a354749a3b5caf8e8dbbde8df7ceffbd4617e71de`  
		Last Modified: Thu, 07 Feb 2019 16:02:46 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f810e039f24df141ff1fba788a8edceb0abf6d9615cc4e88dbb26ba74bb49603`  
		Last Modified: Thu, 07 Feb 2019 16:03:24 GMT  
		Size: 96.1 MB (96121817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; 386

```console
$ docker pull mono@sha256:6b92db5bc95b36f309e32bb8ae47738830094138c4ba8bd3fd2596e2f8007691
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46472562706cc6af90e6030715a001635e5521b57d487649fdda2625f3026811`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:07:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 02:07:09 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 02:07:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:07:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 02:08:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf338459b4ff3e293d27a967ddd256706f379eee7e6a1f9681c51dc98750ff8`  
		Last Modified: Thu, 07 Feb 2019 02:13:11 GMT  
		Size: 6.4 MB (6406265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b038f867efaa3ef3315ce91e62c734da6e87c94936d293d6d49630e54cb38228`  
		Last Modified: Thu, 07 Feb 2019 02:13:09 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19018f0dd7a82f7a3606ae219cc11bdf8eef85b109af157ca02a111fb11260b1`  
		Last Modified: Thu, 07 Feb 2019 02:13:37 GMT  
		Size: 106.0 MB (105992510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:8a79c5c49a48d376c7a79bb7922ce89fedd410f2b49a0f45e732888857da9a22
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
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
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
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16`

```console
$ docker pull mono@sha256:0b15305aa1a68122d5f0facb87c176cbc589462f623bc801e8d024690dbd34a2
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
$ docker pull mono@sha256:104e2b3ad014450b3f39ee7e12d956a649d99cee4d9523517d2ab21706b8b726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178638798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728c765aa2296cf55c5bfbc788e00c557aa5067ebfc2ebd78fc21a50f53fe343`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 16:01:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21ab460d29dd683d2adfd96d62f5b65e81afaa1b6a2ff6a8026c325da06d15`  
		Last Modified: Thu, 07 Feb 2019 16:05:15 GMT  
		Size: 121.0 MB (121026416 bytes)  
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
$ docker pull mono@sha256:8ba461c9e83753b757b765e3b593d2f1e0de29a7a5767b7460b81d17f266efa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213005941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029eef1a66bb7d239d56b2408b9c3d639a4fb3c3b39d706049272087744e3e81`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:12:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f1e1270802cde64c664d9b4c5eed06db40939951d281dc5a12ace959106ad4`  
		Last Modified: Thu, 07 Feb 2019 02:15:06 GMT  
		Size: 142.5 MB (142457184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; ppc64le

```console
$ docker pull mono@sha256:065f3c72f5db06197cec6119c1728baaea63dda5518b0e804cf676440da97c19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170436179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd97c7ae5cbd616990f1cd0abca9ba8a6057f9cc6902da8753883a02c0dd4a68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:05:37 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38be38455c85614092ea4ecbf9040f4a0abb179682587b300b5313b9a171c1f3`  
		Last Modified: Wed, 06 Feb 2019 18:08:52 GMT  
		Size: 122.8 MB (122779651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0`

```console
$ docker pull mono@sha256:0b15305aa1a68122d5f0facb87c176cbc589462f623bc801e8d024690dbd34a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.0` - linux; amd64

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

### `mono:5.16.0` - linux; arm variant v5

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

### `mono:5.16.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:104e2b3ad014450b3f39ee7e12d956a649d99cee4d9523517d2ab21706b8b726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178638798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728c765aa2296cf55c5bfbc788e00c557aa5067ebfc2ebd78fc21a50f53fe343`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 16:01:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21ab460d29dd683d2adfd96d62f5b65e81afaa1b6a2ff6a8026c325da06d15`  
		Last Modified: Thu, 07 Feb 2019 16:05:15 GMT  
		Size: 121.0 MB (121026416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; arm64 variant v8

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

### `mono:5.16.0` - linux; 386

```console
$ docker pull mono@sha256:8ba461c9e83753b757b765e3b593d2f1e0de29a7a5767b7460b81d17f266efa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213005941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029eef1a66bb7d239d56b2408b9c3d639a4fb3c3b39d706049272087744e3e81`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:12:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f1e1270802cde64c664d9b4c5eed06db40939951d281dc5a12ace959106ad4`  
		Last Modified: Thu, 07 Feb 2019 02:15:06 GMT  
		Size: 142.5 MB (142457184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; ppc64le

```console
$ docker pull mono@sha256:065f3c72f5db06197cec6119c1728baaea63dda5518b0e804cf676440da97c19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170436179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd97c7ae5cbd616990f1cd0abca9ba8a6057f9cc6902da8753883a02c0dd4a68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:05:37 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38be38455c85614092ea4ecbf9040f4a0abb179682587b300b5313b9a171c1f3`  
		Last Modified: Wed, 06 Feb 2019 18:08:52 GMT  
		Size: 122.8 MB (122779651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.220`

```console
$ docker pull mono@sha256:0b15305aa1a68122d5f0facb87c176cbc589462f623bc801e8d024690dbd34a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.0.220` - linux; amd64

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

### `mono:5.16.0.220` - linux; arm variant v5

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

### `mono:5.16.0.220` - linux; arm variant v7

```console
$ docker pull mono@sha256:104e2b3ad014450b3f39ee7e12d956a649d99cee4d9523517d2ab21706b8b726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178638798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728c765aa2296cf55c5bfbc788e00c557aa5067ebfc2ebd78fc21a50f53fe343`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 16:01:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21ab460d29dd683d2adfd96d62f5b65e81afaa1b6a2ff6a8026c325da06d15`  
		Last Modified: Thu, 07 Feb 2019 16:05:15 GMT  
		Size: 121.0 MB (121026416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; arm64 variant v8

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

### `mono:5.16.0.220` - linux; 386

```console
$ docker pull mono@sha256:8ba461c9e83753b757b765e3b593d2f1e0de29a7a5767b7460b81d17f266efa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213005941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029eef1a66bb7d239d56b2408b9c3d639a4fb3c3b39d706049272087744e3e81`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:12:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f1e1270802cde64c664d9b4c5eed06db40939951d281dc5a12ace959106ad4`  
		Last Modified: Thu, 07 Feb 2019 02:15:06 GMT  
		Size: 142.5 MB (142457184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; ppc64le

```console
$ docker pull mono@sha256:065f3c72f5db06197cec6119c1728baaea63dda5518b0e804cf676440da97c19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170436179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd97c7ae5cbd616990f1cd0abca9ba8a6057f9cc6902da8753883a02c0dd4a68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:05:37 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38be38455c85614092ea4ecbf9040f4a0abb179682587b300b5313b9a171c1f3`  
		Last Modified: Wed, 06 Feb 2019 18:08:52 GMT  
		Size: 122.8 MB (122779651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.220-slim`

```console
$ docker pull mono@sha256:0172e74a978f485d97731ecf47678950ab69a9f1f92c0c8b96d1c296263bb817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.0.220-slim` - linux; amd64

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

### `mono:5.16.0.220-slim` - linux; arm variant v5

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

### `mono:5.16.0.220-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:cafea22d5e386de97940ec4e525de4b2bf5b75e705797eaf8b864bd5568232b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57612382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71738f081d27e1573e568336aca01d59854a542bb774e0b472cdac57e89267ca`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; arm64 variant v8

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

### `mono:5.16.0.220-slim` - linux; 386

```console
$ docker pull mono@sha256:b3f6c8d59b4c8bb5d5b361a2807d44ad04bfa5525a728c502cfcda18f7de28e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70548757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4077bba5eb23c38fd6e23cba639f3030ad55857e16d05d1b1c9662c4d8beceab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:93211155c6e78ee20e16cd9635b48f568698ac15a499ec5f9d6f60eae9cb4426
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47656528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05019b689b5d13aa2edf142a71d91ee61a4e0e324e43ef3e82dff6d02bd0f70f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0-slim`

```console
$ docker pull mono@sha256:0172e74a978f485d97731ecf47678950ab69a9f1f92c0c8b96d1c296263bb817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.0-slim` - linux; amd64

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

### `mono:5.16.0-slim` - linux; arm variant v5

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

### `mono:5.16.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:cafea22d5e386de97940ec4e525de4b2bf5b75e705797eaf8b864bd5568232b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57612382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71738f081d27e1573e568336aca01d59854a542bb774e0b472cdac57e89267ca`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; arm64 variant v8

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

### `mono:5.16.0-slim` - linux; 386

```console
$ docker pull mono@sha256:b3f6c8d59b4c8bb5d5b361a2807d44ad04bfa5525a728c502cfcda18f7de28e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70548757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4077bba5eb23c38fd6e23cba639f3030ad55857e16d05d1b1c9662c4d8beceab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:93211155c6e78ee20e16cd9635b48f568698ac15a499ec5f9d6f60eae9cb4426
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47656528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05019b689b5d13aa2edf142a71d91ee61a4e0e324e43ef3e82dff6d02bd0f70f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16-slim`

```console
$ docker pull mono@sha256:0172e74a978f485d97731ecf47678950ab69a9f1f92c0c8b96d1c296263bb817
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
$ docker pull mono@sha256:cafea22d5e386de97940ec4e525de4b2bf5b75e705797eaf8b864bd5568232b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57612382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71738f081d27e1573e568336aca01d59854a542bb774e0b472cdac57e89267ca`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
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
$ docker pull mono@sha256:b3f6c8d59b4c8bb5d5b361a2807d44ad04bfa5525a728c502cfcda18f7de28e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70548757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4077bba5eb23c38fd6e23cba639f3030ad55857e16d05d1b1c9662c4d8beceab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:93211155c6e78ee20e16cd9635b48f568698ac15a499ec5f9d6f60eae9cb4426
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47656528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05019b689b5d13aa2edf142a71d91ee61a4e0e324e43ef3e82dff6d02bd0f70f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18`

```console
$ docker pull mono@sha256:8a79c5c49a48d376c7a79bb7922ce89fedd410f2b49a0f45e732888857da9a22
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
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
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
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0`

```console
$ docker pull mono@sha256:8a79c5c49a48d376c7a79bb7922ce89fedd410f2b49a0f45e732888857da9a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.0` - linux; amd64

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

### `mono:5.18.0` - linux; arm variant v5

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

### `mono:5.18.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; arm64 variant v8

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

### `mono:5.18.0` - linux; 386

```console
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0.225`

```console
$ docker pull mono@sha256:8a79c5c49a48d376c7a79bb7922ce89fedd410f2b49a0f45e732888857da9a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.0.225` - linux; amd64

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

### `mono:5.18.0.225` - linux; arm variant v5

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

### `mono:5.18.0.225` - linux; arm variant v7

```console
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; arm64 variant v8

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

### `mono:5.18.0.225` - linux; 386

```console
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0.225-slim`

```console
$ docker pull mono@sha256:24d80c703216f9f756b9f42540a7f2b88b44de529f7b5bc98ce1d2c6ed3aecea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.0.225-slim` - linux; amd64

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

### `mono:5.18.0.225-slim` - linux; arm variant v5

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

### `mono:5.18.0.225-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:1d007b5191c3ac3c0a803a3c403fe91fe4f49abe03a0cc1624ea8eac77a891d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71926d34fa255834b8acc2293a753ff39355810e71681348b347ab82710131be`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; arm64 variant v8

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

### `mono:5.18.0.225-slim` - linux; 386

```console
$ docker pull mono@sha256:232bee4b9447fbd7ee6c9159c8a7ce99ab8f44db42f0c69eed38c8075b227c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e04c818fead28c398ff2ed1628e9a46ec29f5b81d153010139a6671eafc10a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6c65b53ebe4eb54300b7abb51fa7f182de21f4ed3ff4224d8a0306885a2d00bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e77adbe77da62ef2f9f0822c4b809b3edf9a10701a5aaa5b82eab72bd30c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0-slim`

```console
$ docker pull mono@sha256:24d80c703216f9f756b9f42540a7f2b88b44de529f7b5bc98ce1d2c6ed3aecea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.0-slim` - linux; amd64

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

### `mono:5.18.0-slim` - linux; arm variant v5

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

### `mono:5.18.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:1d007b5191c3ac3c0a803a3c403fe91fe4f49abe03a0cc1624ea8eac77a891d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71926d34fa255834b8acc2293a753ff39355810e71681348b347ab82710131be`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; arm64 variant v8

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

### `mono:5.18.0-slim` - linux; 386

```console
$ docker pull mono@sha256:232bee4b9447fbd7ee6c9159c8a7ce99ab8f44db42f0c69eed38c8075b227c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e04c818fead28c398ff2ed1628e9a46ec29f5b81d153010139a6671eafc10a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6c65b53ebe4eb54300b7abb51fa7f182de21f4ed3ff4224d8a0306885a2d00bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e77adbe77da62ef2f9f0822c4b809b3edf9a10701a5aaa5b82eab72bd30c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18-slim`

```console
$ docker pull mono@sha256:24d80c703216f9f756b9f42540a7f2b88b44de529f7b5bc98ce1d2c6ed3aecea
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
$ docker pull mono@sha256:1d007b5191c3ac3c0a803a3c403fe91fe4f49abe03a0cc1624ea8eac77a891d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71926d34fa255834b8acc2293a753ff39355810e71681348b347ab82710131be`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
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
$ docker pull mono@sha256:232bee4b9447fbd7ee6c9159c8a7ce99ab8f44db42f0c69eed38c8075b227c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e04c818fead28c398ff2ed1628e9a46ec29f5b81d153010139a6671eafc10a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6c65b53ebe4eb54300b7abb51fa7f182de21f4ed3ff4224d8a0306885a2d00bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e77adbe77da62ef2f9f0822c4b809b3edf9a10701a5aaa5b82eab72bd30c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:24d80c703216f9f756b9f42540a7f2b88b44de529f7b5bc98ce1d2c6ed3aecea
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
$ docker pull mono@sha256:1d007b5191c3ac3c0a803a3c403fe91fe4f49abe03a0cc1624ea8eac77a891d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71926d34fa255834b8acc2293a753ff39355810e71681348b347ab82710131be`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
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
$ docker pull mono@sha256:232bee4b9447fbd7ee6c9159c8a7ce99ab8f44db42f0c69eed38c8075b227c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e04c818fead28c398ff2ed1628e9a46ec29f5b81d153010139a6671eafc10a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6c65b53ebe4eb54300b7abb51fa7f182de21f4ed3ff4224d8a0306885a2d00bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e77adbe77da62ef2f9f0822c4b809b3edf9a10701a5aaa5b82eab72bd30c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:8a79c5c49a48d376c7a79bb7922ce89fedd410f2b49a0f45e732888857da9a22
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
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
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
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:24d80c703216f9f756b9f42540a7f2b88b44de529f7b5bc98ce1d2c6ed3aecea
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
$ docker pull mono@sha256:1d007b5191c3ac3c0a803a3c403fe91fe4f49abe03a0cc1624ea8eac77a891d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71926d34fa255834b8acc2293a753ff39355810e71681348b347ab82710131be`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
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
$ docker pull mono@sha256:232bee4b9447fbd7ee6c9159c8a7ce99ab8f44db42f0c69eed38c8075b227c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e04c818fead28c398ff2ed1628e9a46ec29f5b81d153010139a6671eafc10a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6c65b53ebe4eb54300b7abb51fa7f182de21f4ed3ff4224d8a0306885a2d00bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e77adbe77da62ef2f9f0822c4b809b3edf9a10701a5aaa5b82eab72bd30c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

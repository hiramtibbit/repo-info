<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:4`](#mono4)
-	[`mono:4.8`](#mono48)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:5`](#mono5)
-	[`mono:5.4`](#mono54)
-	[`mono:5.4.1`](#mono541)
-	[`mono:5.4.1.6`](#mono5416)
-	[`mono:5.4.1.6-slim`](#mono5416-slim)
-	[`mono:5.4.1-slim`](#mono541-slim)
-	[`mono:5.4-slim`](#mono54-slim)
-	[`mono:5.8`](#mono58)
-	[`mono:5.8.0`](#mono580)
-	[`mono:5.8.0.108`](#mono580108)
-	[`mono:5.8.0.108-slim`](#mono580108-slim)
-	[`mono:5.8.0-slim`](#mono580-slim)
-	[`mono:5.8-slim`](#mono58-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:693837142bdea9388c5bdd2f80a2cbf77443aab9c4c6eae2871b323ca159a3a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:38a62000e27c235cb52b967a62c13a1055b66a3b5e1fe467becd01cbb354fbed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153041821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b03b5b1d9ecb8f0ef6f1e566662282d751ba39d7458126b6891ac3b5915089`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 02:05:40 GMT
ADD file:ea1e68682553e8bdf553ace007e62eaa11f656270c4c57fc0e50777961bdb0f8 in / 
# Thu, 15 Feb 2018 02:05:49 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:17:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 15 Feb 2018 06:17:13 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 15 Feb 2018 06:17:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:17:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:18:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:98b70bf1494f120c94bbfc873e70bb8842de7285b258e3a93cb32ce96a3173eb`  
		Last Modified: Thu, 15 Feb 2018 02:32:07 GMT  
		Size: 38.1 MB (38109787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf45d1b747631a809df2104a601eb566385271319218fdd36d0e97cae75b506`  
		Last Modified: Thu, 15 Feb 2018 07:19:09 GMT  
		Size: 7.8 MB (7755170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80201e73fd86421db39fc8d2371d4fc468156cd476ed39f93b76018785eac52e`  
		Last Modified: Thu, 15 Feb 2018 07:19:07 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745806e06a5b80ab8a174b3a33613de0151216ef1914753ce8ba35ab0608d381`  
		Last Modified: Thu, 15 Feb 2018 07:19:43 GMT  
		Size: 107.1 MB (107146959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v7

```console
$ docker pull mono@sha256:c342c7ceeb0ef7ad549cd05f28f2af9b13c4cd80b1aabdd1a807785dfa1b0e83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138944851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b55a944b76eecfa8b409ff92f9331c59604b352c62a0048b1aaf2ebe6a6cb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:11 GMT
ADD file:9db26feeeebe82707411c8b6a09f22ba8e33fdd8bdf1e1cb3fd179cfc09b850e in / 
# Tue, 12 Dec 2017 13:36:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:42:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 14:42:42 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 14:42:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:42:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:44:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:dd70000a68c40049fa024e9ebecc22bcd8a32b0fb098e9f3edafdbfc872054b4`  
		Last Modified: Tue, 12 Dec 2017 13:47:59 GMT  
		Size: 35.7 MB (35661805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bac5781424193c9527b5bfa5c06eb028e0eca16516cd058511653a01b0b7dd`  
		Last Modified: Tue, 12 Dec 2017 14:50:53 GMT  
		Size: 7.2 MB (7185300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567cfe4d52b53ccc0a2131014faead07f90583cded9e13a802fd7ba39c4bbc67`  
		Last Modified: Tue, 12 Dec 2017 14:50:52 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e170876330ebd96f24bce96ea82eb2241088331591e17d2b66fb8b7e6a0c3c`  
		Last Modified: Tue, 12 Dec 2017 14:51:26 GMT  
		Size: 96.1 MB (96067836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; 386

```console
$ docker pull mono@sha256:43927f1c0933c579c97349e544890626770ab1aa448d8d081d3cdd3735342060
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153059206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ef815aafcd5e327a9fc3d4d98037b2c4e5663014cc1fa58a9e2c11d040ff96`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:34:29 GMT
ADD file:b269dd25aa5a2b39f29e341376ca9f2b8aded8f1327c01024b96a2eaa5c3a142 in / 
# Thu, 15 Feb 2018 20:34:29 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 11:39:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Feb 2018 11:39:50 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Feb 2018 11:40:06 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 11:41:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f10fe2356c6af971fa6e4de75405f5f2c0a1b4dd473c5da5cca0dc476bf491f8`  
		Last Modified: Thu, 15 Feb 2018 01:29:03 GMT  
		Size: 37.4 MB (37439124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e617752d4f547c030861e5d17fe22d2a1a97a5719106a706bb9087aab6788984`  
		Last Modified: Fri, 16 Feb 2018 12:04:35 GMT  
		Size: 9.6 MB (9607507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0c5d1b4144aae8c52ba8fd6fbb632e1e4bb1ad1938e34fcf51b791efc2937b`  
		Last Modified: Fri, 16 Feb 2018 12:04:31 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8323e44890fa0ebf489071f9912d8e2339baab4ba4395fd35a51b71c2d63825`  
		Last Modified: Fri, 16 Feb 2018 12:05:14 GMT  
		Size: 106.0 MB (105982667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:693837142bdea9388c5bdd2f80a2cbf77443aab9c4c6eae2871b323ca159a3a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:38a62000e27c235cb52b967a62c13a1055b66a3b5e1fe467becd01cbb354fbed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153041821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b03b5b1d9ecb8f0ef6f1e566662282d751ba39d7458126b6891ac3b5915089`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 02:05:40 GMT
ADD file:ea1e68682553e8bdf553ace007e62eaa11f656270c4c57fc0e50777961bdb0f8 in / 
# Thu, 15 Feb 2018 02:05:49 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:17:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 15 Feb 2018 06:17:13 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 15 Feb 2018 06:17:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:17:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:18:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:98b70bf1494f120c94bbfc873e70bb8842de7285b258e3a93cb32ce96a3173eb`  
		Last Modified: Thu, 15 Feb 2018 02:32:07 GMT  
		Size: 38.1 MB (38109787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf45d1b747631a809df2104a601eb566385271319218fdd36d0e97cae75b506`  
		Last Modified: Thu, 15 Feb 2018 07:19:09 GMT  
		Size: 7.8 MB (7755170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80201e73fd86421db39fc8d2371d4fc468156cd476ed39f93b76018785eac52e`  
		Last Modified: Thu, 15 Feb 2018 07:19:07 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745806e06a5b80ab8a174b3a33613de0151216ef1914753ce8ba35ab0608d381`  
		Last Modified: Thu, 15 Feb 2018 07:19:43 GMT  
		Size: 107.1 MB (107146959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v7

```console
$ docker pull mono@sha256:c342c7ceeb0ef7ad549cd05f28f2af9b13c4cd80b1aabdd1a807785dfa1b0e83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138944851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b55a944b76eecfa8b409ff92f9331c59604b352c62a0048b1aaf2ebe6a6cb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:11 GMT
ADD file:9db26feeeebe82707411c8b6a09f22ba8e33fdd8bdf1e1cb3fd179cfc09b850e in / 
# Tue, 12 Dec 2017 13:36:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:42:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 14:42:42 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 14:42:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:42:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:44:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:dd70000a68c40049fa024e9ebecc22bcd8a32b0fb098e9f3edafdbfc872054b4`  
		Last Modified: Tue, 12 Dec 2017 13:47:59 GMT  
		Size: 35.7 MB (35661805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bac5781424193c9527b5bfa5c06eb028e0eca16516cd058511653a01b0b7dd`  
		Last Modified: Tue, 12 Dec 2017 14:50:53 GMT  
		Size: 7.2 MB (7185300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567cfe4d52b53ccc0a2131014faead07f90583cded9e13a802fd7ba39c4bbc67`  
		Last Modified: Tue, 12 Dec 2017 14:50:52 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e170876330ebd96f24bce96ea82eb2241088331591e17d2b66fb8b7e6a0c3c`  
		Last Modified: Tue, 12 Dec 2017 14:51:26 GMT  
		Size: 96.1 MB (96067836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; 386

```console
$ docker pull mono@sha256:43927f1c0933c579c97349e544890626770ab1aa448d8d081d3cdd3735342060
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153059206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ef815aafcd5e327a9fc3d4d98037b2c4e5663014cc1fa58a9e2c11d040ff96`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:34:29 GMT
ADD file:b269dd25aa5a2b39f29e341376ca9f2b8aded8f1327c01024b96a2eaa5c3a142 in / 
# Thu, 15 Feb 2018 20:34:29 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 11:39:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Feb 2018 11:39:50 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Feb 2018 11:40:06 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 11:41:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f10fe2356c6af971fa6e4de75405f5f2c0a1b4dd473c5da5cca0dc476bf491f8`  
		Last Modified: Thu, 15 Feb 2018 01:29:03 GMT  
		Size: 37.4 MB (37439124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e617752d4f547c030861e5d17fe22d2a1a97a5719106a706bb9087aab6788984`  
		Last Modified: Fri, 16 Feb 2018 12:04:35 GMT  
		Size: 9.6 MB (9607507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0c5d1b4144aae8c52ba8fd6fbb632e1e4bb1ad1938e34fcf51b791efc2937b`  
		Last Modified: Fri, 16 Feb 2018 12:04:31 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8323e44890fa0ebf489071f9912d8e2339baab4ba4395fd35a51b71c2d63825`  
		Last Modified: Fri, 16 Feb 2018 12:05:14 GMT  
		Size: 106.0 MB (105982667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:693837142bdea9388c5bdd2f80a2cbf77443aab9c4c6eae2871b323ca159a3a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:38a62000e27c235cb52b967a62c13a1055b66a3b5e1fe467becd01cbb354fbed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153041821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b03b5b1d9ecb8f0ef6f1e566662282d751ba39d7458126b6891ac3b5915089`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 02:05:40 GMT
ADD file:ea1e68682553e8bdf553ace007e62eaa11f656270c4c57fc0e50777961bdb0f8 in / 
# Thu, 15 Feb 2018 02:05:49 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:17:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 15 Feb 2018 06:17:13 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 15 Feb 2018 06:17:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:17:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:18:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:98b70bf1494f120c94bbfc873e70bb8842de7285b258e3a93cb32ce96a3173eb`  
		Last Modified: Thu, 15 Feb 2018 02:32:07 GMT  
		Size: 38.1 MB (38109787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf45d1b747631a809df2104a601eb566385271319218fdd36d0e97cae75b506`  
		Last Modified: Thu, 15 Feb 2018 07:19:09 GMT  
		Size: 7.8 MB (7755170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80201e73fd86421db39fc8d2371d4fc468156cd476ed39f93b76018785eac52e`  
		Last Modified: Thu, 15 Feb 2018 07:19:07 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745806e06a5b80ab8a174b3a33613de0151216ef1914753ce8ba35ab0608d381`  
		Last Modified: Thu, 15 Feb 2018 07:19:43 GMT  
		Size: 107.1 MB (107146959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:c342c7ceeb0ef7ad549cd05f28f2af9b13c4cd80b1aabdd1a807785dfa1b0e83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138944851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b55a944b76eecfa8b409ff92f9331c59604b352c62a0048b1aaf2ebe6a6cb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:11 GMT
ADD file:9db26feeeebe82707411c8b6a09f22ba8e33fdd8bdf1e1cb3fd179cfc09b850e in / 
# Tue, 12 Dec 2017 13:36:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:42:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 14:42:42 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 14:42:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:42:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:44:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:dd70000a68c40049fa024e9ebecc22bcd8a32b0fb098e9f3edafdbfc872054b4`  
		Last Modified: Tue, 12 Dec 2017 13:47:59 GMT  
		Size: 35.7 MB (35661805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bac5781424193c9527b5bfa5c06eb028e0eca16516cd058511653a01b0b7dd`  
		Last Modified: Tue, 12 Dec 2017 14:50:53 GMT  
		Size: 7.2 MB (7185300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567cfe4d52b53ccc0a2131014faead07f90583cded9e13a802fd7ba39c4bbc67`  
		Last Modified: Tue, 12 Dec 2017 14:50:52 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e170876330ebd96f24bce96ea82eb2241088331591e17d2b66fb8b7e6a0c3c`  
		Last Modified: Tue, 12 Dec 2017 14:51:26 GMT  
		Size: 96.1 MB (96067836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; 386

```console
$ docker pull mono@sha256:43927f1c0933c579c97349e544890626770ab1aa448d8d081d3cdd3735342060
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153059206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ef815aafcd5e327a9fc3d4d98037b2c4e5663014cc1fa58a9e2c11d040ff96`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:34:29 GMT
ADD file:b269dd25aa5a2b39f29e341376ca9f2b8aded8f1327c01024b96a2eaa5c3a142 in / 
# Thu, 15 Feb 2018 20:34:29 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 11:39:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Feb 2018 11:39:50 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Feb 2018 11:40:06 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 11:41:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f10fe2356c6af971fa6e4de75405f5f2c0a1b4dd473c5da5cca0dc476bf491f8`  
		Last Modified: Thu, 15 Feb 2018 01:29:03 GMT  
		Size: 37.4 MB (37439124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e617752d4f547c030861e5d17fe22d2a1a97a5719106a706bb9087aab6788984`  
		Last Modified: Fri, 16 Feb 2018 12:04:35 GMT  
		Size: 9.6 MB (9607507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0c5d1b4144aae8c52ba8fd6fbb632e1e4bb1ad1938e34fcf51b791efc2937b`  
		Last Modified: Fri, 16 Feb 2018 12:04:31 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8323e44890fa0ebf489071f9912d8e2339baab4ba4395fd35a51b71c2d63825`  
		Last Modified: Fri, 16 Feb 2018 12:05:14 GMT  
		Size: 106.0 MB (105982667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:693837142bdea9388c5bdd2f80a2cbf77443aab9c4c6eae2871b323ca159a3a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:38a62000e27c235cb52b967a62c13a1055b66a3b5e1fe467becd01cbb354fbed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153041821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b03b5b1d9ecb8f0ef6f1e566662282d751ba39d7458126b6891ac3b5915089`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 02:05:40 GMT
ADD file:ea1e68682553e8bdf553ace007e62eaa11f656270c4c57fc0e50777961bdb0f8 in / 
# Thu, 15 Feb 2018 02:05:49 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:17:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 15 Feb 2018 06:17:13 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 15 Feb 2018 06:17:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:17:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:18:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:98b70bf1494f120c94bbfc873e70bb8842de7285b258e3a93cb32ce96a3173eb`  
		Last Modified: Thu, 15 Feb 2018 02:32:07 GMT  
		Size: 38.1 MB (38109787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf45d1b747631a809df2104a601eb566385271319218fdd36d0e97cae75b506`  
		Last Modified: Thu, 15 Feb 2018 07:19:09 GMT  
		Size: 7.8 MB (7755170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80201e73fd86421db39fc8d2371d4fc468156cd476ed39f93b76018785eac52e`  
		Last Modified: Thu, 15 Feb 2018 07:19:07 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745806e06a5b80ab8a174b3a33613de0151216ef1914753ce8ba35ab0608d381`  
		Last Modified: Thu, 15 Feb 2018 07:19:43 GMT  
		Size: 107.1 MB (107146959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v7

```console
$ docker pull mono@sha256:c342c7ceeb0ef7ad549cd05f28f2af9b13c4cd80b1aabdd1a807785dfa1b0e83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138944851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b55a944b76eecfa8b409ff92f9331c59604b352c62a0048b1aaf2ebe6a6cb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:11 GMT
ADD file:9db26feeeebe82707411c8b6a09f22ba8e33fdd8bdf1e1cb3fd179cfc09b850e in / 
# Tue, 12 Dec 2017 13:36:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:42:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 14:42:42 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 14:42:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:42:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:44:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:dd70000a68c40049fa024e9ebecc22bcd8a32b0fb098e9f3edafdbfc872054b4`  
		Last Modified: Tue, 12 Dec 2017 13:47:59 GMT  
		Size: 35.7 MB (35661805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bac5781424193c9527b5bfa5c06eb028e0eca16516cd058511653a01b0b7dd`  
		Last Modified: Tue, 12 Dec 2017 14:50:53 GMT  
		Size: 7.2 MB (7185300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567cfe4d52b53ccc0a2131014faead07f90583cded9e13a802fd7ba39c4bbc67`  
		Last Modified: Tue, 12 Dec 2017 14:50:52 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e170876330ebd96f24bce96ea82eb2241088331591e17d2b66fb8b7e6a0c3c`  
		Last Modified: Tue, 12 Dec 2017 14:51:26 GMT  
		Size: 96.1 MB (96067836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; 386

```console
$ docker pull mono@sha256:43927f1c0933c579c97349e544890626770ab1aa448d8d081d3cdd3735342060
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153059206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ef815aafcd5e327a9fc3d4d98037b2c4e5663014cc1fa58a9e2c11d040ff96`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:34:29 GMT
ADD file:b269dd25aa5a2b39f29e341376ca9f2b8aded8f1327c01024b96a2eaa5c3a142 in / 
# Thu, 15 Feb 2018 20:34:29 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 11:39:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Feb 2018 11:39:50 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Feb 2018 11:40:06 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 11:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 11:41:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f10fe2356c6af971fa6e4de75405f5f2c0a1b4dd473c5da5cca0dc476bf491f8`  
		Last Modified: Thu, 15 Feb 2018 01:29:03 GMT  
		Size: 37.4 MB (37439124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e617752d4f547c030861e5d17fe22d2a1a97a5719106a706bb9087aab6788984`  
		Last Modified: Fri, 16 Feb 2018 12:04:35 GMT  
		Size: 9.6 MB (9607507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0c5d1b4144aae8c52ba8fd6fbb632e1e4bb1ad1938e34fcf51b791efc2937b`  
		Last Modified: Fri, 16 Feb 2018 12:04:31 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8323e44890fa0ebf489071f9912d8e2339baab4ba4395fd35a51b71c2d63825`  
		Last Modified: Fri, 16 Feb 2018 12:05:14 GMT  
		Size: 106.0 MB (105982667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:c1035241748cdaf7fcbf4701f63d1387cc8326502c270ad22a5d2fbb883789e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:d4454a8b7a055c8f44d2e2934823323938d99a1c08d7f05881cee1fcae6921d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171173315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18dea4a6ab854f08fe030d8a72c11d9f745570a010abf1c4ce5124dea1c279d6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 15 Feb 2018 06:28:22 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d69243595644ce277d0808909ee91fa218c66bee3d49ea2affe3c8b70c533b`  
		Last Modified: Thu, 15 Feb 2018 07:22:32 GMT  
		Size: 113.7 MB (113687237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:5701fe7ddb6c3060c373380103a927378543c9f396fcf1bac7e163eb18952efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165303910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca222bec68504ffff9b876cf17911af2d80ea7c9af0167fd1b940bb88448a21`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:39:49 GMT
ENV MONO_VERSION=5.8.0.108
# Fri, 16 Feb 2018 02:39:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:41:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Feb 2018 02:55:34 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f679fe4bf4099d2b35046f440e9ce7f453917426bbea8d849199b23c1bc900`  
		Last Modified: Fri, 16 Feb 2018 03:04:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959a4b033f1c9c72644b04ad8aae660ba303afa97e9fbe4f6d86375e0f78e454`  
		Last Modified: Fri, 16 Feb 2018 03:04:48 GMT  
		Size: 26.3 MB (26258553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1409bb65372cc7d156826d2558c9f574b46a2768c5337b800ce708da4e6458`  
		Last Modified: Fri, 16 Feb 2018 03:07:38 GMT  
		Size: 111.6 MB (111555161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:8050aa6abe1175704bb39d35954041b758ef30f91f4a070a278096a5f8df9fa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173419346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06961c2b2e1e52b716d39c0adf2d6322111cf6169ddbc769bcae67ddf422c997`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:25:43 GMT
ENV MONO_VERSION=5.8.0.108
# Wed, 21 Feb 2018 07:25:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:26:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 21 Feb 2018 07:44:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c71d75c2d6998bd80a1b1d490d07bea095b79738bd455776ba17dcf28acf17`  
		Last Modified: Wed, 21 Feb 2018 08:11:20 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc118e10670f9e5f9770ca41fa32e6cb7dee2bbce17908548ffdf6531fe256`  
		Last Modified: Wed, 21 Feb 2018 08:11:32 GMT  
		Size: 29.1 MB (29136120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9bda771741f2ccfe96beb2d61a2e46181abe134d2846d2077d51fec812c8c`  
		Last Modified: Wed, 21 Feb 2018 08:46:14 GMT  
		Size: 114.0 MB (114007962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4`

```console
$ docker pull mono@sha256:dfa4da71673e9b347286910a69d04e9af5df5c835bbe5227419c1df81f20a300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4` - linux; amd64

```console
$ docker pull mono@sha256:97ba65ab792bb36eb1d83dc6828d25abc83db4fe3de1e93c59b4e83f893d99e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167265490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea504ea56db912c1834cc08ce1161b9cccc99c97357065e2ee5e28819c3fa61`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:52 GMT
ENV MONO_VERSION=5.4.1.6
# Thu, 15 Feb 2018 06:11:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:12:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 15 Feb 2018 06:44:25 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26282bd8678d87d5751e49f1010baaa507c0cd2009d8c340e6cd9cb6f322f7fa`  
		Last Modified: Thu, 15 Feb 2018 07:18:02 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8174063b54f1162087d1b946efc6119da616fd32b0862fa9df5881a5fd1df794`  
		Last Modified: Thu, 15 Feb 2018 07:18:12 GMT  
		Size: 27.3 MB (27278575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2bf023e05725e5e17098330ecaabbc23aae4618e197690ae2066ecdeb0d2ee`  
		Last Modified: Thu, 15 Feb 2018 07:26:44 GMT  
		Size: 109.9 MB (109862468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4` - linux; arm variant v7

```console
$ docker pull mono@sha256:8fab2a1518e04f12109196a89fa2591f117bc01ee5abcd4a8fd12fb3a109e66a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (147041676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdda3773dfe3f7aa7d781e845ebb2505b06993f035c3998af6b2f024e1c35b13`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:39:27 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 12 Dec 2017 14:39:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:40:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 12 Dec 2017 14:46:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23710a344ee6760b7342ca472bb26f9421156ff324fe5a96de2f0450c85c10f`  
		Last Modified: Tue, 12 Dec 2017 14:49:07 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea55960f594bf57ce8f8ba10b6b29e72cc44a6cdf3df27808c200f325c258bf1`  
		Last Modified: Tue, 12 Dec 2017 14:49:15 GMT  
		Size: 22.0 MB (22035209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b74f680ad16dc3a0219a3b0844435b615ede5416ae17ef48a099f54b1c72f4`  
		Last Modified: Tue, 12 Dec 2017 14:52:47 GMT  
		Size: 98.7 MB (98721690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:46a921aba1dc5dc25649e4255c707db9958ddbedefebec2acb54960b7ab53fb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161650228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0ba2b296cc39a37995ef9554d6daebdca60150c4f755e8abd00cc4da0284c3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:42:14 GMT
ENV MONO_VERSION=5.4.1.6
# Fri, 16 Feb 2018 02:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:46:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Feb 2018 03:04:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ab9ad28f67201909762f32496d9245d2f595498c02ed749c7e444fbd03b879`  
		Last Modified: Fri, 16 Feb 2018 03:05:58 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7b5de49aed9f9ea91b609b9945c9e8f85b22e9130d3b1fa4d81ded1250b3d1`  
		Last Modified: Fri, 16 Feb 2018 03:06:09 GMT  
		Size: 26.2 MB (26198275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16073789fac893fc3f353000e4fe83e26ab4153f4f77454e0d5964255b0aa48`  
		Last Modified: Fri, 16 Feb 2018 03:09:28 GMT  
		Size: 108.0 MB (107961756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4` - linux; 386

```console
$ docker pull mono@sha256:17bccf42a94f0c2feedabc40ab5f0098d23560c9948387eabbec8aea2f85f8d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169654413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43233013d56a6267b22812e2c17b30735af303969ff65c39c56a5c3adc21e5d4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:35:52 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 21 Feb 2018 07:36:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:36:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 21 Feb 2018 07:58:56 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13325bb17a7c5bf15f6cd5c2ea2edd25eaf513eb88681087bb8546954a84fa`  
		Last Modified: Wed, 21 Feb 2018 08:37:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b27874c1243e77489b4bc666802b53271f16e0a2a1d0ab3f2fda2f0cd2a077`  
		Last Modified: Wed, 21 Feb 2018 08:37:42 GMT  
		Size: 29.1 MB (29054103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809a6407ba77826c131ff0941af1faeb13aeb329e2f3e8ab7376c232d92e7244`  
		Last Modified: Wed, 21 Feb 2018 08:49:57 GMT  
		Size: 110.3 MB (110325043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4.1`

```console
$ docker pull mono@sha256:dfa4da71673e9b347286910a69d04e9af5df5c835bbe5227419c1df81f20a300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4.1` - linux; amd64

```console
$ docker pull mono@sha256:97ba65ab792bb36eb1d83dc6828d25abc83db4fe3de1e93c59b4e83f893d99e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167265490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea504ea56db912c1834cc08ce1161b9cccc99c97357065e2ee5e28819c3fa61`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:52 GMT
ENV MONO_VERSION=5.4.1.6
# Thu, 15 Feb 2018 06:11:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:12:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 15 Feb 2018 06:44:25 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26282bd8678d87d5751e49f1010baaa507c0cd2009d8c340e6cd9cb6f322f7fa`  
		Last Modified: Thu, 15 Feb 2018 07:18:02 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8174063b54f1162087d1b946efc6119da616fd32b0862fa9df5881a5fd1df794`  
		Last Modified: Thu, 15 Feb 2018 07:18:12 GMT  
		Size: 27.3 MB (27278575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2bf023e05725e5e17098330ecaabbc23aae4618e197690ae2066ecdeb0d2ee`  
		Last Modified: Thu, 15 Feb 2018 07:26:44 GMT  
		Size: 109.9 MB (109862468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1` - linux; arm variant v7

```console
$ docker pull mono@sha256:8fab2a1518e04f12109196a89fa2591f117bc01ee5abcd4a8fd12fb3a109e66a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (147041676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdda3773dfe3f7aa7d781e845ebb2505b06993f035c3998af6b2f024e1c35b13`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:39:27 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 12 Dec 2017 14:39:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:40:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 12 Dec 2017 14:46:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23710a344ee6760b7342ca472bb26f9421156ff324fe5a96de2f0450c85c10f`  
		Last Modified: Tue, 12 Dec 2017 14:49:07 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea55960f594bf57ce8f8ba10b6b29e72cc44a6cdf3df27808c200f325c258bf1`  
		Last Modified: Tue, 12 Dec 2017 14:49:15 GMT  
		Size: 22.0 MB (22035209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b74f680ad16dc3a0219a3b0844435b615ede5416ae17ef48a099f54b1c72f4`  
		Last Modified: Tue, 12 Dec 2017 14:52:47 GMT  
		Size: 98.7 MB (98721690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:46a921aba1dc5dc25649e4255c707db9958ddbedefebec2acb54960b7ab53fb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161650228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0ba2b296cc39a37995ef9554d6daebdca60150c4f755e8abd00cc4da0284c3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:42:14 GMT
ENV MONO_VERSION=5.4.1.6
# Fri, 16 Feb 2018 02:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:46:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Feb 2018 03:04:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ab9ad28f67201909762f32496d9245d2f595498c02ed749c7e444fbd03b879`  
		Last Modified: Fri, 16 Feb 2018 03:05:58 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7b5de49aed9f9ea91b609b9945c9e8f85b22e9130d3b1fa4d81ded1250b3d1`  
		Last Modified: Fri, 16 Feb 2018 03:06:09 GMT  
		Size: 26.2 MB (26198275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16073789fac893fc3f353000e4fe83e26ab4153f4f77454e0d5964255b0aa48`  
		Last Modified: Fri, 16 Feb 2018 03:09:28 GMT  
		Size: 108.0 MB (107961756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1` - linux; 386

```console
$ docker pull mono@sha256:17bccf42a94f0c2feedabc40ab5f0098d23560c9948387eabbec8aea2f85f8d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169654413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43233013d56a6267b22812e2c17b30735af303969ff65c39c56a5c3adc21e5d4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:35:52 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 21 Feb 2018 07:36:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:36:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 21 Feb 2018 07:58:56 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13325bb17a7c5bf15f6cd5c2ea2edd25eaf513eb88681087bb8546954a84fa`  
		Last Modified: Wed, 21 Feb 2018 08:37:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b27874c1243e77489b4bc666802b53271f16e0a2a1d0ab3f2fda2f0cd2a077`  
		Last Modified: Wed, 21 Feb 2018 08:37:42 GMT  
		Size: 29.1 MB (29054103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809a6407ba77826c131ff0941af1faeb13aeb329e2f3e8ab7376c232d92e7244`  
		Last Modified: Wed, 21 Feb 2018 08:49:57 GMT  
		Size: 110.3 MB (110325043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4.1.6`

```console
$ docker pull mono@sha256:dfa4da71673e9b347286910a69d04e9af5df5c835bbe5227419c1df81f20a300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4.1.6` - linux; amd64

```console
$ docker pull mono@sha256:97ba65ab792bb36eb1d83dc6828d25abc83db4fe3de1e93c59b4e83f893d99e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167265490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea504ea56db912c1834cc08ce1161b9cccc99c97357065e2ee5e28819c3fa61`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:52 GMT
ENV MONO_VERSION=5.4.1.6
# Thu, 15 Feb 2018 06:11:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:12:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 15 Feb 2018 06:44:25 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26282bd8678d87d5751e49f1010baaa507c0cd2009d8c340e6cd9cb6f322f7fa`  
		Last Modified: Thu, 15 Feb 2018 07:18:02 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8174063b54f1162087d1b946efc6119da616fd32b0862fa9df5881a5fd1df794`  
		Last Modified: Thu, 15 Feb 2018 07:18:12 GMT  
		Size: 27.3 MB (27278575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2bf023e05725e5e17098330ecaabbc23aae4618e197690ae2066ecdeb0d2ee`  
		Last Modified: Thu, 15 Feb 2018 07:26:44 GMT  
		Size: 109.9 MB (109862468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1.6` - linux; arm variant v7

```console
$ docker pull mono@sha256:8fab2a1518e04f12109196a89fa2591f117bc01ee5abcd4a8fd12fb3a109e66a
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (147041676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdda3773dfe3f7aa7d781e845ebb2505b06993f035c3998af6b2f024e1c35b13`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:47 GMT
ADD file:1f5de474caa19da14d698a3f9c3d161abfa1e19e258a596d64f3dfc9e2f17686 in / 
# Tue, 12 Dec 2017 13:27:47 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:39:27 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 12 Dec 2017 14:39:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:40:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 12 Dec 2017 14:46:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4b9c0f1a415433a98643bdda391dcf4fe5d9653fc3ed3845c7ac1be99eb43399`  
		Last Modified: Tue, 12 Dec 2017 13:39:52 GMT  
		Size: 26.3 MB (26282714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23710a344ee6760b7342ca472bb26f9421156ff324fe5a96de2f0450c85c10f`  
		Last Modified: Tue, 12 Dec 2017 14:49:07 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea55960f594bf57ce8f8ba10b6b29e72cc44a6cdf3df27808c200f325c258bf1`  
		Last Modified: Tue, 12 Dec 2017 14:49:15 GMT  
		Size: 22.0 MB (22035209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b74f680ad16dc3a0219a3b0844435b615ede5416ae17ef48a099f54b1c72f4`  
		Last Modified: Tue, 12 Dec 2017 14:52:47 GMT  
		Size: 98.7 MB (98721690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1.6` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:46a921aba1dc5dc25649e4255c707db9958ddbedefebec2acb54960b7ab53fb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.7 MB (161650228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0ba2b296cc39a37995ef9554d6daebdca60150c4f755e8abd00cc4da0284c3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:42:14 GMT
ENV MONO_VERSION=5.4.1.6
# Fri, 16 Feb 2018 02:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:46:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Feb 2018 03:04:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ab9ad28f67201909762f32496d9245d2f595498c02ed749c7e444fbd03b879`  
		Last Modified: Fri, 16 Feb 2018 03:05:58 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7b5de49aed9f9ea91b609b9945c9e8f85b22e9130d3b1fa4d81ded1250b3d1`  
		Last Modified: Fri, 16 Feb 2018 03:06:09 GMT  
		Size: 26.2 MB (26198275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16073789fac893fc3f353000e4fe83e26ab4153f4f77454e0d5964255b0aa48`  
		Last Modified: Fri, 16 Feb 2018 03:09:28 GMT  
		Size: 108.0 MB (107961756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1.6` - linux; 386

```console
$ docker pull mono@sha256:17bccf42a94f0c2feedabc40ab5f0098d23560c9948387eabbec8aea2f85f8d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.7 MB (169654413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43233013d56a6267b22812e2c17b30735af303969ff65c39c56a5c3adc21e5d4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:35:52 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 21 Feb 2018 07:36:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:36:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 21 Feb 2018 07:58:56 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13325bb17a7c5bf15f6cd5c2ea2edd25eaf513eb88681087bb8546954a84fa`  
		Last Modified: Wed, 21 Feb 2018 08:37:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b27874c1243e77489b4bc666802b53271f16e0a2a1d0ab3f2fda2f0cd2a077`  
		Last Modified: Wed, 21 Feb 2018 08:37:42 GMT  
		Size: 29.1 MB (29054103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809a6407ba77826c131ff0941af1faeb13aeb329e2f3e8ab7376c232d92e7244`  
		Last Modified: Wed, 21 Feb 2018 08:49:57 GMT  
		Size: 110.3 MB (110325043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4.1.6-slim`

```console
$ docker pull mono@sha256:4774bd6881d51339ebe4a2593f93e6252cd7ce565e4df261b00e88ec778b55a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4.1.6-slim` - linux; amd64

```console
$ docker pull mono@sha256:d32ceccfaea540b22a250675b3bf36ef66678bcf507f1b5fa60ae2718a8f279c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57403022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cc808337c6cbb239c6474660806396c3f2928a5b18a53ad8e3bb14babe7826`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:52 GMT
ENV MONO_VERSION=5.4.1.6
# Thu, 15 Feb 2018 06:11:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:12:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26282bd8678d87d5751e49f1010baaa507c0cd2009d8c340e6cd9cb6f322f7fa`  
		Last Modified: Thu, 15 Feb 2018 07:18:02 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8174063b54f1162087d1b946efc6119da616fd32b0862fa9df5881a5fd1df794`  
		Last Modified: Thu, 15 Feb 2018 07:18:12 GMT  
		Size: 27.3 MB (27278575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1.6-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:919b4650d0a579345f8c0412259d2e6506a5276a4069332cb63514f5c16a57ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48037469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b3d8b4116957e9e5ceff2bfc0c2c285cb51e291a4f98e08ba4e752698b9905`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:30:47 GMT
ENV MONO_VERSION=5.4.1.6
# Thu, 15 Feb 2018 14:30:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 14:31:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e27431d105d2da96344bd20426f596895a92474d4436dfbef4153878b4384f9`  
		Last Modified: Thu, 15 Feb 2018 14:48:26 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9af2fa8536dee55a7b0f2fac56776a32b791939f012f8e0dd877008076efeb`  
		Last Modified: Thu, 15 Feb 2018 14:48:35 GMT  
		Size: 21.7 MB (21745158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1.6-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:278062ca068df94a3a04c0949954a5746d97ab4c38bfbfa4600c43cebbac921b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53688472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f81df57c673e9db55793fdbcfc5e22ee14fcf416f2ab943e1afc046ede786b4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:42:14 GMT
ENV MONO_VERSION=5.4.1.6
# Fri, 16 Feb 2018 02:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:46:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ab9ad28f67201909762f32496d9245d2f595498c02ed749c7e444fbd03b879`  
		Last Modified: Fri, 16 Feb 2018 03:05:58 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7b5de49aed9f9ea91b609b9945c9e8f85b22e9130d3b1fa4d81ded1250b3d1`  
		Last Modified: Fri, 16 Feb 2018 03:06:09 GMT  
		Size: 26.2 MB (26198275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1.6-slim` - linux; 386

```console
$ docker pull mono@sha256:8e700528cb6fd353da4aa008977d6ef770597423b36dc7c0cc5ff153048c0200
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59329370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8876795c0a3f11b961d36090142150fd6ff7baa4960e761776686ed487d1e70b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:35:52 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 21 Feb 2018 07:36:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:36:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13325bb17a7c5bf15f6cd5c2ea2edd25eaf513eb88681087bb8546954a84fa`  
		Last Modified: Wed, 21 Feb 2018 08:37:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b27874c1243e77489b4bc666802b53271f16e0a2a1d0ab3f2fda2f0cd2a077`  
		Last Modified: Wed, 21 Feb 2018 08:37:42 GMT  
		Size: 29.1 MB (29054103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4.1-slim`

```console
$ docker pull mono@sha256:4774bd6881d51339ebe4a2593f93e6252cd7ce565e4df261b00e88ec778b55a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:d32ceccfaea540b22a250675b3bf36ef66678bcf507f1b5fa60ae2718a8f279c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57403022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cc808337c6cbb239c6474660806396c3f2928a5b18a53ad8e3bb14babe7826`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:52 GMT
ENV MONO_VERSION=5.4.1.6
# Thu, 15 Feb 2018 06:11:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:12:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26282bd8678d87d5751e49f1010baaa507c0cd2009d8c340e6cd9cb6f322f7fa`  
		Last Modified: Thu, 15 Feb 2018 07:18:02 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8174063b54f1162087d1b946efc6119da616fd32b0862fa9df5881a5fd1df794`  
		Last Modified: Thu, 15 Feb 2018 07:18:12 GMT  
		Size: 27.3 MB (27278575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:919b4650d0a579345f8c0412259d2e6506a5276a4069332cb63514f5c16a57ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48037469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b3d8b4116957e9e5ceff2bfc0c2c285cb51e291a4f98e08ba4e752698b9905`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:30:47 GMT
ENV MONO_VERSION=5.4.1.6
# Thu, 15 Feb 2018 14:30:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 14:31:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e27431d105d2da96344bd20426f596895a92474d4436dfbef4153878b4384f9`  
		Last Modified: Thu, 15 Feb 2018 14:48:26 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9af2fa8536dee55a7b0f2fac56776a32b791939f012f8e0dd877008076efeb`  
		Last Modified: Thu, 15 Feb 2018 14:48:35 GMT  
		Size: 21.7 MB (21745158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:278062ca068df94a3a04c0949954a5746d97ab4c38bfbfa4600c43cebbac921b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53688472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f81df57c673e9db55793fdbcfc5e22ee14fcf416f2ab943e1afc046ede786b4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:42:14 GMT
ENV MONO_VERSION=5.4.1.6
# Fri, 16 Feb 2018 02:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:46:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ab9ad28f67201909762f32496d9245d2f595498c02ed749c7e444fbd03b879`  
		Last Modified: Fri, 16 Feb 2018 03:05:58 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7b5de49aed9f9ea91b609b9945c9e8f85b22e9130d3b1fa4d81ded1250b3d1`  
		Last Modified: Fri, 16 Feb 2018 03:06:09 GMT  
		Size: 26.2 MB (26198275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1-slim` - linux; 386

```console
$ docker pull mono@sha256:8e700528cb6fd353da4aa008977d6ef770597423b36dc7c0cc5ff153048c0200
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59329370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8876795c0a3f11b961d36090142150fd6ff7baa4960e761776686ed487d1e70b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:35:52 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 21 Feb 2018 07:36:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:36:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13325bb17a7c5bf15f6cd5c2ea2edd25eaf513eb88681087bb8546954a84fa`  
		Last Modified: Wed, 21 Feb 2018 08:37:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b27874c1243e77489b4bc666802b53271f16e0a2a1d0ab3f2fda2f0cd2a077`  
		Last Modified: Wed, 21 Feb 2018 08:37:42 GMT  
		Size: 29.1 MB (29054103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4-slim`

```console
$ docker pull mono@sha256:4774bd6881d51339ebe4a2593f93e6252cd7ce565e4df261b00e88ec778b55a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4-slim` - linux; amd64

```console
$ docker pull mono@sha256:d32ceccfaea540b22a250675b3bf36ef66678bcf507f1b5fa60ae2718a8f279c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57403022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cc808337c6cbb239c6474660806396c3f2928a5b18a53ad8e3bb14babe7826`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:52 GMT
ENV MONO_VERSION=5.4.1.6
# Thu, 15 Feb 2018 06:11:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:12:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26282bd8678d87d5751e49f1010baaa507c0cd2009d8c340e6cd9cb6f322f7fa`  
		Last Modified: Thu, 15 Feb 2018 07:18:02 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8174063b54f1162087d1b946efc6119da616fd32b0862fa9df5881a5fd1df794`  
		Last Modified: Thu, 15 Feb 2018 07:18:12 GMT  
		Size: 27.3 MB (27278575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:919b4650d0a579345f8c0412259d2e6506a5276a4069332cb63514f5c16a57ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48037469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b3d8b4116957e9e5ceff2bfc0c2c285cb51e291a4f98e08ba4e752698b9905`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:30:47 GMT
ENV MONO_VERSION=5.4.1.6
# Thu, 15 Feb 2018 14:30:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 14:31:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e27431d105d2da96344bd20426f596895a92474d4436dfbef4153878b4384f9`  
		Last Modified: Thu, 15 Feb 2018 14:48:26 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9af2fa8536dee55a7b0f2fac56776a32b791939f012f8e0dd877008076efeb`  
		Last Modified: Thu, 15 Feb 2018 14:48:35 GMT  
		Size: 21.7 MB (21745158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:278062ca068df94a3a04c0949954a5746d97ab4c38bfbfa4600c43cebbac921b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53688472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f81df57c673e9db55793fdbcfc5e22ee14fcf416f2ab943e1afc046ede786b4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:42:14 GMT
ENV MONO_VERSION=5.4.1.6
# Fri, 16 Feb 2018 02:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:46:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ab9ad28f67201909762f32496d9245d2f595498c02ed749c7e444fbd03b879`  
		Last Modified: Fri, 16 Feb 2018 03:05:58 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7b5de49aed9f9ea91b609b9945c9e8f85b22e9130d3b1fa4d81ded1250b3d1`  
		Last Modified: Fri, 16 Feb 2018 03:06:09 GMT  
		Size: 26.2 MB (26198275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4-slim` - linux; 386

```console
$ docker pull mono@sha256:8e700528cb6fd353da4aa008977d6ef770597423b36dc7c0cc5ff153048c0200
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59329370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8876795c0a3f11b961d36090142150fd6ff7baa4960e761776686ed487d1e70b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:35:52 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 21 Feb 2018 07:36:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:36:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e13325bb17a7c5bf15f6cd5c2ea2edd25eaf513eb88681087bb8546954a84fa`  
		Last Modified: Wed, 21 Feb 2018 08:37:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b27874c1243e77489b4bc666802b53271f16e0a2a1d0ab3f2fda2f0cd2a077`  
		Last Modified: Wed, 21 Feb 2018 08:37:42 GMT  
		Size: 29.1 MB (29054103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8`

```console
$ docker pull mono@sha256:c1035241748cdaf7fcbf4701f63d1387cc8326502c270ad22a5d2fbb883789e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8` - linux; amd64

```console
$ docker pull mono@sha256:d4454a8b7a055c8f44d2e2934823323938d99a1c08d7f05881cee1fcae6921d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171173315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18dea4a6ab854f08fe030d8a72c11d9f745570a010abf1c4ce5124dea1c279d6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 15 Feb 2018 06:28:22 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d69243595644ce277d0808909ee91fa218c66bee3d49ea2affe3c8b70c533b`  
		Last Modified: Thu, 15 Feb 2018 07:22:32 GMT  
		Size: 113.7 MB (113687237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:5701fe7ddb6c3060c373380103a927378543c9f396fcf1bac7e163eb18952efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165303910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca222bec68504ffff9b876cf17911af2d80ea7c9af0167fd1b940bb88448a21`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:39:49 GMT
ENV MONO_VERSION=5.8.0.108
# Fri, 16 Feb 2018 02:39:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:41:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Feb 2018 02:55:34 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f679fe4bf4099d2b35046f440e9ce7f453917426bbea8d849199b23c1bc900`  
		Last Modified: Fri, 16 Feb 2018 03:04:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959a4b033f1c9c72644b04ad8aae660ba303afa97e9fbe4f6d86375e0f78e454`  
		Last Modified: Fri, 16 Feb 2018 03:04:48 GMT  
		Size: 26.3 MB (26258553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1409bb65372cc7d156826d2558c9f574b46a2768c5337b800ce708da4e6458`  
		Last Modified: Fri, 16 Feb 2018 03:07:38 GMT  
		Size: 111.6 MB (111555161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8` - linux; 386

```console
$ docker pull mono@sha256:8050aa6abe1175704bb39d35954041b758ef30f91f4a070a278096a5f8df9fa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173419346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06961c2b2e1e52b716d39c0adf2d6322111cf6169ddbc769bcae67ddf422c997`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:25:43 GMT
ENV MONO_VERSION=5.8.0.108
# Wed, 21 Feb 2018 07:25:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:26:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 21 Feb 2018 07:44:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c71d75c2d6998bd80a1b1d490d07bea095b79738bd455776ba17dcf28acf17`  
		Last Modified: Wed, 21 Feb 2018 08:11:20 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc118e10670f9e5f9770ca41fa32e6cb7dee2bbce17908548ffdf6531fe256`  
		Last Modified: Wed, 21 Feb 2018 08:11:32 GMT  
		Size: 29.1 MB (29136120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9bda771741f2ccfe96beb2d61a2e46181abe134d2846d2077d51fec812c8c`  
		Last Modified: Wed, 21 Feb 2018 08:46:14 GMT  
		Size: 114.0 MB (114007962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0`

```console
$ docker pull mono@sha256:c1035241748cdaf7fcbf4701f63d1387cc8326502c270ad22a5d2fbb883789e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0` - linux; amd64

```console
$ docker pull mono@sha256:d4454a8b7a055c8f44d2e2934823323938d99a1c08d7f05881cee1fcae6921d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171173315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18dea4a6ab854f08fe030d8a72c11d9f745570a010abf1c4ce5124dea1c279d6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 15 Feb 2018 06:28:22 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d69243595644ce277d0808909ee91fa218c66bee3d49ea2affe3c8b70c533b`  
		Last Modified: Thu, 15 Feb 2018 07:22:32 GMT  
		Size: 113.7 MB (113687237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:5701fe7ddb6c3060c373380103a927378543c9f396fcf1bac7e163eb18952efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165303910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca222bec68504ffff9b876cf17911af2d80ea7c9af0167fd1b940bb88448a21`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:39:49 GMT
ENV MONO_VERSION=5.8.0.108
# Fri, 16 Feb 2018 02:39:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:41:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Feb 2018 02:55:34 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f679fe4bf4099d2b35046f440e9ce7f453917426bbea8d849199b23c1bc900`  
		Last Modified: Fri, 16 Feb 2018 03:04:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959a4b033f1c9c72644b04ad8aae660ba303afa97e9fbe4f6d86375e0f78e454`  
		Last Modified: Fri, 16 Feb 2018 03:04:48 GMT  
		Size: 26.3 MB (26258553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1409bb65372cc7d156826d2558c9f574b46a2768c5337b800ce708da4e6458`  
		Last Modified: Fri, 16 Feb 2018 03:07:38 GMT  
		Size: 111.6 MB (111555161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0` - linux; 386

```console
$ docker pull mono@sha256:8050aa6abe1175704bb39d35954041b758ef30f91f4a070a278096a5f8df9fa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173419346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06961c2b2e1e52b716d39c0adf2d6322111cf6169ddbc769bcae67ddf422c997`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:25:43 GMT
ENV MONO_VERSION=5.8.0.108
# Wed, 21 Feb 2018 07:25:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:26:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 21 Feb 2018 07:44:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c71d75c2d6998bd80a1b1d490d07bea095b79738bd455776ba17dcf28acf17`  
		Last Modified: Wed, 21 Feb 2018 08:11:20 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc118e10670f9e5f9770ca41fa32e6cb7dee2bbce17908548ffdf6531fe256`  
		Last Modified: Wed, 21 Feb 2018 08:11:32 GMT  
		Size: 29.1 MB (29136120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9bda771741f2ccfe96beb2d61a2e46181abe134d2846d2077d51fec812c8c`  
		Last Modified: Wed, 21 Feb 2018 08:46:14 GMT  
		Size: 114.0 MB (114007962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0.108`

```console
$ docker pull mono@sha256:c1035241748cdaf7fcbf4701f63d1387cc8326502c270ad22a5d2fbb883789e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0.108` - linux; amd64

```console
$ docker pull mono@sha256:d4454a8b7a055c8f44d2e2934823323938d99a1c08d7f05881cee1fcae6921d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171173315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18dea4a6ab854f08fe030d8a72c11d9f745570a010abf1c4ce5124dea1c279d6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 15 Feb 2018 06:28:22 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d69243595644ce277d0808909ee91fa218c66bee3d49ea2affe3c8b70c533b`  
		Last Modified: Thu, 15 Feb 2018 07:22:32 GMT  
		Size: 113.7 MB (113687237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.108` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:5701fe7ddb6c3060c373380103a927378543c9f396fcf1bac7e163eb18952efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165303910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca222bec68504ffff9b876cf17911af2d80ea7c9af0167fd1b940bb88448a21`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:39:49 GMT
ENV MONO_VERSION=5.8.0.108
# Fri, 16 Feb 2018 02:39:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:41:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Feb 2018 02:55:34 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f679fe4bf4099d2b35046f440e9ce7f453917426bbea8d849199b23c1bc900`  
		Last Modified: Fri, 16 Feb 2018 03:04:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959a4b033f1c9c72644b04ad8aae660ba303afa97e9fbe4f6d86375e0f78e454`  
		Last Modified: Fri, 16 Feb 2018 03:04:48 GMT  
		Size: 26.3 MB (26258553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1409bb65372cc7d156826d2558c9f574b46a2768c5337b800ce708da4e6458`  
		Last Modified: Fri, 16 Feb 2018 03:07:38 GMT  
		Size: 111.6 MB (111555161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.108` - linux; 386

```console
$ docker pull mono@sha256:8050aa6abe1175704bb39d35954041b758ef30f91f4a070a278096a5f8df9fa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173419346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06961c2b2e1e52b716d39c0adf2d6322111cf6169ddbc769bcae67ddf422c997`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:25:43 GMT
ENV MONO_VERSION=5.8.0.108
# Wed, 21 Feb 2018 07:25:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:26:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 21 Feb 2018 07:44:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c71d75c2d6998bd80a1b1d490d07bea095b79738bd455776ba17dcf28acf17`  
		Last Modified: Wed, 21 Feb 2018 08:11:20 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc118e10670f9e5f9770ca41fa32e6cb7dee2bbce17908548ffdf6531fe256`  
		Last Modified: Wed, 21 Feb 2018 08:11:32 GMT  
		Size: 29.1 MB (29136120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9bda771741f2ccfe96beb2d61a2e46181abe134d2846d2077d51fec812c8c`  
		Last Modified: Wed, 21 Feb 2018 08:46:14 GMT  
		Size: 114.0 MB (114007962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0.108-slim`

```console
$ docker pull mono@sha256:337037d0e1d9659dad452756240893291a442cf55cdc89d06416b8bb46eff238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0.108-slim` - linux; amd64

```console
$ docker pull mono@sha256:8a136b1ada1404f130c07ebbfe1e0ffe04bc602ca9da75cfc9356af95b313efd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57486078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750609e2af595e1874bb31f6ca8ba1cf93c791d8ccccdc5c485ddecaa6a0b70c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.108-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c397df2720a2f160e1796e9588b3ddefb2389b57fc3a93f0a08a5b7807273a34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48084143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6581f502848e1b85ed77a6b1fce53b779f53ba38bcc57a460f6393cec67c3774`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:29:21 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 14:29:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 14:30:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174dc83a5977d06eb34a9c8beb8af53efb0dc8ededb68a89249b46ee2d35bd40`  
		Last Modified: Thu, 15 Feb 2018 14:47:22 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4b90191ab730658fd69b6ce3f08563be814b72c8f2a034b61029313d7bfaa9`  
		Last Modified: Thu, 15 Feb 2018 14:47:30 GMT  
		Size: 21.8 MB (21791832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.108-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:3c15682b75fc5383d9ea11952e8da0dfe37ff258db9d91e08e8a1d6c588d7a72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79224098716f012f08ce3faca7b1057ccc0248ee86b0c6ab9b5a01e23e23f3f3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:39:49 GMT
ENV MONO_VERSION=5.8.0.108
# Fri, 16 Feb 2018 02:39:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:41:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f679fe4bf4099d2b35046f440e9ce7f453917426bbea8d849199b23c1bc900`  
		Last Modified: Fri, 16 Feb 2018 03:04:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959a4b033f1c9c72644b04ad8aae660ba303afa97e9fbe4f6d86375e0f78e454`  
		Last Modified: Fri, 16 Feb 2018 03:04:48 GMT  
		Size: 26.3 MB (26258553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.108-slim` - linux; 386

```console
$ docker pull mono@sha256:f04e72e80a23644853a16f0f0535e4277e5fd33d3fcc56adf6775521887ed059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59411384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ef6fc3ac8630c48fda024d0641b11c2490ee09c055e304a82e423620fb21c1`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:25:43 GMT
ENV MONO_VERSION=5.8.0.108
# Wed, 21 Feb 2018 07:25:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:26:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c71d75c2d6998bd80a1b1d490d07bea095b79738bd455776ba17dcf28acf17`  
		Last Modified: Wed, 21 Feb 2018 08:11:20 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc118e10670f9e5f9770ca41fa32e6cb7dee2bbce17908548ffdf6531fe256`  
		Last Modified: Wed, 21 Feb 2018 08:11:32 GMT  
		Size: 29.1 MB (29136120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0-slim`

```console
$ docker pull mono@sha256:337037d0e1d9659dad452756240893291a442cf55cdc89d06416b8bb46eff238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:8a136b1ada1404f130c07ebbfe1e0ffe04bc602ca9da75cfc9356af95b313efd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57486078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750609e2af595e1874bb31f6ca8ba1cf93c791d8ccccdc5c485ddecaa6a0b70c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c397df2720a2f160e1796e9588b3ddefb2389b57fc3a93f0a08a5b7807273a34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48084143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6581f502848e1b85ed77a6b1fce53b779f53ba38bcc57a460f6393cec67c3774`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:29:21 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 14:29:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 14:30:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174dc83a5977d06eb34a9c8beb8af53efb0dc8ededb68a89249b46ee2d35bd40`  
		Last Modified: Thu, 15 Feb 2018 14:47:22 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4b90191ab730658fd69b6ce3f08563be814b72c8f2a034b61029313d7bfaa9`  
		Last Modified: Thu, 15 Feb 2018 14:47:30 GMT  
		Size: 21.8 MB (21791832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:3c15682b75fc5383d9ea11952e8da0dfe37ff258db9d91e08e8a1d6c588d7a72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79224098716f012f08ce3faca7b1057ccc0248ee86b0c6ab9b5a01e23e23f3f3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:39:49 GMT
ENV MONO_VERSION=5.8.0.108
# Fri, 16 Feb 2018 02:39:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:41:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f679fe4bf4099d2b35046f440e9ce7f453917426bbea8d849199b23c1bc900`  
		Last Modified: Fri, 16 Feb 2018 03:04:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959a4b033f1c9c72644b04ad8aae660ba303afa97e9fbe4f6d86375e0f78e454`  
		Last Modified: Fri, 16 Feb 2018 03:04:48 GMT  
		Size: 26.3 MB (26258553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0-slim` - linux; 386

```console
$ docker pull mono@sha256:f04e72e80a23644853a16f0f0535e4277e5fd33d3fcc56adf6775521887ed059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59411384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ef6fc3ac8630c48fda024d0641b11c2490ee09c055e304a82e423620fb21c1`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:25:43 GMT
ENV MONO_VERSION=5.8.0.108
# Wed, 21 Feb 2018 07:25:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:26:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c71d75c2d6998bd80a1b1d490d07bea095b79738bd455776ba17dcf28acf17`  
		Last Modified: Wed, 21 Feb 2018 08:11:20 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc118e10670f9e5f9770ca41fa32e6cb7dee2bbce17908548ffdf6531fe256`  
		Last Modified: Wed, 21 Feb 2018 08:11:32 GMT  
		Size: 29.1 MB (29136120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8-slim`

```console
$ docker pull mono@sha256:337037d0e1d9659dad452756240893291a442cf55cdc89d06416b8bb46eff238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8-slim` - linux; amd64

```console
$ docker pull mono@sha256:8a136b1ada1404f130c07ebbfe1e0ffe04bc602ca9da75cfc9356af95b313efd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57486078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750609e2af595e1874bb31f6ca8ba1cf93c791d8ccccdc5c485ddecaa6a0b70c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c397df2720a2f160e1796e9588b3ddefb2389b57fc3a93f0a08a5b7807273a34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48084143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6581f502848e1b85ed77a6b1fce53b779f53ba38bcc57a460f6393cec67c3774`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:29:21 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 14:29:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 14:30:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174dc83a5977d06eb34a9c8beb8af53efb0dc8ededb68a89249b46ee2d35bd40`  
		Last Modified: Thu, 15 Feb 2018 14:47:22 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4b90191ab730658fd69b6ce3f08563be814b72c8f2a034b61029313d7bfaa9`  
		Last Modified: Thu, 15 Feb 2018 14:47:30 GMT  
		Size: 21.8 MB (21791832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:3c15682b75fc5383d9ea11952e8da0dfe37ff258db9d91e08e8a1d6c588d7a72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79224098716f012f08ce3faca7b1057ccc0248ee86b0c6ab9b5a01e23e23f3f3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:39:49 GMT
ENV MONO_VERSION=5.8.0.108
# Fri, 16 Feb 2018 02:39:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:41:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f679fe4bf4099d2b35046f440e9ce7f453917426bbea8d849199b23c1bc900`  
		Last Modified: Fri, 16 Feb 2018 03:04:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959a4b033f1c9c72644b04ad8aae660ba303afa97e9fbe4f6d86375e0f78e454`  
		Last Modified: Fri, 16 Feb 2018 03:04:48 GMT  
		Size: 26.3 MB (26258553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8-slim` - linux; 386

```console
$ docker pull mono@sha256:f04e72e80a23644853a16f0f0535e4277e5fd33d3fcc56adf6775521887ed059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59411384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ef6fc3ac8630c48fda024d0641b11c2490ee09c055e304a82e423620fb21c1`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:25:43 GMT
ENV MONO_VERSION=5.8.0.108
# Wed, 21 Feb 2018 07:25:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:26:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c71d75c2d6998bd80a1b1d490d07bea095b79738bd455776ba17dcf28acf17`  
		Last Modified: Wed, 21 Feb 2018 08:11:20 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc118e10670f9e5f9770ca41fa32e6cb7dee2bbce17908548ffdf6531fe256`  
		Last Modified: Wed, 21 Feb 2018 08:11:32 GMT  
		Size: 29.1 MB (29136120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:337037d0e1d9659dad452756240893291a442cf55cdc89d06416b8bb46eff238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:8a136b1ada1404f130c07ebbfe1e0ffe04bc602ca9da75cfc9356af95b313efd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57486078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750609e2af595e1874bb31f6ca8ba1cf93c791d8ccccdc5c485ddecaa6a0b70c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c397df2720a2f160e1796e9588b3ddefb2389b57fc3a93f0a08a5b7807273a34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48084143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6581f502848e1b85ed77a6b1fce53b779f53ba38bcc57a460f6393cec67c3774`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:29:21 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 14:29:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 14:30:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174dc83a5977d06eb34a9c8beb8af53efb0dc8ededb68a89249b46ee2d35bd40`  
		Last Modified: Thu, 15 Feb 2018 14:47:22 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4b90191ab730658fd69b6ce3f08563be814b72c8f2a034b61029313d7bfaa9`  
		Last Modified: Thu, 15 Feb 2018 14:47:30 GMT  
		Size: 21.8 MB (21791832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:3c15682b75fc5383d9ea11952e8da0dfe37ff258db9d91e08e8a1d6c588d7a72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79224098716f012f08ce3faca7b1057ccc0248ee86b0c6ab9b5a01e23e23f3f3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:39:49 GMT
ENV MONO_VERSION=5.8.0.108
# Fri, 16 Feb 2018 02:39:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:41:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f679fe4bf4099d2b35046f440e9ce7f453917426bbea8d849199b23c1bc900`  
		Last Modified: Fri, 16 Feb 2018 03:04:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959a4b033f1c9c72644b04ad8aae660ba303afa97e9fbe4f6d86375e0f78e454`  
		Last Modified: Fri, 16 Feb 2018 03:04:48 GMT  
		Size: 26.3 MB (26258553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:f04e72e80a23644853a16f0f0535e4277e5fd33d3fcc56adf6775521887ed059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59411384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ef6fc3ac8630c48fda024d0641b11c2490ee09c055e304a82e423620fb21c1`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:25:43 GMT
ENV MONO_VERSION=5.8.0.108
# Wed, 21 Feb 2018 07:25:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:26:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c71d75c2d6998bd80a1b1d490d07bea095b79738bd455776ba17dcf28acf17`  
		Last Modified: Wed, 21 Feb 2018 08:11:20 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc118e10670f9e5f9770ca41fa32e6cb7dee2bbce17908548ffdf6531fe256`  
		Last Modified: Wed, 21 Feb 2018 08:11:32 GMT  
		Size: 29.1 MB (29136120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:c1035241748cdaf7fcbf4701f63d1387cc8326502c270ad22a5d2fbb883789e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:d4454a8b7a055c8f44d2e2934823323938d99a1c08d7f05881cee1fcae6921d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171173315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18dea4a6ab854f08fe030d8a72c11d9f745570a010abf1c4ce5124dea1c279d6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 15 Feb 2018 06:28:22 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d69243595644ce277d0808909ee91fa218c66bee3d49ea2affe3c8b70c533b`  
		Last Modified: Thu, 15 Feb 2018 07:22:32 GMT  
		Size: 113.7 MB (113687237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:5701fe7ddb6c3060c373380103a927378543c9f396fcf1bac7e163eb18952efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165303910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca222bec68504ffff9b876cf17911af2d80ea7c9af0167fd1b940bb88448a21`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:39:49 GMT
ENV MONO_VERSION=5.8.0.108
# Fri, 16 Feb 2018 02:39:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:41:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Feb 2018 02:55:34 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f679fe4bf4099d2b35046f440e9ce7f453917426bbea8d849199b23c1bc900`  
		Last Modified: Fri, 16 Feb 2018 03:04:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959a4b033f1c9c72644b04ad8aae660ba303afa97e9fbe4f6d86375e0f78e454`  
		Last Modified: Fri, 16 Feb 2018 03:04:48 GMT  
		Size: 26.3 MB (26258553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1409bb65372cc7d156826d2558c9f574b46a2768c5337b800ce708da4e6458`  
		Last Modified: Fri, 16 Feb 2018 03:07:38 GMT  
		Size: 111.6 MB (111555161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:8050aa6abe1175704bb39d35954041b758ef30f91f4a070a278096a5f8df9fa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.4 MB (173419346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06961c2b2e1e52b716d39c0adf2d6322111cf6169ddbc769bcae67ddf422c997`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:25:43 GMT
ENV MONO_VERSION=5.8.0.108
# Wed, 21 Feb 2018 07:25:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:26:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 21 Feb 2018 07:44:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c71d75c2d6998bd80a1b1d490d07bea095b79738bd455776ba17dcf28acf17`  
		Last Modified: Wed, 21 Feb 2018 08:11:20 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc118e10670f9e5f9770ca41fa32e6cb7dee2bbce17908548ffdf6531fe256`  
		Last Modified: Wed, 21 Feb 2018 08:11:32 GMT  
		Size: 29.1 MB (29136120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9bda771741f2ccfe96beb2d61a2e46181abe134d2846d2077d51fec812c8c`  
		Last Modified: Wed, 21 Feb 2018 08:46:14 GMT  
		Size: 114.0 MB (114007962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:337037d0e1d9659dad452756240893291a442cf55cdc89d06416b8bb46eff238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:8a136b1ada1404f130c07ebbfe1e0ffe04bc602ca9da75cfc9356af95b313efd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57486078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750609e2af595e1874bb31f6ca8ba1cf93c791d8ccccdc5c485ddecaa6a0b70c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c397df2720a2f160e1796e9588b3ddefb2389b57fc3a93f0a08a5b7807273a34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48084143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6581f502848e1b85ed77a6b1fce53b779f53ba38bcc57a460f6393cec67c3774`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:29:21 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 14:29:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 14:30:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174dc83a5977d06eb34a9c8beb8af53efb0dc8ededb68a89249b46ee2d35bd40`  
		Last Modified: Thu, 15 Feb 2018 14:47:22 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4b90191ab730658fd69b6ce3f08563be814b72c8f2a034b61029313d7bfaa9`  
		Last Modified: Thu, 15 Feb 2018 14:47:30 GMT  
		Size: 21.8 MB (21791832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:3c15682b75fc5383d9ea11952e8da0dfe37ff258db9d91e08e8a1d6c588d7a72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79224098716f012f08ce3faca7b1057ccc0248ee86b0c6ab9b5a01e23e23f3f3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 02:39:49 GMT
ENV MONO_VERSION=5.8.0.108
# Fri, 16 Feb 2018 02:39:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Feb 2018 02:41:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f679fe4bf4099d2b35046f440e9ce7f453917426bbea8d849199b23c1bc900`  
		Last Modified: Fri, 16 Feb 2018 03:04:35 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959a4b033f1c9c72644b04ad8aae660ba303afa97e9fbe4f6d86375e0f78e454`  
		Last Modified: Fri, 16 Feb 2018 03:04:48 GMT  
		Size: 26.3 MB (26258553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:f04e72e80a23644853a16f0f0535e4277e5fd33d3fcc56adf6775521887ed059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59411384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ef6fc3ac8630c48fda024d0641b11c2490ee09c055e304a82e423620fb21c1`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 07:25:43 GMT
ENV MONO_VERSION=5.8.0.108
# Wed, 21 Feb 2018 07:25:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 21 Feb 2018 07:26:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c71d75c2d6998bd80a1b1d490d07bea095b79738bd455776ba17dcf28acf17`  
		Last Modified: Wed, 21 Feb 2018 08:11:20 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc118e10670f9e5f9770ca41fa32e6cb7dee2bbce17908548ffdf6531fe256`  
		Last Modified: Wed, 21 Feb 2018 08:11:32 GMT  
		Size: 29.1 MB (29136120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

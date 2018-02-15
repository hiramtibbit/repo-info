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
$ docker pull mono@sha256:8c7aa65f21629658427345c529a95fdc2aa173bb56ec1a1cd40d2635ae75bf38
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
$ docker pull mono@sha256:db0d754eba3f44279760bf2b55794b7a45566949fa3a1b5bb56ef27af94cf282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153036160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db8f88bc9814464e209217aae1633da9956b0d6940d1a92c66a33ef1ae6ca11`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:43:45 GMT
ADD file:1ef271fafe70405fd17417a29b02b0245708b5a9acd0d979e7c8ed32371cf210 in / 
# Tue, 12 Dec 2017 14:43:45 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:59:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 17:59:05 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 17:59:23 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 18:00:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:20f7e6bd30947be27e2a6eed841278c2fcff0db722334016a488feae3ae65859`  
		Last Modified: Tue, 12 Dec 2017 15:09:23 GMT  
		Size: 37.4 MB (37439308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1650103aade5b07ff061d4d461d785e4e4f1ce5fa8bd96ba585a8a1c83c009`  
		Last Modified: Tue, 12 Dec 2017 18:26:59 GMT  
		Size: 9.6 MB (9606930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a3f3609769e4bcf59d24717d44a27e02d29112d45acad345bbbc94eafe3858`  
		Last Modified: Tue, 12 Dec 2017 18:26:57 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279a80ba1db01c1622638bbbfec43852810704f86f0b2373b898c1fee091cc66`  
		Last Modified: Tue, 12 Dec 2017 18:27:38 GMT  
		Size: 106.0 MB (105960016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:8c7aa65f21629658427345c529a95fdc2aa173bb56ec1a1cd40d2635ae75bf38
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
$ docker pull mono@sha256:db0d754eba3f44279760bf2b55794b7a45566949fa3a1b5bb56ef27af94cf282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153036160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db8f88bc9814464e209217aae1633da9956b0d6940d1a92c66a33ef1ae6ca11`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:43:45 GMT
ADD file:1ef271fafe70405fd17417a29b02b0245708b5a9acd0d979e7c8ed32371cf210 in / 
# Tue, 12 Dec 2017 14:43:45 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:59:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 17:59:05 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 17:59:23 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 18:00:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:20f7e6bd30947be27e2a6eed841278c2fcff0db722334016a488feae3ae65859`  
		Last Modified: Tue, 12 Dec 2017 15:09:23 GMT  
		Size: 37.4 MB (37439308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1650103aade5b07ff061d4d461d785e4e4f1ce5fa8bd96ba585a8a1c83c009`  
		Last Modified: Tue, 12 Dec 2017 18:26:59 GMT  
		Size: 9.6 MB (9606930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a3f3609769e4bcf59d24717d44a27e02d29112d45acad345bbbc94eafe3858`  
		Last Modified: Tue, 12 Dec 2017 18:26:57 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279a80ba1db01c1622638bbbfec43852810704f86f0b2373b898c1fee091cc66`  
		Last Modified: Tue, 12 Dec 2017 18:27:38 GMT  
		Size: 106.0 MB (105960016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:8c7aa65f21629658427345c529a95fdc2aa173bb56ec1a1cd40d2635ae75bf38
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
$ docker pull mono@sha256:db0d754eba3f44279760bf2b55794b7a45566949fa3a1b5bb56ef27af94cf282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153036160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db8f88bc9814464e209217aae1633da9956b0d6940d1a92c66a33ef1ae6ca11`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:43:45 GMT
ADD file:1ef271fafe70405fd17417a29b02b0245708b5a9acd0d979e7c8ed32371cf210 in / 
# Tue, 12 Dec 2017 14:43:45 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:59:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 17:59:05 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 17:59:23 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 18:00:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:20f7e6bd30947be27e2a6eed841278c2fcff0db722334016a488feae3ae65859`  
		Last Modified: Tue, 12 Dec 2017 15:09:23 GMT  
		Size: 37.4 MB (37439308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1650103aade5b07ff061d4d461d785e4e4f1ce5fa8bd96ba585a8a1c83c009`  
		Last Modified: Tue, 12 Dec 2017 18:26:59 GMT  
		Size: 9.6 MB (9606930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a3f3609769e4bcf59d24717d44a27e02d29112d45acad345bbbc94eafe3858`  
		Last Modified: Tue, 12 Dec 2017 18:26:57 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279a80ba1db01c1622638bbbfec43852810704f86f0b2373b898c1fee091cc66`  
		Last Modified: Tue, 12 Dec 2017 18:27:38 GMT  
		Size: 106.0 MB (105960016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:8c7aa65f21629658427345c529a95fdc2aa173bb56ec1a1cd40d2635ae75bf38
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
$ docker pull mono@sha256:db0d754eba3f44279760bf2b55794b7a45566949fa3a1b5bb56ef27af94cf282
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153036160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db8f88bc9814464e209217aae1633da9956b0d6940d1a92c66a33ef1ae6ca11`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:43:45 GMT
ADD file:1ef271fafe70405fd17417a29b02b0245708b5a9acd0d979e7c8ed32371cf210 in / 
# Tue, 12 Dec 2017 14:43:45 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:59:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 17:59:05 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 17:59:23 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 18:00:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:20f7e6bd30947be27e2a6eed841278c2fcff0db722334016a488feae3ae65859`  
		Last Modified: Tue, 12 Dec 2017 15:09:23 GMT  
		Size: 37.4 MB (37439308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1650103aade5b07ff061d4d461d785e4e4f1ce5fa8bd96ba585a8a1c83c009`  
		Last Modified: Tue, 12 Dec 2017 18:26:59 GMT  
		Size: 9.6 MB (9606930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a3f3609769e4bcf59d24717d44a27e02d29112d45acad345bbbc94eafe3858`  
		Last Modified: Tue, 12 Dec 2017 18:26:57 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279a80ba1db01c1622638bbbfec43852810704f86f0b2373b898c1fee091cc66`  
		Last Modified: Tue, 12 Dec 2017 18:27:38 GMT  
		Size: 106.0 MB (105960016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:625d4c7189f5f5357760ab467f0c1ed51023c9ae9a04291a79ad52008160cfc5
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
$ docker pull mono@sha256:b510028e539a1b97b76bb6a4b39f92012d9591eb7df12f06a2ffabe9af45bdbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160245090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d1bb3f480eb69031a347324bdaeffd2f37611bd3bfac1a2ed9e586ca13774`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 20:52:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c6004f64c60ef7c1c309c891ac02bd8b927cd386ca76a4d82d16fceea1168`  
		Last Modified: Sat, 03 Feb 2018 20:54:56 GMT  
		Size: 106.6 MB (106564340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:35d400599540382dc6f774aa1ff1e6f170eea00de5f990094f2e52fc37e3e674
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168260413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2176960fa66c73bafc98d18d8c0521c7e222546085e745d47f0e13256c90c68d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 02:19:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5142169cf7291b38fc239a98a12aab5ebaf9d222ebc05835dcc68432ddc5b65`  
		Last Modified: Sat, 03 Feb 2018 02:33:10 GMT  
		Size: 108.9 MB (108937825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4`

```console
$ docker pull mono@sha256:fcfea8b4a78e9e80785d02c51b71ef10fb5a24dc8a23e7192c1b51e9e7a8d789
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
$ docker pull mono@sha256:f21bf8ed83f925d9e132c0a47fe9beb84147f7cde8de44a830f9c3994597a018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.6 MB (161643252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b03ce32f100ddcdddde9c76e2c8600daebbc97439b578e6fc15f194b44c9e3d1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:45:32 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 19 Dec 2017 20:45:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Dec 2017 20:47:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Dec 2017 21:01:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ce6615db16f4cfe4b22a6a602fe3b31c8e28395ba334b0f438c6713420ce3`  
		Last Modified: Tue, 19 Dec 2017 21:08:02 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5bec5b951c7ad02dd43a069a9bf85e671ecc66753eef62304e3df0007961f`  
		Last Modified: Tue, 19 Dec 2017 21:08:12 GMT  
		Size: 26.2 MB (26198668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e575b31fbecea03eae377dd28d3e158a9d6cce11caede5a1e9004623d2de9c71`  
		Last Modified: Tue, 19 Dec 2017 21:09:59 GMT  
		Size: 108.0 MB (107961933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4` - linux; 386

```console
$ docker pull mono@sha256:070619e09fb7de389a3115d7e6c492c5a5a66da0b4834f39d45a1e84d22c0791
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169642464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060ef740540f96f66cac4d9e67e331d77f0fa203a0e8b2abe05559fb480bb422`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:55:56 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 12 Dec 2017 17:56:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 17:56:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 12 Dec 2017 18:08:20 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d88182ed5a1ac17e960e66bb28707912cc1e88fcaee14b1dcc910abd649242`  
		Last Modified: Tue, 12 Dec 2017 18:21:45 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f14e0bd6888e50cc238421beda1beef918515c979e6ca2d5df83ff0f256bed7`  
		Last Modified: Tue, 12 Dec 2017 18:21:56 GMT  
		Size: 29.1 MB (29054563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8a7cffae7d0344689e677d12b0e9b2f6ab94fe6f400614789d0db4d7207f12`  
		Last Modified: Tue, 12 Dec 2017 18:34:58 GMT  
		Size: 110.3 MB (110319575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4.1`

```console
$ docker pull mono@sha256:fcfea8b4a78e9e80785d02c51b71ef10fb5a24dc8a23e7192c1b51e9e7a8d789
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
$ docker pull mono@sha256:f21bf8ed83f925d9e132c0a47fe9beb84147f7cde8de44a830f9c3994597a018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.6 MB (161643252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b03ce32f100ddcdddde9c76e2c8600daebbc97439b578e6fc15f194b44c9e3d1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:45:32 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 19 Dec 2017 20:45:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Dec 2017 20:47:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Dec 2017 21:01:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ce6615db16f4cfe4b22a6a602fe3b31c8e28395ba334b0f438c6713420ce3`  
		Last Modified: Tue, 19 Dec 2017 21:08:02 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5bec5b951c7ad02dd43a069a9bf85e671ecc66753eef62304e3df0007961f`  
		Last Modified: Tue, 19 Dec 2017 21:08:12 GMT  
		Size: 26.2 MB (26198668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e575b31fbecea03eae377dd28d3e158a9d6cce11caede5a1e9004623d2de9c71`  
		Last Modified: Tue, 19 Dec 2017 21:09:59 GMT  
		Size: 108.0 MB (107961933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1` - linux; 386

```console
$ docker pull mono@sha256:070619e09fb7de389a3115d7e6c492c5a5a66da0b4834f39d45a1e84d22c0791
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169642464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060ef740540f96f66cac4d9e67e331d77f0fa203a0e8b2abe05559fb480bb422`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:55:56 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 12 Dec 2017 17:56:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 17:56:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 12 Dec 2017 18:08:20 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d88182ed5a1ac17e960e66bb28707912cc1e88fcaee14b1dcc910abd649242`  
		Last Modified: Tue, 12 Dec 2017 18:21:45 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f14e0bd6888e50cc238421beda1beef918515c979e6ca2d5df83ff0f256bed7`  
		Last Modified: Tue, 12 Dec 2017 18:21:56 GMT  
		Size: 29.1 MB (29054563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8a7cffae7d0344689e677d12b0e9b2f6ab94fe6f400614789d0db4d7207f12`  
		Last Modified: Tue, 12 Dec 2017 18:34:58 GMT  
		Size: 110.3 MB (110319575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4.1.6`

```console
$ docker pull mono@sha256:fcfea8b4a78e9e80785d02c51b71ef10fb5a24dc8a23e7192c1b51e9e7a8d789
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
$ docker pull mono@sha256:f21bf8ed83f925d9e132c0a47fe9beb84147f7cde8de44a830f9c3994597a018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.6 MB (161643252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b03ce32f100ddcdddde9c76e2c8600daebbc97439b578e6fc15f194b44c9e3d1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:45:32 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 19 Dec 2017 20:45:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Dec 2017 20:47:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Dec 2017 21:01:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ce6615db16f4cfe4b22a6a602fe3b31c8e28395ba334b0f438c6713420ce3`  
		Last Modified: Tue, 19 Dec 2017 21:08:02 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5bec5b951c7ad02dd43a069a9bf85e671ecc66753eef62304e3df0007961f`  
		Last Modified: Tue, 19 Dec 2017 21:08:12 GMT  
		Size: 26.2 MB (26198668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e575b31fbecea03eae377dd28d3e158a9d6cce11caede5a1e9004623d2de9c71`  
		Last Modified: Tue, 19 Dec 2017 21:09:59 GMT  
		Size: 108.0 MB (107961933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1.6` - linux; 386

```console
$ docker pull mono@sha256:070619e09fb7de389a3115d7e6c492c5a5a66da0b4834f39d45a1e84d22c0791
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169642464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:060ef740540f96f66cac4d9e67e331d77f0fa203a0e8b2abe05559fb480bb422`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:55:56 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 12 Dec 2017 17:56:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 17:56:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 12 Dec 2017 18:08:20 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d88182ed5a1ac17e960e66bb28707912cc1e88fcaee14b1dcc910abd649242`  
		Last Modified: Tue, 12 Dec 2017 18:21:45 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f14e0bd6888e50cc238421beda1beef918515c979e6ca2d5df83ff0f256bed7`  
		Last Modified: Tue, 12 Dec 2017 18:21:56 GMT  
		Size: 29.1 MB (29054563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8a7cffae7d0344689e677d12b0e9b2f6ab94fe6f400614789d0db4d7207f12`  
		Last Modified: Tue, 12 Dec 2017 18:34:58 GMT  
		Size: 110.3 MB (110319575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4.1.6-slim`

```console
$ docker pull mono@sha256:712ff7b050bd3cf33bd0140b3dc475b6c64d2dadbce2f41f597c052cf0b1c27b
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
$ docker pull mono@sha256:bdd9c908d3b7cd3afa8e78e1a8ebceea5a62f4920dc285aedca476c24c8a85f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53681319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fde501269c4b3c9d766f7481bc542ec198789ee3c4bad7d20b1670776dd3039`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:45:32 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 19 Dec 2017 20:45:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Dec 2017 20:47:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ce6615db16f4cfe4b22a6a602fe3b31c8e28395ba334b0f438c6713420ce3`  
		Last Modified: Tue, 19 Dec 2017 21:08:02 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5bec5b951c7ad02dd43a069a9bf85e671ecc66753eef62304e3df0007961f`  
		Last Modified: Tue, 19 Dec 2017 21:08:12 GMT  
		Size: 26.2 MB (26198668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1.6-slim` - linux; 386

```console
$ docker pull mono@sha256:6ed22fadbe01fde47baef8847672e613af67653e9fc7d5b19b16434dc28cd050
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59322889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4406ccb0e42aee44d1e23ce49ca4428868229744c8eadad83cae9a16dc195486`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:55:56 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 12 Dec 2017 17:56:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 17:56:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d88182ed5a1ac17e960e66bb28707912cc1e88fcaee14b1dcc910abd649242`  
		Last Modified: Tue, 12 Dec 2017 18:21:45 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f14e0bd6888e50cc238421beda1beef918515c979e6ca2d5df83ff0f256bed7`  
		Last Modified: Tue, 12 Dec 2017 18:21:56 GMT  
		Size: 29.1 MB (29054563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4.1-slim`

```console
$ docker pull mono@sha256:712ff7b050bd3cf33bd0140b3dc475b6c64d2dadbce2f41f597c052cf0b1c27b
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
$ docker pull mono@sha256:bdd9c908d3b7cd3afa8e78e1a8ebceea5a62f4920dc285aedca476c24c8a85f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53681319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fde501269c4b3c9d766f7481bc542ec198789ee3c4bad7d20b1670776dd3039`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:45:32 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 19 Dec 2017 20:45:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Dec 2017 20:47:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ce6615db16f4cfe4b22a6a602fe3b31c8e28395ba334b0f438c6713420ce3`  
		Last Modified: Tue, 19 Dec 2017 21:08:02 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5bec5b951c7ad02dd43a069a9bf85e671ecc66753eef62304e3df0007961f`  
		Last Modified: Tue, 19 Dec 2017 21:08:12 GMT  
		Size: 26.2 MB (26198668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4.1-slim` - linux; 386

```console
$ docker pull mono@sha256:6ed22fadbe01fde47baef8847672e613af67653e9fc7d5b19b16434dc28cd050
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59322889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4406ccb0e42aee44d1e23ce49ca4428868229744c8eadad83cae9a16dc195486`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:55:56 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 12 Dec 2017 17:56:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 17:56:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d88182ed5a1ac17e960e66bb28707912cc1e88fcaee14b1dcc910abd649242`  
		Last Modified: Tue, 12 Dec 2017 18:21:45 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f14e0bd6888e50cc238421beda1beef918515c979e6ca2d5df83ff0f256bed7`  
		Last Modified: Tue, 12 Dec 2017 18:21:56 GMT  
		Size: 29.1 MB (29054563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4-slim`

```console
$ docker pull mono@sha256:712ff7b050bd3cf33bd0140b3dc475b6c64d2dadbce2f41f597c052cf0b1c27b
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
$ docker pull mono@sha256:bdd9c908d3b7cd3afa8e78e1a8ebceea5a62f4920dc285aedca476c24c8a85f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53681319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fde501269c4b3c9d766f7481bc542ec198789ee3c4bad7d20b1670776dd3039`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Tue, 19 Dec 2017 20:45:32 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 19 Dec 2017 20:45:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Dec 2017 20:47:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34ce6615db16f4cfe4b22a6a602fe3b31c8e28395ba334b0f438c6713420ce3`  
		Last Modified: Tue, 19 Dec 2017 21:08:02 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f5bec5b951c7ad02dd43a069a9bf85e671ecc66753eef62304e3df0007961f`  
		Last Modified: Tue, 19 Dec 2017 21:08:12 GMT  
		Size: 26.2 MB (26198668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.4-slim` - linux; 386

```console
$ docker pull mono@sha256:6ed22fadbe01fde47baef8847672e613af67653e9fc7d5b19b16434dc28cd050
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59322889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4406ccb0e42aee44d1e23ce49ca4428868229744c8eadad83cae9a16dc195486`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:55:56 GMT
ENV MONO_VERSION=5.4.1.6
# Tue, 12 Dec 2017 17:56:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 17:56:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d88182ed5a1ac17e960e66bb28707912cc1e88fcaee14b1dcc910abd649242`  
		Last Modified: Tue, 12 Dec 2017 18:21:45 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f14e0bd6888e50cc238421beda1beef918515c979e6ca2d5df83ff0f256bed7`  
		Last Modified: Tue, 12 Dec 2017 18:21:56 GMT  
		Size: 29.1 MB (29054563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8`

```console
$ docker pull mono@sha256:625d4c7189f5f5357760ab467f0c1ed51023c9ae9a04291a79ad52008160cfc5
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
$ docker pull mono@sha256:b510028e539a1b97b76bb6a4b39f92012d9591eb7df12f06a2ffabe9af45bdbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160245090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d1bb3f480eb69031a347324bdaeffd2f37611bd3bfac1a2ed9e586ca13774`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 20:52:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c6004f64c60ef7c1c309c891ac02bd8b927cd386ca76a4d82d16fceea1168`  
		Last Modified: Sat, 03 Feb 2018 20:54:56 GMT  
		Size: 106.6 MB (106564340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8` - linux; 386

```console
$ docker pull mono@sha256:35d400599540382dc6f774aa1ff1e6f170eea00de5f990094f2e52fc37e3e674
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168260413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2176960fa66c73bafc98d18d8c0521c7e222546085e745d47f0e13256c90c68d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 02:19:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5142169cf7291b38fc239a98a12aab5ebaf9d222ebc05835dcc68432ddc5b65`  
		Last Modified: Sat, 03 Feb 2018 02:33:10 GMT  
		Size: 108.9 MB (108937825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0`

```console
$ docker pull mono@sha256:625d4c7189f5f5357760ab467f0c1ed51023c9ae9a04291a79ad52008160cfc5
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
$ docker pull mono@sha256:b510028e539a1b97b76bb6a4b39f92012d9591eb7df12f06a2ffabe9af45bdbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160245090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d1bb3f480eb69031a347324bdaeffd2f37611bd3bfac1a2ed9e586ca13774`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 20:52:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c6004f64c60ef7c1c309c891ac02bd8b927cd386ca76a4d82d16fceea1168`  
		Last Modified: Sat, 03 Feb 2018 20:54:56 GMT  
		Size: 106.6 MB (106564340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0` - linux; 386

```console
$ docker pull mono@sha256:35d400599540382dc6f774aa1ff1e6f170eea00de5f990094f2e52fc37e3e674
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168260413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2176960fa66c73bafc98d18d8c0521c7e222546085e745d47f0e13256c90c68d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 02:19:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5142169cf7291b38fc239a98a12aab5ebaf9d222ebc05835dcc68432ddc5b65`  
		Last Modified: Sat, 03 Feb 2018 02:33:10 GMT  
		Size: 108.9 MB (108937825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0.108`

```console
$ docker pull mono@sha256:625d4c7189f5f5357760ab467f0c1ed51023c9ae9a04291a79ad52008160cfc5
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
$ docker pull mono@sha256:b510028e539a1b97b76bb6a4b39f92012d9591eb7df12f06a2ffabe9af45bdbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160245090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d1bb3f480eb69031a347324bdaeffd2f37611bd3bfac1a2ed9e586ca13774`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 20:52:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c6004f64c60ef7c1c309c891ac02bd8b927cd386ca76a4d82d16fceea1168`  
		Last Modified: Sat, 03 Feb 2018 20:54:56 GMT  
		Size: 106.6 MB (106564340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.108` - linux; 386

```console
$ docker pull mono@sha256:35d400599540382dc6f774aa1ff1e6f170eea00de5f990094f2e52fc37e3e674
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168260413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2176960fa66c73bafc98d18d8c0521c7e222546085e745d47f0e13256c90c68d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 02:19:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5142169cf7291b38fc239a98a12aab5ebaf9d222ebc05835dcc68432ddc5b65`  
		Last Modified: Sat, 03 Feb 2018 02:33:10 GMT  
		Size: 108.9 MB (108937825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0.108-slim`

```console
$ docker pull mono@sha256:9f6f0cd5ccef84589523a0b9eeb3a24da636f1077a40327bfe4e839dab906381
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
$ docker pull mono@sha256:3a149fec6da988e3bfecf6e9ad2f5401d6ae256dd04e1cd8fa92bb73f1101815
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53680750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb8bddd9ab41da0bf2b7167a2b1d4eb9e61623fb40c76dd334b03ff5daf06e0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.108-slim` - linux; 386

```console
$ docker pull mono@sha256:6f4815c9949603e2227e52bbbc5d80f5eaac8b08349103ecbd7c8e8deeac85e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59322588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f8b4662473aeaa0fca032091617fdfebb14feb60a00e8f8a8fd1e94beac4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0-slim`

```console
$ docker pull mono@sha256:9f6f0cd5ccef84589523a0b9eeb3a24da636f1077a40327bfe4e839dab906381
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
$ docker pull mono@sha256:3a149fec6da988e3bfecf6e9ad2f5401d6ae256dd04e1cd8fa92bb73f1101815
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53680750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb8bddd9ab41da0bf2b7167a2b1d4eb9e61623fb40c76dd334b03ff5daf06e0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0-slim` - linux; 386

```console
$ docker pull mono@sha256:6f4815c9949603e2227e52bbbc5d80f5eaac8b08349103ecbd7c8e8deeac85e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59322588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f8b4662473aeaa0fca032091617fdfebb14feb60a00e8f8a8fd1e94beac4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8-slim`

```console
$ docker pull mono@sha256:9f6f0cd5ccef84589523a0b9eeb3a24da636f1077a40327bfe4e839dab906381
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
$ docker pull mono@sha256:3a149fec6da988e3bfecf6e9ad2f5401d6ae256dd04e1cd8fa92bb73f1101815
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53680750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb8bddd9ab41da0bf2b7167a2b1d4eb9e61623fb40c76dd334b03ff5daf06e0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8-slim` - linux; 386

```console
$ docker pull mono@sha256:6f4815c9949603e2227e52bbbc5d80f5eaac8b08349103ecbd7c8e8deeac85e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59322588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f8b4662473aeaa0fca032091617fdfebb14feb60a00e8f8a8fd1e94beac4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:9f6f0cd5ccef84589523a0b9eeb3a24da636f1077a40327bfe4e839dab906381
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
$ docker pull mono@sha256:3a149fec6da988e3bfecf6e9ad2f5401d6ae256dd04e1cd8fa92bb73f1101815
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53680750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb8bddd9ab41da0bf2b7167a2b1d4eb9e61623fb40c76dd334b03ff5daf06e0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:6f4815c9949603e2227e52bbbc5d80f5eaac8b08349103ecbd7c8e8deeac85e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59322588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f8b4662473aeaa0fca032091617fdfebb14feb60a00e8f8a8fd1e94beac4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:625d4c7189f5f5357760ab467f0c1ed51023c9ae9a04291a79ad52008160cfc5
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
$ docker pull mono@sha256:b510028e539a1b97b76bb6a4b39f92012d9591eb7df12f06a2ffabe9af45bdbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160245090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d1bb3f480eb69031a347324bdaeffd2f37611bd3bfac1a2ed9e586ca13774`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 20:52:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c6004f64c60ef7c1c309c891ac02bd8b927cd386ca76a4d82d16fceea1168`  
		Last Modified: Sat, 03 Feb 2018 20:54:56 GMT  
		Size: 106.6 MB (106564340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:35d400599540382dc6f774aa1ff1e6f170eea00de5f990094f2e52fc37e3e674
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168260413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2176960fa66c73bafc98d18d8c0521c7e222546085e745d47f0e13256c90c68d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 02:19:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5142169cf7291b38fc239a98a12aab5ebaf9d222ebc05835dcc68432ddc5b65`  
		Last Modified: Sat, 03 Feb 2018 02:33:10 GMT  
		Size: 108.9 MB (108937825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:9f6f0cd5ccef84589523a0b9eeb3a24da636f1077a40327bfe4e839dab906381
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
$ docker pull mono@sha256:3a149fec6da988e3bfecf6e9ad2f5401d6ae256dd04e1cd8fa92bb73f1101815
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53680750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb8bddd9ab41da0bf2b7167a2b1d4eb9e61623fb40c76dd334b03ff5daf06e0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:6f4815c9949603e2227e52bbbc5d80f5eaac8b08349103ecbd7c8e8deeac85e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59322588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f8b4662473aeaa0fca032091617fdfebb14feb60a00e8f8a8fd1e94beac4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

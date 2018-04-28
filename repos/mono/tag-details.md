<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:4`](#mono4)
-	[`mono:4.8`](#mono48)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:5`](#mono5)
-	[`mono:5.10`](#mono510)
-	[`mono:5.10.0`](#mono5100)
-	[`mono:5.10.0.160`](#mono5100160)
-	[`mono:5.10.0.160-slim`](#mono5100160-slim)
-	[`mono:5.10.0-slim`](#mono5100-slim)
-	[`mono:5.10-slim`](#mono510-slim)
-	[`mono:5.8`](#mono58)
-	[`mono:5.8.0`](#mono580)
-	[`mono:5.8.0.127`](#mono580127)
-	[`mono:5.8.0.127-slim`](#mono580127-slim)
-	[`mono:5.8.0-slim`](#mono580-slim)
-	[`mono:5.8-slim`](#mono58-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:f3e6539c0d0b4996be5ace75ac9deb684fd600588bfad1516d461e157a598f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:24ca2f769ff50c3bf26fb29b3996fcbae921712dd2864d986763fcfc74c4d53a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153044010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e21395e539446961c8c79889c83213ec8fa692960d3bb82e5b28e3d5e585611f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:25:16 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Mar 2018 07:25:16 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 14 Mar 2018 07:25:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:25:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:29:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6147e46c1801b7e5f38122640067362c4ce1856790fe765e5efe9c177a6d799f`  
		Last Modified: Wed, 14 Mar 2018 07:39:40 GMT  
		Size: 7.8 MB (7755499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2696f2583834864fdb612decc9519d666b07379b32f82265b362f7b6afbe37`  
		Last Modified: Wed, 14 Mar 2018 07:39:39 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29db2610465588aa2981eb82d742b84dcf38afe00210a711c8503d7ec32ebbcc`  
		Last Modified: Wed, 14 Mar 2018 07:40:05 GMT  
		Size: 107.1 MB (107147113 bytes)  
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
$ docker pull mono@sha256:59d2aafb5019aa060037edabe206e9e7345e8b02aa1572624b16ff90c58bc869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153051802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2752bf64dd28e661b0ad28235e70b196f81ef49273c05ba358557a688e0b115a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:23:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 28 Apr 2018 11:23:41 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 28 Apr 2018 11:23:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:23:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:25:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce641e6b571d399afe5148baac58fcfd73b1a2cfdd36aaf676dc03a57fce5d9`  
		Last Modified: Sat, 28 Apr 2018 11:31:52 GMT  
		Size: 6.4 MB (6428167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9ff4404ebdb71792105e7d00f103494107a27b8f0d048b88d11fc38d91b1f9`  
		Last Modified: Sat, 28 Apr 2018 11:31:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e2871a640bbe004a05cb846b6a70756c156b6954ad0402c43dca42ab80474`  
		Last Modified: Sat, 28 Apr 2018 11:32:25 GMT  
		Size: 106.1 MB (106061610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:f3e6539c0d0b4996be5ace75ac9deb684fd600588bfad1516d461e157a598f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:24ca2f769ff50c3bf26fb29b3996fcbae921712dd2864d986763fcfc74c4d53a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153044010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e21395e539446961c8c79889c83213ec8fa692960d3bb82e5b28e3d5e585611f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:25:16 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Mar 2018 07:25:16 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 14 Mar 2018 07:25:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:25:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:29:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6147e46c1801b7e5f38122640067362c4ce1856790fe765e5efe9c177a6d799f`  
		Last Modified: Wed, 14 Mar 2018 07:39:40 GMT  
		Size: 7.8 MB (7755499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2696f2583834864fdb612decc9519d666b07379b32f82265b362f7b6afbe37`  
		Last Modified: Wed, 14 Mar 2018 07:39:39 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29db2610465588aa2981eb82d742b84dcf38afe00210a711c8503d7ec32ebbcc`  
		Last Modified: Wed, 14 Mar 2018 07:40:05 GMT  
		Size: 107.1 MB (107147113 bytes)  
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
$ docker pull mono@sha256:59d2aafb5019aa060037edabe206e9e7345e8b02aa1572624b16ff90c58bc869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153051802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2752bf64dd28e661b0ad28235e70b196f81ef49273c05ba358557a688e0b115a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:23:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 28 Apr 2018 11:23:41 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 28 Apr 2018 11:23:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:23:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:25:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce641e6b571d399afe5148baac58fcfd73b1a2cfdd36aaf676dc03a57fce5d9`  
		Last Modified: Sat, 28 Apr 2018 11:31:52 GMT  
		Size: 6.4 MB (6428167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9ff4404ebdb71792105e7d00f103494107a27b8f0d048b88d11fc38d91b1f9`  
		Last Modified: Sat, 28 Apr 2018 11:31:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e2871a640bbe004a05cb846b6a70756c156b6954ad0402c43dca42ab80474`  
		Last Modified: Sat, 28 Apr 2018 11:32:25 GMT  
		Size: 106.1 MB (106061610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:f3e6539c0d0b4996be5ace75ac9deb684fd600588bfad1516d461e157a598f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:24ca2f769ff50c3bf26fb29b3996fcbae921712dd2864d986763fcfc74c4d53a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153044010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e21395e539446961c8c79889c83213ec8fa692960d3bb82e5b28e3d5e585611f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:25:16 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Mar 2018 07:25:16 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 14 Mar 2018 07:25:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:25:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:29:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6147e46c1801b7e5f38122640067362c4ce1856790fe765e5efe9c177a6d799f`  
		Last Modified: Wed, 14 Mar 2018 07:39:40 GMT  
		Size: 7.8 MB (7755499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2696f2583834864fdb612decc9519d666b07379b32f82265b362f7b6afbe37`  
		Last Modified: Wed, 14 Mar 2018 07:39:39 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29db2610465588aa2981eb82d742b84dcf38afe00210a711c8503d7ec32ebbcc`  
		Last Modified: Wed, 14 Mar 2018 07:40:05 GMT  
		Size: 107.1 MB (107147113 bytes)  
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
$ docker pull mono@sha256:59d2aafb5019aa060037edabe206e9e7345e8b02aa1572624b16ff90c58bc869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153051802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2752bf64dd28e661b0ad28235e70b196f81ef49273c05ba358557a688e0b115a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:23:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 28 Apr 2018 11:23:41 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 28 Apr 2018 11:23:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:23:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:25:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce641e6b571d399afe5148baac58fcfd73b1a2cfdd36aaf676dc03a57fce5d9`  
		Last Modified: Sat, 28 Apr 2018 11:31:52 GMT  
		Size: 6.4 MB (6428167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9ff4404ebdb71792105e7d00f103494107a27b8f0d048b88d11fc38d91b1f9`  
		Last Modified: Sat, 28 Apr 2018 11:31:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e2871a640bbe004a05cb846b6a70756c156b6954ad0402c43dca42ab80474`  
		Last Modified: Sat, 28 Apr 2018 11:32:25 GMT  
		Size: 106.1 MB (106061610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:f3e6539c0d0b4996be5ace75ac9deb684fd600588bfad1516d461e157a598f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:24ca2f769ff50c3bf26fb29b3996fcbae921712dd2864d986763fcfc74c4d53a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153044010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e21395e539446961c8c79889c83213ec8fa692960d3bb82e5b28e3d5e585611f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:25:16 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 14 Mar 2018 07:25:16 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 14 Mar 2018 07:25:27 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:25:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:29:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6147e46c1801b7e5f38122640067362c4ce1856790fe765e5efe9c177a6d799f`  
		Last Modified: Wed, 14 Mar 2018 07:39:40 GMT  
		Size: 7.8 MB (7755499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2696f2583834864fdb612decc9519d666b07379b32f82265b362f7b6afbe37`  
		Last Modified: Wed, 14 Mar 2018 07:39:39 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29db2610465588aa2981eb82d742b84dcf38afe00210a711c8503d7ec32ebbcc`  
		Last Modified: Wed, 14 Mar 2018 07:40:05 GMT  
		Size: 107.1 MB (107147113 bytes)  
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
$ docker pull mono@sha256:59d2aafb5019aa060037edabe206e9e7345e8b02aa1572624b16ff90c58bc869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153051802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2752bf64dd28e661b0ad28235e70b196f81ef49273c05ba358557a688e0b115a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:23:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 28 Apr 2018 11:23:41 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 28 Apr 2018 11:23:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:23:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:25:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce641e6b571d399afe5148baac58fcfd73b1a2cfdd36aaf676dc03a57fce5d9`  
		Last Modified: Sat, 28 Apr 2018 11:31:52 GMT  
		Size: 6.4 MB (6428167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9ff4404ebdb71792105e7d00f103494107a27b8f0d048b88d11fc38d91b1f9`  
		Last Modified: Sat, 28 Apr 2018 11:31:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e2871a640bbe004a05cb846b6a70756c156b6954ad0402c43dca42ab80474`  
		Last Modified: Sat, 28 Apr 2018 11:32:25 GMT  
		Size: 106.1 MB (106061610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:ff18a2c51c338e7a7082a60c9343fb99ba4f54db01209d8ed2ed5cc13c1586f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:752329c751e7a3a9add4a77993470d1d6ba9b79d9ac5b7d08530fca0c26da27f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174073294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9455048366c59318b56541a60b9cbb75a1b486fd2e6c2fa0b9f9bc6c236bb6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 20 Mar 2018 10:12:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbfc0c1738fffa9f41d59b802c41c22b73047caa6f6c41f7861e42a3e78f407b`  
		Last Modified: Tue, 20 Mar 2018 10:27:24 GMT  
		Size: 116.3 MB (116349532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:0d74eb5b85fabe5d41c0a1b298611c9a10de9bbdd69042fd20c6d98cce1c97cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168152158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78577d6dd5fdea29df84fa60a573771a55ef7268df756975ecb263d5cf920a2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 19 Mar 2018 19:53:58 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bab84b0cfece90401c30b0f0f380b282050a351db8d5d0a4abc2d4160a52819`  
		Last Modified: Mon, 19 Mar 2018 19:57:36 GMT  
		Size: 114.2 MB (114167109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:65bc8432a88d4ebc140e67c714219ca3b5469482e9e9d41b1d7fb0a814443e5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176330457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fec0addfa532eb425fd4444dc6c3da27a789c22cb892fad4fa26871d68ac240`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:22:30 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 11:22:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:23:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 28 Apr 2018 11:30:06 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8963af9ee51a56613fad37137117c61340e6ee1fc1ebb4673434e8392f7898`  
		Last Modified: Sat, 28 Apr 2018 11:31:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2e79e6344b985a5cfbedf9701a09d62a592d61cf1900b83ac4399abb0bee62`  
		Last Modified: Sat, 28 Apr 2018 11:31:22 GMT  
		Size: 29.4 MB (29378367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf777ba502c0bbdba0d25fb34f00192cf7aba2e8a742f2e7d0e8b9b326d4ccee`  
		Last Modified: Sat, 28 Apr 2018 11:34:29 GMT  
		Size: 116.7 MB (116671366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10`

```console
$ docker pull mono@sha256:ff18a2c51c338e7a7082a60c9343fb99ba4f54db01209d8ed2ed5cc13c1586f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10` - linux; amd64

```console
$ docker pull mono@sha256:752329c751e7a3a9add4a77993470d1d6ba9b79d9ac5b7d08530fca0c26da27f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174073294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9455048366c59318b56541a60b9cbb75a1b486fd2e6c2fa0b9f9bc6c236bb6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 20 Mar 2018 10:12:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbfc0c1738fffa9f41d59b802c41c22b73047caa6f6c41f7861e42a3e78f407b`  
		Last Modified: Tue, 20 Mar 2018 10:27:24 GMT  
		Size: 116.3 MB (116349532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:0d74eb5b85fabe5d41c0a1b298611c9a10de9bbdd69042fd20c6d98cce1c97cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168152158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78577d6dd5fdea29df84fa60a573771a55ef7268df756975ecb263d5cf920a2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 19 Mar 2018 19:53:58 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bab84b0cfece90401c30b0f0f380b282050a351db8d5d0a4abc2d4160a52819`  
		Last Modified: Mon, 19 Mar 2018 19:57:36 GMT  
		Size: 114.2 MB (114167109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10` - linux; 386

```console
$ docker pull mono@sha256:65bc8432a88d4ebc140e67c714219ca3b5469482e9e9d41b1d7fb0a814443e5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176330457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fec0addfa532eb425fd4444dc6c3da27a789c22cb892fad4fa26871d68ac240`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:22:30 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 11:22:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:23:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 28 Apr 2018 11:30:06 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8963af9ee51a56613fad37137117c61340e6ee1fc1ebb4673434e8392f7898`  
		Last Modified: Sat, 28 Apr 2018 11:31:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2e79e6344b985a5cfbedf9701a09d62a592d61cf1900b83ac4399abb0bee62`  
		Last Modified: Sat, 28 Apr 2018 11:31:22 GMT  
		Size: 29.4 MB (29378367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf777ba502c0bbdba0d25fb34f00192cf7aba2e8a742f2e7d0e8b9b326d4ccee`  
		Last Modified: Sat, 28 Apr 2018 11:34:29 GMT  
		Size: 116.7 MB (116671366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.0`

```console
$ docker pull mono@sha256:ff18a2c51c338e7a7082a60c9343fb99ba4f54db01209d8ed2ed5cc13c1586f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.0` - linux; amd64

```console
$ docker pull mono@sha256:752329c751e7a3a9add4a77993470d1d6ba9b79d9ac5b7d08530fca0c26da27f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174073294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9455048366c59318b56541a60b9cbb75a1b486fd2e6c2fa0b9f9bc6c236bb6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 20 Mar 2018 10:12:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbfc0c1738fffa9f41d59b802c41c22b73047caa6f6c41f7861e42a3e78f407b`  
		Last Modified: Tue, 20 Mar 2018 10:27:24 GMT  
		Size: 116.3 MB (116349532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:0d74eb5b85fabe5d41c0a1b298611c9a10de9bbdd69042fd20c6d98cce1c97cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168152158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78577d6dd5fdea29df84fa60a573771a55ef7268df756975ecb263d5cf920a2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 19 Mar 2018 19:53:58 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bab84b0cfece90401c30b0f0f380b282050a351db8d5d0a4abc2d4160a52819`  
		Last Modified: Mon, 19 Mar 2018 19:57:36 GMT  
		Size: 114.2 MB (114167109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0` - linux; 386

```console
$ docker pull mono@sha256:65bc8432a88d4ebc140e67c714219ca3b5469482e9e9d41b1d7fb0a814443e5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176330457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fec0addfa532eb425fd4444dc6c3da27a789c22cb892fad4fa26871d68ac240`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:22:30 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 11:22:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:23:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 28 Apr 2018 11:30:06 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8963af9ee51a56613fad37137117c61340e6ee1fc1ebb4673434e8392f7898`  
		Last Modified: Sat, 28 Apr 2018 11:31:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2e79e6344b985a5cfbedf9701a09d62a592d61cf1900b83ac4399abb0bee62`  
		Last Modified: Sat, 28 Apr 2018 11:31:22 GMT  
		Size: 29.4 MB (29378367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf777ba502c0bbdba0d25fb34f00192cf7aba2e8a742f2e7d0e8b9b326d4ccee`  
		Last Modified: Sat, 28 Apr 2018 11:34:29 GMT  
		Size: 116.7 MB (116671366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.0.160`

```console
$ docker pull mono@sha256:ff18a2c51c338e7a7082a60c9343fb99ba4f54db01209d8ed2ed5cc13c1586f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.0.160` - linux; amd64

```console
$ docker pull mono@sha256:752329c751e7a3a9add4a77993470d1d6ba9b79d9ac5b7d08530fca0c26da27f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174073294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9455048366c59318b56541a60b9cbb75a1b486fd2e6c2fa0b9f9bc6c236bb6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 20 Mar 2018 10:12:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbfc0c1738fffa9f41d59b802c41c22b73047caa6f6c41f7861e42a3e78f407b`  
		Last Modified: Tue, 20 Mar 2018 10:27:24 GMT  
		Size: 116.3 MB (116349532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0.160` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:0d74eb5b85fabe5d41c0a1b298611c9a10de9bbdd69042fd20c6d98cce1c97cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168152158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78577d6dd5fdea29df84fa60a573771a55ef7268df756975ecb263d5cf920a2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 19 Mar 2018 19:53:58 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bab84b0cfece90401c30b0f0f380b282050a351db8d5d0a4abc2d4160a52819`  
		Last Modified: Mon, 19 Mar 2018 19:57:36 GMT  
		Size: 114.2 MB (114167109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0.160` - linux; 386

```console
$ docker pull mono@sha256:65bc8432a88d4ebc140e67c714219ca3b5469482e9e9d41b1d7fb0a814443e5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176330457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fec0addfa532eb425fd4444dc6c3da27a789c22cb892fad4fa26871d68ac240`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:22:30 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 11:22:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:23:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 28 Apr 2018 11:30:06 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8963af9ee51a56613fad37137117c61340e6ee1fc1ebb4673434e8392f7898`  
		Last Modified: Sat, 28 Apr 2018 11:31:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2e79e6344b985a5cfbedf9701a09d62a592d61cf1900b83ac4399abb0bee62`  
		Last Modified: Sat, 28 Apr 2018 11:31:22 GMT  
		Size: 29.4 MB (29378367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf777ba502c0bbdba0d25fb34f00192cf7aba2e8a742f2e7d0e8b9b326d4ccee`  
		Last Modified: Sat, 28 Apr 2018 11:34:29 GMT  
		Size: 116.7 MB (116671366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.0.160-slim`

```console
$ docker pull mono@sha256:8b623252d7d7132bb6bc6fda7c354b934f8c8e6e0b070497beb3eaf5f4690148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.0.160-slim` - linux; amd64

```console
$ docker pull mono@sha256:871bdfc7efa1cbde47ab5d40b5d906a872c0be3e15485b668b6dbfbf7948c400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57723762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01367944846abf84602767b03a50abfe7966936edbb9d6dd2d6b978fe00dc38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0.160-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:437631f07312f8973be0ba93fd3286a093084a4c515d2c97f6da24e9baba4533
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48190398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa034c18ef829198c048719f57c87888b28812b39fec5da35e436e872f52bbb5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 17:51:58 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 17:52:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 17:53:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea02cced56959e0d5dc7d75fde9a2e5f2afc5ef25f5ea8792458c4511dbbad`  
		Last Modified: Tue, 20 Mar 2018 18:08:38 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79415ddf90d4857696503b5a4be8dfd8bee84de3cf5e8735781c50d77f6e20a`  
		Last Modified: Tue, 20 Mar 2018 18:08:46 GMT  
		Size: 21.9 MB (21898046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0.160-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c126b78fa605acccab312cdf4b7be02a162533affb230fb637b4c979711ab3c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53985049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dbc5ce88ae09ee5d35b452a9b0f451651d14880eb3097de1ef7410e28bbd6d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0.160-slim` - linux; 386

```console
$ docker pull mono@sha256:6a61a3a0b6b162038d45596e6bc35d340bf38675e7b966963b003e5122176d89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59659091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ad935b7d10e9fa6a1b07ef9e3aaabdcdf7c4a8597696c68446c3997b06bd2b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:22:30 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 11:22:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:23:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8963af9ee51a56613fad37137117c61340e6ee1fc1ebb4673434e8392f7898`  
		Last Modified: Sat, 28 Apr 2018 11:31:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2e79e6344b985a5cfbedf9701a09d62a592d61cf1900b83ac4399abb0bee62`  
		Last Modified: Sat, 28 Apr 2018 11:31:22 GMT  
		Size: 29.4 MB (29378367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.0-slim`

```console
$ docker pull mono@sha256:8b623252d7d7132bb6bc6fda7c354b934f8c8e6e0b070497beb3eaf5f4690148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:871bdfc7efa1cbde47ab5d40b5d906a872c0be3e15485b668b6dbfbf7948c400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57723762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01367944846abf84602767b03a50abfe7966936edbb9d6dd2d6b978fe00dc38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:437631f07312f8973be0ba93fd3286a093084a4c515d2c97f6da24e9baba4533
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48190398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa034c18ef829198c048719f57c87888b28812b39fec5da35e436e872f52bbb5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 17:51:58 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 17:52:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 17:53:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea02cced56959e0d5dc7d75fde9a2e5f2afc5ef25f5ea8792458c4511dbbad`  
		Last Modified: Tue, 20 Mar 2018 18:08:38 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79415ddf90d4857696503b5a4be8dfd8bee84de3cf5e8735781c50d77f6e20a`  
		Last Modified: Tue, 20 Mar 2018 18:08:46 GMT  
		Size: 21.9 MB (21898046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c126b78fa605acccab312cdf4b7be02a162533affb230fb637b4c979711ab3c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53985049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dbc5ce88ae09ee5d35b452a9b0f451651d14880eb3097de1ef7410e28bbd6d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0-slim` - linux; 386

```console
$ docker pull mono@sha256:6a61a3a0b6b162038d45596e6bc35d340bf38675e7b966963b003e5122176d89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59659091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ad935b7d10e9fa6a1b07ef9e3aaabdcdf7c4a8597696c68446c3997b06bd2b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:22:30 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 11:22:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:23:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8963af9ee51a56613fad37137117c61340e6ee1fc1ebb4673434e8392f7898`  
		Last Modified: Sat, 28 Apr 2018 11:31:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2e79e6344b985a5cfbedf9701a09d62a592d61cf1900b83ac4399abb0bee62`  
		Last Modified: Sat, 28 Apr 2018 11:31:22 GMT  
		Size: 29.4 MB (29378367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10-slim`

```console
$ docker pull mono@sha256:8b623252d7d7132bb6bc6fda7c354b934f8c8e6e0b070497beb3eaf5f4690148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10-slim` - linux; amd64

```console
$ docker pull mono@sha256:871bdfc7efa1cbde47ab5d40b5d906a872c0be3e15485b668b6dbfbf7948c400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57723762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01367944846abf84602767b03a50abfe7966936edbb9d6dd2d6b978fe00dc38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:437631f07312f8973be0ba93fd3286a093084a4c515d2c97f6da24e9baba4533
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48190398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa034c18ef829198c048719f57c87888b28812b39fec5da35e436e872f52bbb5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 17:51:58 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 17:52:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 17:53:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea02cced56959e0d5dc7d75fde9a2e5f2afc5ef25f5ea8792458c4511dbbad`  
		Last Modified: Tue, 20 Mar 2018 18:08:38 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79415ddf90d4857696503b5a4be8dfd8bee84de3cf5e8735781c50d77f6e20a`  
		Last Modified: Tue, 20 Mar 2018 18:08:46 GMT  
		Size: 21.9 MB (21898046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c126b78fa605acccab312cdf4b7be02a162533affb230fb637b4c979711ab3c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53985049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dbc5ce88ae09ee5d35b452a9b0f451651d14880eb3097de1ef7410e28bbd6d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10-slim` - linux; 386

```console
$ docker pull mono@sha256:6a61a3a0b6b162038d45596e6bc35d340bf38675e7b966963b003e5122176d89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59659091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ad935b7d10e9fa6a1b07ef9e3aaabdcdf7c4a8597696c68446c3997b06bd2b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:22:30 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 11:22:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:23:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8963af9ee51a56613fad37137117c61340e6ee1fc1ebb4673434e8392f7898`  
		Last Modified: Sat, 28 Apr 2018 11:31:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2e79e6344b985a5cfbedf9701a09d62a592d61cf1900b83ac4399abb0bee62`  
		Last Modified: Sat, 28 Apr 2018 11:31:22 GMT  
		Size: 29.4 MB (29378367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8`

```console
$ docker pull mono@sha256:844847047ba31c354a76ab0fb2db9095a69c6bcfa901e00592549d7eb2b78c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8` - linux; amd64

```console
$ docker pull mono@sha256:86b874309abb9e292c361e12a68f5033f7bfa68c8ffc32a6b8950466926564b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174624749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f90d81585b35567261136b5f2e96fe9b8da4e5468974c32ccba0207aa2e0ac6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:21:47 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 07:21:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:23:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Mar 2018 07:33:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fd5726edd9f3f1977b65a4821afb616d239e3319df8be009446488f7d4ce3`  
		Last Modified: Wed, 14 Mar 2018 07:37:01 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6be731cda004b97c2050c943945d71afc8ad94d592dc429aaa3924191d1a632`  
		Last Modified: Wed, 14 Mar 2018 07:37:11 GMT  
		Size: 27.4 MB (27362503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead69961751b24ab2d3dd7c5de6cef3032cbb60805a2b74631e97c3cf20581fc`  
		Last Modified: Wed, 14 Mar 2018 07:41:46 GMT  
		Size: 117.1 MB (117137776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:9c3bce310eaabae961419780138801c92ace40bbb58f576e337f147389d2fb03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168760444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb6eb80e935bf4b4486a8046d62c2ba170d2b9fc06fdf99f7a25f7740b70e49`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:54 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 21:53:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 21:55:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Mar 2018 22:09:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6b1367b2d1c9afa214a230ea52e7bae7b50e6c2f4284b3fd7015beb8f1754`  
		Last Modified: Wed, 14 Mar 2018 22:16:29 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baa15e7a3fae65ce6bf6d31d2d1a973d2545cf410b81d9d9340c4f3062abc9`  
		Last Modified: Wed, 14 Mar 2018 22:16:40 GMT  
		Size: 26.3 MB (26258233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90485d367026a123593f0b38e0742b10df0a9f6179acffb54a994d6f72a76428`  
		Last Modified: Wed, 14 Mar 2018 22:20:13 GMT  
		Size: 115.0 MB (115011967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8` - linux; 386

```console
$ docker pull mono@sha256:a74e78686940062e6653b117fac7c39396d033b79d9eb3f233969276291a709c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.9 MB (176854309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd77c80e261bbc80acbd1483cbe4fa2e9e34e58d78e02b0bef805849738c4599`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:21:20 GMT
ENV MONO_VERSION=5.8.0.127
# Sat, 28 Apr 2018 11:21:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:22:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 28 Apr 2018 11:27:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0d8710e61b6f0ced6ffa9b74de867464cb16e2f01e5f3c4de699b2d8021933`  
		Last Modified: Sat, 28 Apr 2018 11:30:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694de5b3761efe6964862fd9f5a173e3344da5cb4a18e71c7da174a81371e6c`  
		Last Modified: Sat, 28 Apr 2018 11:30:48 GMT  
		Size: 29.1 MB (29136200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9492b7968e5a7e3e938bec33f507e3d566d2ae952350a0ad0f02e41ead15a514`  
		Last Modified: Sat, 28 Apr 2018 11:33:29 GMT  
		Size: 117.4 MB (117437382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0`

```console
$ docker pull mono@sha256:844847047ba31c354a76ab0fb2db9095a69c6bcfa901e00592549d7eb2b78c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0` - linux; amd64

```console
$ docker pull mono@sha256:86b874309abb9e292c361e12a68f5033f7bfa68c8ffc32a6b8950466926564b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174624749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f90d81585b35567261136b5f2e96fe9b8da4e5468974c32ccba0207aa2e0ac6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:21:47 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 07:21:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:23:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Mar 2018 07:33:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fd5726edd9f3f1977b65a4821afb616d239e3319df8be009446488f7d4ce3`  
		Last Modified: Wed, 14 Mar 2018 07:37:01 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6be731cda004b97c2050c943945d71afc8ad94d592dc429aaa3924191d1a632`  
		Last Modified: Wed, 14 Mar 2018 07:37:11 GMT  
		Size: 27.4 MB (27362503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead69961751b24ab2d3dd7c5de6cef3032cbb60805a2b74631e97c3cf20581fc`  
		Last Modified: Wed, 14 Mar 2018 07:41:46 GMT  
		Size: 117.1 MB (117137776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:9c3bce310eaabae961419780138801c92ace40bbb58f576e337f147389d2fb03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168760444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb6eb80e935bf4b4486a8046d62c2ba170d2b9fc06fdf99f7a25f7740b70e49`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:54 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 21:53:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 21:55:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Mar 2018 22:09:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6b1367b2d1c9afa214a230ea52e7bae7b50e6c2f4284b3fd7015beb8f1754`  
		Last Modified: Wed, 14 Mar 2018 22:16:29 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baa15e7a3fae65ce6bf6d31d2d1a973d2545cf410b81d9d9340c4f3062abc9`  
		Last Modified: Wed, 14 Mar 2018 22:16:40 GMT  
		Size: 26.3 MB (26258233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90485d367026a123593f0b38e0742b10df0a9f6179acffb54a994d6f72a76428`  
		Last Modified: Wed, 14 Mar 2018 22:20:13 GMT  
		Size: 115.0 MB (115011967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0` - linux; 386

```console
$ docker pull mono@sha256:a74e78686940062e6653b117fac7c39396d033b79d9eb3f233969276291a709c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.9 MB (176854309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd77c80e261bbc80acbd1483cbe4fa2e9e34e58d78e02b0bef805849738c4599`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:21:20 GMT
ENV MONO_VERSION=5.8.0.127
# Sat, 28 Apr 2018 11:21:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:22:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 28 Apr 2018 11:27:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0d8710e61b6f0ced6ffa9b74de867464cb16e2f01e5f3c4de699b2d8021933`  
		Last Modified: Sat, 28 Apr 2018 11:30:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694de5b3761efe6964862fd9f5a173e3344da5cb4a18e71c7da174a81371e6c`  
		Last Modified: Sat, 28 Apr 2018 11:30:48 GMT  
		Size: 29.1 MB (29136200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9492b7968e5a7e3e938bec33f507e3d566d2ae952350a0ad0f02e41ead15a514`  
		Last Modified: Sat, 28 Apr 2018 11:33:29 GMT  
		Size: 117.4 MB (117437382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0.127`

```console
$ docker pull mono@sha256:844847047ba31c354a76ab0fb2db9095a69c6bcfa901e00592549d7eb2b78c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0.127` - linux; amd64

```console
$ docker pull mono@sha256:86b874309abb9e292c361e12a68f5033f7bfa68c8ffc32a6b8950466926564b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174624749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f90d81585b35567261136b5f2e96fe9b8da4e5468974c32ccba0207aa2e0ac6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:21:47 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 07:21:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:23:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Mar 2018 07:33:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fd5726edd9f3f1977b65a4821afb616d239e3319df8be009446488f7d4ce3`  
		Last Modified: Wed, 14 Mar 2018 07:37:01 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6be731cda004b97c2050c943945d71afc8ad94d592dc429aaa3924191d1a632`  
		Last Modified: Wed, 14 Mar 2018 07:37:11 GMT  
		Size: 27.4 MB (27362503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead69961751b24ab2d3dd7c5de6cef3032cbb60805a2b74631e97c3cf20581fc`  
		Last Modified: Wed, 14 Mar 2018 07:41:46 GMT  
		Size: 117.1 MB (117137776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.127` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:9c3bce310eaabae961419780138801c92ace40bbb58f576e337f147389d2fb03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168760444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb6eb80e935bf4b4486a8046d62c2ba170d2b9fc06fdf99f7a25f7740b70e49`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:54 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 21:53:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 21:55:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Mar 2018 22:09:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6b1367b2d1c9afa214a230ea52e7bae7b50e6c2f4284b3fd7015beb8f1754`  
		Last Modified: Wed, 14 Mar 2018 22:16:29 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baa15e7a3fae65ce6bf6d31d2d1a973d2545cf410b81d9d9340c4f3062abc9`  
		Last Modified: Wed, 14 Mar 2018 22:16:40 GMT  
		Size: 26.3 MB (26258233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90485d367026a123593f0b38e0742b10df0a9f6179acffb54a994d6f72a76428`  
		Last Modified: Wed, 14 Mar 2018 22:20:13 GMT  
		Size: 115.0 MB (115011967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.127` - linux; 386

```console
$ docker pull mono@sha256:a74e78686940062e6653b117fac7c39396d033b79d9eb3f233969276291a709c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.9 MB (176854309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd77c80e261bbc80acbd1483cbe4fa2e9e34e58d78e02b0bef805849738c4599`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:21:20 GMT
ENV MONO_VERSION=5.8.0.127
# Sat, 28 Apr 2018 11:21:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:22:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 28 Apr 2018 11:27:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0d8710e61b6f0ced6ffa9b74de867464cb16e2f01e5f3c4de699b2d8021933`  
		Last Modified: Sat, 28 Apr 2018 11:30:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694de5b3761efe6964862fd9f5a173e3344da5cb4a18e71c7da174a81371e6c`  
		Last Modified: Sat, 28 Apr 2018 11:30:48 GMT  
		Size: 29.1 MB (29136200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9492b7968e5a7e3e938bec33f507e3d566d2ae952350a0ad0f02e41ead15a514`  
		Last Modified: Sat, 28 Apr 2018 11:33:29 GMT  
		Size: 117.4 MB (117437382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0.127-slim`

```console
$ docker pull mono@sha256:4436504a16cf240de38cd872187ca967398018cdb80919a0d7599071ea8cca42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0.127-slim` - linux; amd64

```console
$ docker pull mono@sha256:05d8988c6bb3d226ebb47288f62940c86f57381c81742323e3f08b80f4e8f970
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57486973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a675dd8c202444a1867e7c27a1cfbd54c36dad5d58f1666d82bb1a27692857c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:21:47 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 07:21:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:23:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fd5726edd9f3f1977b65a4821afb616d239e3319df8be009446488f7d4ce3`  
		Last Modified: Wed, 14 Mar 2018 07:37:01 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6be731cda004b97c2050c943945d71afc8ad94d592dc429aaa3924191d1a632`  
		Last Modified: Wed, 14 Mar 2018 07:37:11 GMT  
		Size: 27.4 MB (27362503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.127-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:cbce71ca8ff422141b6bf217538b1be55110371a37f28db113e2ea25605d0e10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48075464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf37d0030b80af9febd20a44a4d503b7c413611343ff06dc8919d1468a36046`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:25:50 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 13:25:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 13:26:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a506744380672d33996ae5adb48ca8f8a6da341f44d2269cdf707fb1a168692e`  
		Last Modified: Wed, 14 Mar 2018 13:44:02 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c841cb48c5e18d2b76f8548d756020648a121a1e67d1e12eab1ef0a59d6b80`  
		Last Modified: Wed, 14 Mar 2018 13:44:10 GMT  
		Size: 21.8 MB (21783117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.127-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:81bd13fad36e5faa9441fd4372ce2d0da7c9f72c0627160ba76a02db2a2e64f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c82e847e5225e60cda929e8f0c094cc1ba1451d62201b554aa365437943765`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:54 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 21:53:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 21:55:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6b1367b2d1c9afa214a230ea52e7bae7b50e6c2f4284b3fd7015beb8f1754`  
		Last Modified: Wed, 14 Mar 2018 22:16:29 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baa15e7a3fae65ce6bf6d31d2d1a973d2545cf410b81d9d9340c4f3062abc9`  
		Last Modified: Wed, 14 Mar 2018 22:16:40 GMT  
		Size: 26.3 MB (26258233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.127-slim` - linux; 386

```console
$ docker pull mono@sha256:ff08a957af08ad0066f968a932b469ebaa86e9c972136cf4d529c009ddbb3de4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59416927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b38618935afb9343409294ca175173f9a118be5e43cdc930d797625546bd145`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:21:20 GMT
ENV MONO_VERSION=5.8.0.127
# Sat, 28 Apr 2018 11:21:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:22:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0d8710e61b6f0ced6ffa9b74de867464cb16e2f01e5f3c4de699b2d8021933`  
		Last Modified: Sat, 28 Apr 2018 11:30:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694de5b3761efe6964862fd9f5a173e3344da5cb4a18e71c7da174a81371e6c`  
		Last Modified: Sat, 28 Apr 2018 11:30:48 GMT  
		Size: 29.1 MB (29136200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0-slim`

```console
$ docker pull mono@sha256:4436504a16cf240de38cd872187ca967398018cdb80919a0d7599071ea8cca42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:05d8988c6bb3d226ebb47288f62940c86f57381c81742323e3f08b80f4e8f970
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57486973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a675dd8c202444a1867e7c27a1cfbd54c36dad5d58f1666d82bb1a27692857c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:21:47 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 07:21:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:23:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fd5726edd9f3f1977b65a4821afb616d239e3319df8be009446488f7d4ce3`  
		Last Modified: Wed, 14 Mar 2018 07:37:01 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6be731cda004b97c2050c943945d71afc8ad94d592dc429aaa3924191d1a632`  
		Last Modified: Wed, 14 Mar 2018 07:37:11 GMT  
		Size: 27.4 MB (27362503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:cbce71ca8ff422141b6bf217538b1be55110371a37f28db113e2ea25605d0e10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48075464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf37d0030b80af9febd20a44a4d503b7c413611343ff06dc8919d1468a36046`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:25:50 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 13:25:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 13:26:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a506744380672d33996ae5adb48ca8f8a6da341f44d2269cdf707fb1a168692e`  
		Last Modified: Wed, 14 Mar 2018 13:44:02 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c841cb48c5e18d2b76f8548d756020648a121a1e67d1e12eab1ef0a59d6b80`  
		Last Modified: Wed, 14 Mar 2018 13:44:10 GMT  
		Size: 21.8 MB (21783117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:81bd13fad36e5faa9441fd4372ce2d0da7c9f72c0627160ba76a02db2a2e64f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c82e847e5225e60cda929e8f0c094cc1ba1451d62201b554aa365437943765`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:54 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 21:53:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 21:55:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6b1367b2d1c9afa214a230ea52e7bae7b50e6c2f4284b3fd7015beb8f1754`  
		Last Modified: Wed, 14 Mar 2018 22:16:29 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baa15e7a3fae65ce6bf6d31d2d1a973d2545cf410b81d9d9340c4f3062abc9`  
		Last Modified: Wed, 14 Mar 2018 22:16:40 GMT  
		Size: 26.3 MB (26258233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0-slim` - linux; 386

```console
$ docker pull mono@sha256:ff08a957af08ad0066f968a932b469ebaa86e9c972136cf4d529c009ddbb3de4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59416927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b38618935afb9343409294ca175173f9a118be5e43cdc930d797625546bd145`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:21:20 GMT
ENV MONO_VERSION=5.8.0.127
# Sat, 28 Apr 2018 11:21:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:22:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0d8710e61b6f0ced6ffa9b74de867464cb16e2f01e5f3c4de699b2d8021933`  
		Last Modified: Sat, 28 Apr 2018 11:30:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694de5b3761efe6964862fd9f5a173e3344da5cb4a18e71c7da174a81371e6c`  
		Last Modified: Sat, 28 Apr 2018 11:30:48 GMT  
		Size: 29.1 MB (29136200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8-slim`

```console
$ docker pull mono@sha256:4436504a16cf240de38cd872187ca967398018cdb80919a0d7599071ea8cca42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8-slim` - linux; amd64

```console
$ docker pull mono@sha256:05d8988c6bb3d226ebb47288f62940c86f57381c81742323e3f08b80f4e8f970
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57486973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a675dd8c202444a1867e7c27a1cfbd54c36dad5d58f1666d82bb1a27692857c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:21:47 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 07:21:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:23:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fd5726edd9f3f1977b65a4821afb616d239e3319df8be009446488f7d4ce3`  
		Last Modified: Wed, 14 Mar 2018 07:37:01 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6be731cda004b97c2050c943945d71afc8ad94d592dc429aaa3924191d1a632`  
		Last Modified: Wed, 14 Mar 2018 07:37:11 GMT  
		Size: 27.4 MB (27362503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:cbce71ca8ff422141b6bf217538b1be55110371a37f28db113e2ea25605d0e10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48075464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf37d0030b80af9febd20a44a4d503b7c413611343ff06dc8919d1468a36046`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:25:50 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 13:25:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 13:26:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a506744380672d33996ae5adb48ca8f8a6da341f44d2269cdf707fb1a168692e`  
		Last Modified: Wed, 14 Mar 2018 13:44:02 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c841cb48c5e18d2b76f8548d756020648a121a1e67d1e12eab1ef0a59d6b80`  
		Last Modified: Wed, 14 Mar 2018 13:44:10 GMT  
		Size: 21.8 MB (21783117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:81bd13fad36e5faa9441fd4372ce2d0da7c9f72c0627160ba76a02db2a2e64f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c82e847e5225e60cda929e8f0c094cc1ba1451d62201b554aa365437943765`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:54 GMT
ENV MONO_VERSION=5.8.0.127
# Wed, 14 Mar 2018 21:53:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 21:55:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b6b1367b2d1c9afa214a230ea52e7bae7b50e6c2f4284b3fd7015beb8f1754`  
		Last Modified: Wed, 14 Mar 2018 22:16:29 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baa15e7a3fae65ce6bf6d31d2d1a973d2545cf410b81d9d9340c4f3062abc9`  
		Last Modified: Wed, 14 Mar 2018 22:16:40 GMT  
		Size: 26.3 MB (26258233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8-slim` - linux; 386

```console
$ docker pull mono@sha256:ff08a957af08ad0066f968a932b469ebaa86e9c972136cf4d529c009ddbb3de4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59416927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b38618935afb9343409294ca175173f9a118be5e43cdc930d797625546bd145`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:21:20 GMT
ENV MONO_VERSION=5.8.0.127
# Sat, 28 Apr 2018 11:21:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:22:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0d8710e61b6f0ced6ffa9b74de867464cb16e2f01e5f3c4de699b2d8021933`  
		Last Modified: Sat, 28 Apr 2018 11:30:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694de5b3761efe6964862fd9f5a173e3344da5cb4a18e71c7da174a81371e6c`  
		Last Modified: Sat, 28 Apr 2018 11:30:48 GMT  
		Size: 29.1 MB (29136200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:8b623252d7d7132bb6bc6fda7c354b934f8c8e6e0b070497beb3eaf5f4690148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:871bdfc7efa1cbde47ab5d40b5d906a872c0be3e15485b668b6dbfbf7948c400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57723762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01367944846abf84602767b03a50abfe7966936edbb9d6dd2d6b978fe00dc38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:437631f07312f8973be0ba93fd3286a093084a4c515d2c97f6da24e9baba4533
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48190398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa034c18ef829198c048719f57c87888b28812b39fec5da35e436e872f52bbb5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 17:51:58 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 17:52:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 17:53:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea02cced56959e0d5dc7d75fde9a2e5f2afc5ef25f5ea8792458c4511dbbad`  
		Last Modified: Tue, 20 Mar 2018 18:08:38 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79415ddf90d4857696503b5a4be8dfd8bee84de3cf5e8735781c50d77f6e20a`  
		Last Modified: Tue, 20 Mar 2018 18:08:46 GMT  
		Size: 21.9 MB (21898046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c126b78fa605acccab312cdf4b7be02a162533affb230fb637b4c979711ab3c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53985049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dbc5ce88ae09ee5d35b452a9b0f451651d14880eb3097de1ef7410e28bbd6d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:6a61a3a0b6b162038d45596e6bc35d340bf38675e7b966963b003e5122176d89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59659091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ad935b7d10e9fa6a1b07ef9e3aaabdcdf7c4a8597696c68446c3997b06bd2b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:22:30 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 11:22:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:23:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8963af9ee51a56613fad37137117c61340e6ee1fc1ebb4673434e8392f7898`  
		Last Modified: Sat, 28 Apr 2018 11:31:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2e79e6344b985a5cfbedf9701a09d62a592d61cf1900b83ac4399abb0bee62`  
		Last Modified: Sat, 28 Apr 2018 11:31:22 GMT  
		Size: 29.4 MB (29378367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:ff18a2c51c338e7a7082a60c9343fb99ba4f54db01209d8ed2ed5cc13c1586f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:752329c751e7a3a9add4a77993470d1d6ba9b79d9ac5b7d08530fca0c26da27f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174073294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9455048366c59318b56541a60b9cbb75a1b486fd2e6c2fa0b9f9bc6c236bb6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 20 Mar 2018 10:12:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbfc0c1738fffa9f41d59b802c41c22b73047caa6f6c41f7861e42a3e78f407b`  
		Last Modified: Tue, 20 Mar 2018 10:27:24 GMT  
		Size: 116.3 MB (116349532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:0d74eb5b85fabe5d41c0a1b298611c9a10de9bbdd69042fd20c6d98cce1c97cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168152158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78577d6dd5fdea29df84fa60a573771a55ef7268df756975ecb263d5cf920a2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 19 Mar 2018 19:53:58 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bab84b0cfece90401c30b0f0f380b282050a351db8d5d0a4abc2d4160a52819`  
		Last Modified: Mon, 19 Mar 2018 19:57:36 GMT  
		Size: 114.2 MB (114167109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:65bc8432a88d4ebc140e67c714219ca3b5469482e9e9d41b1d7fb0a814443e5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176330457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fec0addfa532eb425fd4444dc6c3da27a789c22cb892fad4fa26871d68ac240`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:22:30 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 11:22:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:23:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 28 Apr 2018 11:30:06 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8963af9ee51a56613fad37137117c61340e6ee1fc1ebb4673434e8392f7898`  
		Last Modified: Sat, 28 Apr 2018 11:31:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2e79e6344b985a5cfbedf9701a09d62a592d61cf1900b83ac4399abb0bee62`  
		Last Modified: Sat, 28 Apr 2018 11:31:22 GMT  
		Size: 29.4 MB (29378367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf777ba502c0bbdba0d25fb34f00192cf7aba2e8a742f2e7d0e8b9b326d4ccee`  
		Last Modified: Sat, 28 Apr 2018 11:34:29 GMT  
		Size: 116.7 MB (116671366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:8b623252d7d7132bb6bc6fda7c354b934f8c8e6e0b070497beb3eaf5f4690148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:871bdfc7efa1cbde47ab5d40b5d906a872c0be3e15485b668b6dbfbf7948c400
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57723762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d01367944846abf84602767b03a50abfe7966936edbb9d6dd2d6b978fe00dc38`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 10:06:16 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 10:06:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 10:07:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80987e56f805b6d13c4054a0d3bfe4487de52388e40213cfd72f5441a57c3f0f`  
		Last Modified: Tue, 20 Mar 2018 10:25:23 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf43fe22001ef35f38319ed35104b4d307773ace3f4a9287785b98cda4f0670`  
		Last Modified: Tue, 20 Mar 2018 10:25:32 GMT  
		Size: 27.6 MB (27599292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:437631f07312f8973be0ba93fd3286a093084a4c515d2c97f6da24e9baba4533
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48190398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa034c18ef829198c048719f57c87888b28812b39fec5da35e436e872f52bbb5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:28 GMT
ADD file:901c5a711f269a7dd8f11eff27131cd2f6d2aee98d68f1e19b4ed954798e5d3f in / 
# Wed, 14 Mar 2018 12:27:29 GMT
CMD ["bash"]
# Tue, 20 Mar 2018 17:51:58 GMT
ENV MONO_VERSION=5.10.0.160
# Tue, 20 Mar 2018 17:52:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 20 Mar 2018 17:53:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b8c016a755ce56e2fbb5a9f179c7bde3f0742c21b2727356a1658fc7d973f46a`  
		Last Modified: Wed, 14 Mar 2018 12:39:21 GMT  
		Size: 26.3 MB (26290283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea02cced56959e0d5dc7d75fde9a2e5f2afc5ef25f5ea8792458c4511dbbad`  
		Last Modified: Tue, 20 Mar 2018 18:08:38 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79415ddf90d4857696503b5a4be8dfd8bee84de3cf5e8735781c50d77f6e20a`  
		Last Modified: Tue, 20 Mar 2018 18:08:46 GMT  
		Size: 21.9 MB (21898046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c126b78fa605acccab312cdf4b7be02a162533affb230fb637b4c979711ab3c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53985049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dbc5ce88ae09ee5d35b452a9b0f451651d14880eb3097de1ef7410e28bbd6d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:25:26 GMT
ADD file:0012468f66c7e5b0efd7217a1f29f5044d4dce5a19dcd39786aa7573bc927763 in / 
# Wed, 14 Mar 2018 17:25:26 GMT
CMD ["bash"]
# Mon, 19 Mar 2018 19:46:07 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 19 Mar 2018 19:46:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Mar 2018 19:47:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:784b6f32f75d9222c618727f66027b44ffa35120fc128790dfce4d1070befc90`  
		Last Modified: Wed, 14 Mar 2018 17:39:37 GMT  
		Size: 27.5 MB (27488177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5de54ab74d4942345bb68195cf8da61199cd8f2e1c15cd266b427316b74011`  
		Last Modified: Mon, 19 Mar 2018 19:54:34 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff69d7644d85db2724b07d1b31eb1f9f262b54ac5122eab80f7be63e2977ba64`  
		Last Modified: Mon, 19 Mar 2018 19:54:45 GMT  
		Size: 26.5 MB (26494806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:6a61a3a0b6b162038d45596e6bc35d340bf38675e7b966963b003e5122176d89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59659091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ad935b7d10e9fa6a1b07ef9e3aaabdcdf7c4a8597696c68446c3997b06bd2b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:22:30 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 11:22:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:23:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8963af9ee51a56613fad37137117c61340e6ee1fc1ebb4673434e8392f7898`  
		Last Modified: Sat, 28 Apr 2018 11:31:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2e79e6344b985a5cfbedf9701a09d62a592d61cf1900b83ac4399abb0bee62`  
		Last Modified: Sat, 28 Apr 2018 11:31:22 GMT  
		Size: 29.4 MB (29378367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

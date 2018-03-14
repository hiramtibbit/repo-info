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
-	[`mono:5.8.0.127`](#mono580127)
-	[`mono:5.8.0.127-slim`](#mono580127-slim)
-	[`mono:5.8.0-slim`](#mono580-slim)
-	[`mono:5.8-slim`](#mono58-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:e759334e7a01f53db2f03067a17cbce0b17e56e4b5e648502d94d4814eed26e1
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
$ docker pull mono@sha256:e759334e7a01f53db2f03067a17cbce0b17e56e4b5e648502d94d4814eed26e1
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
$ docker pull mono@sha256:e759334e7a01f53db2f03067a17cbce0b17e56e4b5e648502d94d4814eed26e1
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
$ docker pull mono@sha256:e759334e7a01f53db2f03067a17cbce0b17e56e4b5e648502d94d4814eed26e1
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
$ docker pull mono@sha256:9d874b3334e20cb80788625df5da239ace2dadf9e5a9920a091bbe4c5b57dcb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5` - linux; amd64

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

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:a24907da70c580c51e94d9bbe1bb74704e3cfafefbc74c34532ae4ad8ca5b715
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168759217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9a768f714dd70f56f3731b5aaf8577b3fdae875fe86aba6b815e305f665447`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 20:45:50 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 20:45:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 20:47:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 27 Feb 2018 20:53:16 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d28492f785decbd1b6a0011e0680a3a6c0f5f77406330a1ef628044d9fc18`  
		Last Modified: Tue, 27 Feb 2018 20:54:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e98d3a1525a25e75b10380643a5aa7f654f5a71a46e6441f247a31b97a84499`  
		Last Modified: Tue, 27 Feb 2018 20:54:21 GMT  
		Size: 26.3 MB (26258767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882396579a073b4a7bbeff0223d9158c13f9e5a60f3123de70380b2cbda19ee`  
		Last Modified: Tue, 27 Feb 2018 20:56:48 GMT  
		Size: 115.0 MB (115010256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:d7c9568f926aa763dbcc613d63827a9558e25cd3617f670fb3deb07442ce1ff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176848161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35810e1d40a00dd235ed947b13e6457a629cea1439a5f0471775a4eb136c64e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 02:02:15 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 02:02:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 02:03:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 27 Feb 2018 02:09:28 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72821c254faa67c4e9c36b9aa8d9c34d88984036cd0d4cd776a83af2c3e1f93`  
		Last Modified: Tue, 27 Feb 2018 02:29:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63759fd1c514ea99227042c8db724ab962baa81d5b4a97c4f3eb45ad7875857`  
		Last Modified: Tue, 27 Feb 2018 02:29:42 GMT  
		Size: 29.1 MB (29135824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64310fe25d5665f939a1a8e651bad1b34ac87f1bc0fca6b6017e514697e3e2b1`  
		Last Modified: Tue, 27 Feb 2018 03:00:55 GMT  
		Size: 117.4 MB (117437070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.4`

```console
$ docker pull mono@sha256:b1b4b6d3c2a2ed36054cdd76de6681a2f16e36e3dd70dbbe9af535cd0da6dbda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4` - linux; amd64

```console
$ docker pull mono@sha256:952466c6a038fe198d305a07010723e4b10fbac844195d29a8ab18d1b768b8e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167265378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e1934aeebbec1b21dc32de92af947be1c1c2958cdb7c7422da49f5d04e071a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:23:39 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 14 Mar 2018 07:23:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:24:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Mar 2018 07:36:33 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a18f924ca5279fae3fd3d71622a27021c791fa823dfe044d361dfb16626e29b`  
		Last Modified: Wed, 14 Mar 2018 07:38:37 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e614f17e8687dc6b4390e4924c68c0dc0e714a99ef7ebba1d358c0564a7c1d`  
		Last Modified: Wed, 14 Mar 2018 07:38:45 GMT  
		Size: 27.3 MB (27278932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff9092becf199dd4902ddb90008d60724d4d92c1eb29a8ca0e8dcf1ea944f79`  
		Last Modified: Wed, 14 Mar 2018 07:43:39 GMT  
		Size: 109.9 MB (109861981 bytes)  
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
$ docker pull mono@sha256:b1b4b6d3c2a2ed36054cdd76de6681a2f16e36e3dd70dbbe9af535cd0da6dbda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4.1` - linux; amd64

```console
$ docker pull mono@sha256:952466c6a038fe198d305a07010723e4b10fbac844195d29a8ab18d1b768b8e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167265378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e1934aeebbec1b21dc32de92af947be1c1c2958cdb7c7422da49f5d04e071a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:23:39 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 14 Mar 2018 07:23:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:24:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Mar 2018 07:36:33 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a18f924ca5279fae3fd3d71622a27021c791fa823dfe044d361dfb16626e29b`  
		Last Modified: Wed, 14 Mar 2018 07:38:37 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e614f17e8687dc6b4390e4924c68c0dc0e714a99ef7ebba1d358c0564a7c1d`  
		Last Modified: Wed, 14 Mar 2018 07:38:45 GMT  
		Size: 27.3 MB (27278932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff9092becf199dd4902ddb90008d60724d4d92c1eb29a8ca0e8dcf1ea944f79`  
		Last Modified: Wed, 14 Mar 2018 07:43:39 GMT  
		Size: 109.9 MB (109861981 bytes)  
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
$ docker pull mono@sha256:b1b4b6d3c2a2ed36054cdd76de6681a2f16e36e3dd70dbbe9af535cd0da6dbda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4.1.6` - linux; amd64

```console
$ docker pull mono@sha256:952466c6a038fe198d305a07010723e4b10fbac844195d29a8ab18d1b768b8e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167265378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e1934aeebbec1b21dc32de92af947be1c1c2958cdb7c7422da49f5d04e071a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:23:39 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 14 Mar 2018 07:23:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:24:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 14 Mar 2018 07:36:33 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a18f924ca5279fae3fd3d71622a27021c791fa823dfe044d361dfb16626e29b`  
		Last Modified: Wed, 14 Mar 2018 07:38:37 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e614f17e8687dc6b4390e4924c68c0dc0e714a99ef7ebba1d358c0564a7c1d`  
		Last Modified: Wed, 14 Mar 2018 07:38:45 GMT  
		Size: 27.3 MB (27278932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff9092becf199dd4902ddb90008d60724d4d92c1eb29a8ca0e8dcf1ea944f79`  
		Last Modified: Wed, 14 Mar 2018 07:43:39 GMT  
		Size: 109.9 MB (109861981 bytes)  
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
$ docker pull mono@sha256:ea42512174cb68718ed32846dc73d8526c6db5086ebbfecb1c6d4ff0efc8e697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4.1.6-slim` - linux; amd64

```console
$ docker pull mono@sha256:cadfae35c8dd651ff610f67c32e52a76134be85aaa4392e3c51a69fa7e9ffca1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57403397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e37862545268101f08eaebf7216716d3d258fc64326bc41ae2f402f1613adc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:23:39 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 14 Mar 2018 07:23:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:24:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a18f924ca5279fae3fd3d71622a27021c791fa823dfe044d361dfb16626e29b`  
		Last Modified: Wed, 14 Mar 2018 07:38:37 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e614f17e8687dc6b4390e4924c68c0dc0e714a99ef7ebba1d358c0564a7c1d`  
		Last Modified: Wed, 14 Mar 2018 07:38:45 GMT  
		Size: 27.3 MB (27278932 bytes)  
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
$ docker pull mono@sha256:ea42512174cb68718ed32846dc73d8526c6db5086ebbfecb1c6d4ff0efc8e697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:cadfae35c8dd651ff610f67c32e52a76134be85aaa4392e3c51a69fa7e9ffca1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57403397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e37862545268101f08eaebf7216716d3d258fc64326bc41ae2f402f1613adc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:23:39 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 14 Mar 2018 07:23:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:24:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a18f924ca5279fae3fd3d71622a27021c791fa823dfe044d361dfb16626e29b`  
		Last Modified: Wed, 14 Mar 2018 07:38:37 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e614f17e8687dc6b4390e4924c68c0dc0e714a99ef7ebba1d358c0564a7c1d`  
		Last Modified: Wed, 14 Mar 2018 07:38:45 GMT  
		Size: 27.3 MB (27278932 bytes)  
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
$ docker pull mono@sha256:ea42512174cb68718ed32846dc73d8526c6db5086ebbfecb1c6d4ff0efc8e697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.4-slim` - linux; amd64

```console
$ docker pull mono@sha256:cadfae35c8dd651ff610f67c32e52a76134be85aaa4392e3c51a69fa7e9ffca1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57403397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e37862545268101f08eaebf7216716d3d258fc64326bc41ae2f402f1613adc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:23:39 GMT
ENV MONO_VERSION=5.4.1.6
# Wed, 14 Mar 2018 07:23:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 14 Mar 2018 07:24:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a18f924ca5279fae3fd3d71622a27021c791fa823dfe044d361dfb16626e29b`  
		Last Modified: Wed, 14 Mar 2018 07:38:37 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e614f17e8687dc6b4390e4924c68c0dc0e714a99ef7ebba1d358c0564a7c1d`  
		Last Modified: Wed, 14 Mar 2018 07:38:45 GMT  
		Size: 27.3 MB (27278932 bytes)  
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
$ docker pull mono@sha256:9d874b3334e20cb80788625df5da239ace2dadf9e5a9920a091bbe4c5b57dcb9
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
$ docker pull mono@sha256:a24907da70c580c51e94d9bbe1bb74704e3cfafefbc74c34532ae4ad8ca5b715
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168759217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9a768f714dd70f56f3731b5aaf8577b3fdae875fe86aba6b815e305f665447`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 20:45:50 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 20:45:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 20:47:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 27 Feb 2018 20:53:16 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d28492f785decbd1b6a0011e0680a3a6c0f5f77406330a1ef628044d9fc18`  
		Last Modified: Tue, 27 Feb 2018 20:54:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e98d3a1525a25e75b10380643a5aa7f654f5a71a46e6441f247a31b97a84499`  
		Last Modified: Tue, 27 Feb 2018 20:54:21 GMT  
		Size: 26.3 MB (26258767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882396579a073b4a7bbeff0223d9158c13f9e5a60f3123de70380b2cbda19ee`  
		Last Modified: Tue, 27 Feb 2018 20:56:48 GMT  
		Size: 115.0 MB (115010256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8` - linux; 386

```console
$ docker pull mono@sha256:d7c9568f926aa763dbcc613d63827a9558e25cd3617f670fb3deb07442ce1ff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176848161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35810e1d40a00dd235ed947b13e6457a629cea1439a5f0471775a4eb136c64e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 02:02:15 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 02:02:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 02:03:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 27 Feb 2018 02:09:28 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72821c254faa67c4e9c36b9aa8d9c34d88984036cd0d4cd776a83af2c3e1f93`  
		Last Modified: Tue, 27 Feb 2018 02:29:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63759fd1c514ea99227042c8db724ab962baa81d5b4a97c4f3eb45ad7875857`  
		Last Modified: Tue, 27 Feb 2018 02:29:42 GMT  
		Size: 29.1 MB (29135824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64310fe25d5665f939a1a8e651bad1b34ac87f1bc0fca6b6017e514697e3e2b1`  
		Last Modified: Tue, 27 Feb 2018 03:00:55 GMT  
		Size: 117.4 MB (117437070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0`

```console
$ docker pull mono@sha256:9d874b3334e20cb80788625df5da239ace2dadf9e5a9920a091bbe4c5b57dcb9
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
$ docker pull mono@sha256:a24907da70c580c51e94d9bbe1bb74704e3cfafefbc74c34532ae4ad8ca5b715
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168759217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9a768f714dd70f56f3731b5aaf8577b3fdae875fe86aba6b815e305f665447`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 20:45:50 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 20:45:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 20:47:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 27 Feb 2018 20:53:16 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d28492f785decbd1b6a0011e0680a3a6c0f5f77406330a1ef628044d9fc18`  
		Last Modified: Tue, 27 Feb 2018 20:54:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e98d3a1525a25e75b10380643a5aa7f654f5a71a46e6441f247a31b97a84499`  
		Last Modified: Tue, 27 Feb 2018 20:54:21 GMT  
		Size: 26.3 MB (26258767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882396579a073b4a7bbeff0223d9158c13f9e5a60f3123de70380b2cbda19ee`  
		Last Modified: Tue, 27 Feb 2018 20:56:48 GMT  
		Size: 115.0 MB (115010256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0` - linux; 386

```console
$ docker pull mono@sha256:d7c9568f926aa763dbcc613d63827a9558e25cd3617f670fb3deb07442ce1ff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176848161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35810e1d40a00dd235ed947b13e6457a629cea1439a5f0471775a4eb136c64e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 02:02:15 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 02:02:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 02:03:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 27 Feb 2018 02:09:28 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72821c254faa67c4e9c36b9aa8d9c34d88984036cd0d4cd776a83af2c3e1f93`  
		Last Modified: Tue, 27 Feb 2018 02:29:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63759fd1c514ea99227042c8db724ab962baa81d5b4a97c4f3eb45ad7875857`  
		Last Modified: Tue, 27 Feb 2018 02:29:42 GMT  
		Size: 29.1 MB (29135824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64310fe25d5665f939a1a8e651bad1b34ac87f1bc0fca6b6017e514697e3e2b1`  
		Last Modified: Tue, 27 Feb 2018 03:00:55 GMT  
		Size: 117.4 MB (117437070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0.127`

```console
$ docker pull mono@sha256:9d874b3334e20cb80788625df5da239ace2dadf9e5a9920a091bbe4c5b57dcb9
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
$ docker pull mono@sha256:a24907da70c580c51e94d9bbe1bb74704e3cfafefbc74c34532ae4ad8ca5b715
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168759217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9a768f714dd70f56f3731b5aaf8577b3fdae875fe86aba6b815e305f665447`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 20:45:50 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 20:45:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 20:47:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 27 Feb 2018 20:53:16 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d28492f785decbd1b6a0011e0680a3a6c0f5f77406330a1ef628044d9fc18`  
		Last Modified: Tue, 27 Feb 2018 20:54:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e98d3a1525a25e75b10380643a5aa7f654f5a71a46e6441f247a31b97a84499`  
		Last Modified: Tue, 27 Feb 2018 20:54:21 GMT  
		Size: 26.3 MB (26258767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882396579a073b4a7bbeff0223d9158c13f9e5a60f3123de70380b2cbda19ee`  
		Last Modified: Tue, 27 Feb 2018 20:56:48 GMT  
		Size: 115.0 MB (115010256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.127` - linux; 386

```console
$ docker pull mono@sha256:d7c9568f926aa763dbcc613d63827a9558e25cd3617f670fb3deb07442ce1ff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176848161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35810e1d40a00dd235ed947b13e6457a629cea1439a5f0471775a4eb136c64e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 02:02:15 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 02:02:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 02:03:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 27 Feb 2018 02:09:28 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72821c254faa67c4e9c36b9aa8d9c34d88984036cd0d4cd776a83af2c3e1f93`  
		Last Modified: Tue, 27 Feb 2018 02:29:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63759fd1c514ea99227042c8db724ab962baa81d5b4a97c4f3eb45ad7875857`  
		Last Modified: Tue, 27 Feb 2018 02:29:42 GMT  
		Size: 29.1 MB (29135824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64310fe25d5665f939a1a8e651bad1b34ac87f1bc0fca6b6017e514697e3e2b1`  
		Last Modified: Tue, 27 Feb 2018 03:00:55 GMT  
		Size: 117.4 MB (117437070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0.127-slim`

```console
$ docker pull mono@sha256:c66ba6a410a045888e44c9107fe5aca259b23408178950797a785a0057f9044b
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
$ docker pull mono@sha256:7ad39ef79a905ca6394543ad4ff253e71efefb79e7dc09cab2e605002f1f940f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48075484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091cc087ded9a75d765644935f80b2e3d6c0fa172a26ae437baf4ae4a30f0933`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 18:51:46 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 18:51:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 18:52:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a9f1a38323e4c267980074319a664dd37ecc55d35f6b7232de81d34a791569`  
		Last Modified: Tue, 27 Feb 2018 19:06:54 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece98dbb5e417b2b234117bc037a0072179ca76c7d74da429c1d458177f2ae88`  
		Last Modified: Tue, 27 Feb 2018 19:07:02 GMT  
		Size: 21.8 MB (21783170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.127-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1aa7e630e4b758bbd33f85349869de11c890612ae96bb406dedbf19ddea6bda4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68fc4fd41bef36bfa98c495a2ace62fbf9fbc4c4d6956fa90734beff050f1f3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 20:45:50 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 20:45:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 20:47:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d28492f785decbd1b6a0011e0680a3a6c0f5f77406330a1ef628044d9fc18`  
		Last Modified: Tue, 27 Feb 2018 20:54:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e98d3a1525a25e75b10380643a5aa7f654f5a71a46e6441f247a31b97a84499`  
		Last Modified: Tue, 27 Feb 2018 20:54:21 GMT  
		Size: 26.3 MB (26258767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.127-slim` - linux; 386

```console
$ docker pull mono@sha256:8bb8ce19f4582610e3ec948d11bb21bac165fed4579f4ee788cccc58426c6860
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59411091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09319bcc376925b78d888cf200bc523a691db4a7e289349dba5d32a3e723fbed`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 02:02:15 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 02:02:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 02:03:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72821c254faa67c4e9c36b9aa8d9c34d88984036cd0d4cd776a83af2c3e1f93`  
		Last Modified: Tue, 27 Feb 2018 02:29:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63759fd1c514ea99227042c8db724ab962baa81d5b4a97c4f3eb45ad7875857`  
		Last Modified: Tue, 27 Feb 2018 02:29:42 GMT  
		Size: 29.1 MB (29135824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8.0-slim`

```console
$ docker pull mono@sha256:c66ba6a410a045888e44c9107fe5aca259b23408178950797a785a0057f9044b
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
$ docker pull mono@sha256:7ad39ef79a905ca6394543ad4ff253e71efefb79e7dc09cab2e605002f1f940f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48075484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091cc087ded9a75d765644935f80b2e3d6c0fa172a26ae437baf4ae4a30f0933`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 18:51:46 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 18:51:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 18:52:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a9f1a38323e4c267980074319a664dd37ecc55d35f6b7232de81d34a791569`  
		Last Modified: Tue, 27 Feb 2018 19:06:54 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece98dbb5e417b2b234117bc037a0072179ca76c7d74da429c1d458177f2ae88`  
		Last Modified: Tue, 27 Feb 2018 19:07:02 GMT  
		Size: 21.8 MB (21783170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1aa7e630e4b758bbd33f85349869de11c890612ae96bb406dedbf19ddea6bda4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68fc4fd41bef36bfa98c495a2ace62fbf9fbc4c4d6956fa90734beff050f1f3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 20:45:50 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 20:45:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 20:47:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d28492f785decbd1b6a0011e0680a3a6c0f5f77406330a1ef628044d9fc18`  
		Last Modified: Tue, 27 Feb 2018 20:54:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e98d3a1525a25e75b10380643a5aa7f654f5a71a46e6441f247a31b97a84499`  
		Last Modified: Tue, 27 Feb 2018 20:54:21 GMT  
		Size: 26.3 MB (26258767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0-slim` - linux; 386

```console
$ docker pull mono@sha256:8bb8ce19f4582610e3ec948d11bb21bac165fed4579f4ee788cccc58426c6860
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59411091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09319bcc376925b78d888cf200bc523a691db4a7e289349dba5d32a3e723fbed`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 02:02:15 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 02:02:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 02:03:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72821c254faa67c4e9c36b9aa8d9c34d88984036cd0d4cd776a83af2c3e1f93`  
		Last Modified: Tue, 27 Feb 2018 02:29:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63759fd1c514ea99227042c8db724ab962baa81d5b4a97c4f3eb45ad7875857`  
		Last Modified: Tue, 27 Feb 2018 02:29:42 GMT  
		Size: 29.1 MB (29135824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.8-slim`

```console
$ docker pull mono@sha256:c66ba6a410a045888e44c9107fe5aca259b23408178950797a785a0057f9044b
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
$ docker pull mono@sha256:7ad39ef79a905ca6394543ad4ff253e71efefb79e7dc09cab2e605002f1f940f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48075484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091cc087ded9a75d765644935f80b2e3d6c0fa172a26ae437baf4ae4a30f0933`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 18:51:46 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 18:51:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 18:52:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a9f1a38323e4c267980074319a664dd37ecc55d35f6b7232de81d34a791569`  
		Last Modified: Tue, 27 Feb 2018 19:06:54 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece98dbb5e417b2b234117bc037a0072179ca76c7d74da429c1d458177f2ae88`  
		Last Modified: Tue, 27 Feb 2018 19:07:02 GMT  
		Size: 21.8 MB (21783170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1aa7e630e4b758bbd33f85349869de11c890612ae96bb406dedbf19ddea6bda4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68fc4fd41bef36bfa98c495a2ace62fbf9fbc4c4d6956fa90734beff050f1f3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 20:45:50 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 20:45:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 20:47:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d28492f785decbd1b6a0011e0680a3a6c0f5f77406330a1ef628044d9fc18`  
		Last Modified: Tue, 27 Feb 2018 20:54:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e98d3a1525a25e75b10380643a5aa7f654f5a71a46e6441f247a31b97a84499`  
		Last Modified: Tue, 27 Feb 2018 20:54:21 GMT  
		Size: 26.3 MB (26258767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8-slim` - linux; 386

```console
$ docker pull mono@sha256:8bb8ce19f4582610e3ec948d11bb21bac165fed4579f4ee788cccc58426c6860
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59411091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09319bcc376925b78d888cf200bc523a691db4a7e289349dba5d32a3e723fbed`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 02:02:15 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 02:02:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 02:03:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72821c254faa67c4e9c36b9aa8d9c34d88984036cd0d4cd776a83af2c3e1f93`  
		Last Modified: Tue, 27 Feb 2018 02:29:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63759fd1c514ea99227042c8db724ab962baa81d5b4a97c4f3eb45ad7875857`  
		Last Modified: Tue, 27 Feb 2018 02:29:42 GMT  
		Size: 29.1 MB (29135824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:c66ba6a410a045888e44c9107fe5aca259b23408178950797a785a0057f9044b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

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

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:7ad39ef79a905ca6394543ad4ff253e71efefb79e7dc09cab2e605002f1f940f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48075484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091cc087ded9a75d765644935f80b2e3d6c0fa172a26ae437baf4ae4a30f0933`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 18:51:46 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 18:51:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 18:52:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a9f1a38323e4c267980074319a664dd37ecc55d35f6b7232de81d34a791569`  
		Last Modified: Tue, 27 Feb 2018 19:06:54 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece98dbb5e417b2b234117bc037a0072179ca76c7d74da429c1d458177f2ae88`  
		Last Modified: Tue, 27 Feb 2018 19:07:02 GMT  
		Size: 21.8 MB (21783170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1aa7e630e4b758bbd33f85349869de11c890612ae96bb406dedbf19ddea6bda4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68fc4fd41bef36bfa98c495a2ace62fbf9fbc4c4d6956fa90734beff050f1f3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 20:45:50 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 20:45:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 20:47:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d28492f785decbd1b6a0011e0680a3a6c0f5f77406330a1ef628044d9fc18`  
		Last Modified: Tue, 27 Feb 2018 20:54:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e98d3a1525a25e75b10380643a5aa7f654f5a71a46e6441f247a31b97a84499`  
		Last Modified: Tue, 27 Feb 2018 20:54:21 GMT  
		Size: 26.3 MB (26258767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:8bb8ce19f4582610e3ec948d11bb21bac165fed4579f4ee788cccc58426c6860
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59411091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09319bcc376925b78d888cf200bc523a691db4a7e289349dba5d32a3e723fbed`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 02:02:15 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 02:02:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 02:03:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72821c254faa67c4e9c36b9aa8d9c34d88984036cd0d4cd776a83af2c3e1f93`  
		Last Modified: Tue, 27 Feb 2018 02:29:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63759fd1c514ea99227042c8db724ab962baa81d5b4a97c4f3eb45ad7875857`  
		Last Modified: Tue, 27 Feb 2018 02:29:42 GMT  
		Size: 29.1 MB (29135824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:9d874b3334e20cb80788625df5da239ace2dadf9e5a9920a091bbe4c5b57dcb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

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

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:a24907da70c580c51e94d9bbe1bb74704e3cfafefbc74c34532ae4ad8ca5b715
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168759217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9a768f714dd70f56f3731b5aaf8577b3fdae875fe86aba6b815e305f665447`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 20:45:50 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 20:45:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 20:47:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 27 Feb 2018 20:53:16 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d28492f785decbd1b6a0011e0680a3a6c0f5f77406330a1ef628044d9fc18`  
		Last Modified: Tue, 27 Feb 2018 20:54:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e98d3a1525a25e75b10380643a5aa7f654f5a71a46e6441f247a31b97a84499`  
		Last Modified: Tue, 27 Feb 2018 20:54:21 GMT  
		Size: 26.3 MB (26258767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882396579a073b4a7bbeff0223d9158c13f9e5a60f3123de70380b2cbda19ee`  
		Last Modified: Tue, 27 Feb 2018 20:56:48 GMT  
		Size: 115.0 MB (115010256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:d7c9568f926aa763dbcc613d63827a9558e25cd3617f670fb3deb07442ce1ff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.8 MB (176848161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c35810e1d40a00dd235ed947b13e6457a629cea1439a5f0471775a4eb136c64e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 02:02:15 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 02:02:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 02:03:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 27 Feb 2018 02:09:28 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72821c254faa67c4e9c36b9aa8d9c34d88984036cd0d4cd776a83af2c3e1f93`  
		Last Modified: Tue, 27 Feb 2018 02:29:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63759fd1c514ea99227042c8db724ab962baa81d5b4a97c4f3eb45ad7875857`  
		Last Modified: Tue, 27 Feb 2018 02:29:42 GMT  
		Size: 29.1 MB (29135824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64310fe25d5665f939a1a8e651bad1b34ac87f1bc0fca6b6017e514697e3e2b1`  
		Last Modified: Tue, 27 Feb 2018 03:00:55 GMT  
		Size: 117.4 MB (117437070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:c66ba6a410a045888e44c9107fe5aca259b23408178950797a785a0057f9044b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

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

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:7ad39ef79a905ca6394543ad4ff253e71efefb79e7dc09cab2e605002f1f940f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48075484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091cc087ded9a75d765644935f80b2e3d6c0fa172a26ae437baf4ae4a30f0933`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 18:51:46 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 18:51:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 18:52:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a9f1a38323e4c267980074319a664dd37ecc55d35f6b7232de81d34a791569`  
		Last Modified: Tue, 27 Feb 2018 19:06:54 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece98dbb5e417b2b234117bc037a0072179ca76c7d74da429c1d458177f2ae88`  
		Last Modified: Tue, 27 Feb 2018 19:07:02 GMT  
		Size: 21.8 MB (21783170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1aa7e630e4b758bbd33f85349869de11c890612ae96bb406dedbf19ddea6bda4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53748961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68fc4fd41bef36bfa98c495a2ace62fbf9fbc4c4d6956fa90734beff050f1f3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:24:43 GMT
ADD file:f171abe3d6f43c5731dbf58a23e7291105d23c12d754f5212a2413a0f43bc385 in / 
# Thu, 15 Feb 2018 18:24:44 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 20:45:50 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 20:45:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 20:47:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1421cbf34589e9e13d16d60bcfa4e8c0df2cefca676bac18a5b171b3635f916f`  
		Last Modified: Thu, 15 Feb 2018 00:52:07 GMT  
		Size: 27.5 MB (27488128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d28492f785decbd1b6a0011e0680a3a6c0f5f77406330a1ef628044d9fc18`  
		Last Modified: Tue, 27 Feb 2018 20:54:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e98d3a1525a25e75b10380643a5aa7f654f5a71a46e6441f247a31b97a84499`  
		Last Modified: Tue, 27 Feb 2018 20:54:21 GMT  
		Size: 26.3 MB (26258767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:8bb8ce19f4582610e3ec948d11bb21bac165fed4579f4ee788cccc58426c6860
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.4 MB (59411091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09319bcc376925b78d888cf200bc523a691db4a7e289349dba5d32a3e723fbed`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Tue, 27 Feb 2018 02:02:15 GMT
ENV MONO_VERSION=5.8.0.127
# Tue, 27 Feb 2018 02:02:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 27 Feb 2018 02:03:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72821c254faa67c4e9c36b9aa8d9c34d88984036cd0d4cd776a83af2c3e1f93`  
		Last Modified: Tue, 27 Feb 2018 02:29:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63759fd1c514ea99227042c8db724ab962baa81d5b4a97c4f3eb45ad7875857`  
		Last Modified: Tue, 27 Feb 2018 02:29:42 GMT  
		Size: 29.1 MB (29135824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

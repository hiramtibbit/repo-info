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
$ docker pull mono@sha256:6bcbf0debba316a309a068d88ac6687f4399ab64d4684bd78a2d23ea3ebdf5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

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

## `mono:5.10`

```console
$ docker pull mono@sha256:6bcbf0debba316a309a068d88ac6687f4399ab64d4684bd78a2d23ea3ebdf5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

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

## `mono:5.10.0`

```console
$ docker pull mono@sha256:6bcbf0debba316a309a068d88ac6687f4399ab64d4684bd78a2d23ea3ebdf5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

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

## `mono:5.10.0.160`

```console
$ docker pull mono@sha256:6bcbf0debba316a309a068d88ac6687f4399ab64d4684bd78a2d23ea3ebdf5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

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

## `mono:5.10.0.160-slim`

```console
$ docker pull mono@sha256:1e0e4edcea532434b6ff4b3322a52f762b98c7e87a5a1b6a2417e5bbf8a09583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

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

## `mono:5.10.0-slim`

```console
$ docker pull mono@sha256:1e0e4edcea532434b6ff4b3322a52f762b98c7e87a5a1b6a2417e5bbf8a09583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

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

## `mono:5.10-slim`

```console
$ docker pull mono@sha256:1e0e4edcea532434b6ff4b3322a52f762b98c7e87a5a1b6a2417e5bbf8a09583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

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

## `mono:5.8`

```console
$ docker pull mono@sha256:7eb698a27f6de28ffdc65b9e8b29282b10ee93bf3e0c1622c2d1fbada4af87ff
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
$ docker pull mono@sha256:7eb698a27f6de28ffdc65b9e8b29282b10ee93bf3e0c1622c2d1fbada4af87ff
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
$ docker pull mono@sha256:7eb698a27f6de28ffdc65b9e8b29282b10ee93bf3e0c1622c2d1fbada4af87ff
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
$ docker pull mono@sha256:92f06730cc999a2d566315a4557da34b6bb111a01a5626017be9e47f906bcd77
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
$ docker pull mono@sha256:92f06730cc999a2d566315a4557da34b6bb111a01a5626017be9e47f906bcd77
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
$ docker pull mono@sha256:92f06730cc999a2d566315a4557da34b6bb111a01a5626017be9e47f906bcd77
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
$ docker pull mono@sha256:1e0e4edcea532434b6ff4b3322a52f762b98c7e87a5a1b6a2417e5bbf8a09583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

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

## `mono:latest`

```console
$ docker pull mono@sha256:6bcbf0debba316a309a068d88ac6687f4399ab64d4684bd78a2d23ea3ebdf5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

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

## `mono:slim`

```console
$ docker pull mono@sha256:1e0e4edcea532434b6ff4b3322a52f762b98c7e87a5a1b6a2417e5bbf8a09583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

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

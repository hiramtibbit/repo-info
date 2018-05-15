<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:4`](#mono4)
-	[`mono:4.8`](#mono48)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:5`](#mono5)
-	[`mono:5.10`](#mono510)
-	[`mono:5.10.1`](#mono5101)
-	[`mono:5.10.1.47`](#mono510147)
-	[`mono:5.10.1.47-slim`](#mono510147-slim)
-	[`mono:5.10.1-slim`](#mono5101-slim)
-	[`mono:5.10-slim`](#mono510-slim)
-	[`mono:5.12`](#mono512)
-	[`mono:5.12.0`](#mono5120)
-	[`mono:5.12.0.226`](#mono5120226)
-	[`mono:5.12.0.226-slim`](#mono5120226-slim)
-	[`mono:5.12.0-slim`](#mono5120-slim)
-	[`mono:5.12-slim`](#mono512-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:23eb7da6c0eb585e23f459b65ee10535c701c0f593a1658ebda2dff8509bfa3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:1286d9f3e9c572f4a2615545aa03d870646fb8280bb58624748d7b2ea3b6536d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153048535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217e7b02e3b1374add1e46ab8f4f9f8fd205f6304cf57f11329afa5437831448`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 01:03:37 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 30 Apr 2018 01:03:37 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 30 Apr 2018 01:03:53 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 01:03:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 01:05:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f28b84d2475d790887dc8fd71415ff2481fc645fb6a00ff1fa875e40f70712`  
		Last Modified: Mon, 30 Apr 2018 02:03:42 GMT  
		Size: 6.4 MB (6441209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bc7b8faaef5eb3d5d1d09e4f493034f594c3e60165aa2096720768be97eaca`  
		Last Modified: Mon, 30 Apr 2018 02:03:40 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f2a835fe50a5132ca9f9cb92209905891156f12dd81e9567598b3663d29ab8`  
		Last Modified: Mon, 30 Apr 2018 02:04:05 GMT  
		Size: 107.2 MB (107238272 bytes)  
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
$ docker pull mono@sha256:23eb7da6c0eb585e23f459b65ee10535c701c0f593a1658ebda2dff8509bfa3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:1286d9f3e9c572f4a2615545aa03d870646fb8280bb58624748d7b2ea3b6536d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153048535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217e7b02e3b1374add1e46ab8f4f9f8fd205f6304cf57f11329afa5437831448`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 01:03:37 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 30 Apr 2018 01:03:37 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 30 Apr 2018 01:03:53 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 01:03:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 01:05:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f28b84d2475d790887dc8fd71415ff2481fc645fb6a00ff1fa875e40f70712`  
		Last Modified: Mon, 30 Apr 2018 02:03:42 GMT  
		Size: 6.4 MB (6441209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bc7b8faaef5eb3d5d1d09e4f493034f594c3e60165aa2096720768be97eaca`  
		Last Modified: Mon, 30 Apr 2018 02:03:40 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f2a835fe50a5132ca9f9cb92209905891156f12dd81e9567598b3663d29ab8`  
		Last Modified: Mon, 30 Apr 2018 02:04:05 GMT  
		Size: 107.2 MB (107238272 bytes)  
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
$ docker pull mono@sha256:23eb7da6c0eb585e23f459b65ee10535c701c0f593a1658ebda2dff8509bfa3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:1286d9f3e9c572f4a2615545aa03d870646fb8280bb58624748d7b2ea3b6536d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153048535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217e7b02e3b1374add1e46ab8f4f9f8fd205f6304cf57f11329afa5437831448`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 01:03:37 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 30 Apr 2018 01:03:37 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 30 Apr 2018 01:03:53 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 01:03:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 01:05:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f28b84d2475d790887dc8fd71415ff2481fc645fb6a00ff1fa875e40f70712`  
		Last Modified: Mon, 30 Apr 2018 02:03:42 GMT  
		Size: 6.4 MB (6441209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bc7b8faaef5eb3d5d1d09e4f493034f594c3e60165aa2096720768be97eaca`  
		Last Modified: Mon, 30 Apr 2018 02:03:40 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f2a835fe50a5132ca9f9cb92209905891156f12dd81e9567598b3663d29ab8`  
		Last Modified: Mon, 30 Apr 2018 02:04:05 GMT  
		Size: 107.2 MB (107238272 bytes)  
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
$ docker pull mono@sha256:23eb7da6c0eb585e23f459b65ee10535c701c0f593a1658ebda2dff8509bfa3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:1286d9f3e9c572f4a2615545aa03d870646fb8280bb58624748d7b2ea3b6536d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153048535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217e7b02e3b1374add1e46ab8f4f9f8fd205f6304cf57f11329afa5437831448`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 01:03:37 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 30 Apr 2018 01:03:37 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 30 Apr 2018 01:03:53 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 01:03:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 01:05:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f28b84d2475d790887dc8fd71415ff2481fc645fb6a00ff1fa875e40f70712`  
		Last Modified: Mon, 30 Apr 2018 02:03:42 GMT  
		Size: 6.4 MB (6441209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bc7b8faaef5eb3d5d1d09e4f493034f594c3e60165aa2096720768be97eaca`  
		Last Modified: Mon, 30 Apr 2018 02:03:40 GMT  
		Size: 29.9 KB (29912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f2a835fe50a5132ca9f9cb92209905891156f12dd81e9567598b3663d29ab8`  
		Last Modified: Mon, 30 Apr 2018 02:04:05 GMT  
		Size: 107.2 MB (107238272 bytes)  
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
$ docker pull mono@sha256:68fa1f0f359263b29843cd90a42e95513af9e10baf2fac443e674bec2641b171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:b3fd87468b84282f8f1a577aed1c72fcd03fcf0d30237b9d81c5ddb80db08c0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178587784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78807956cbb8db5e8af4626014037d4c51d9900e1e7b748a716a9a91b55c75d6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:30:25 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 15 May 2018 18:30:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 15 May 2018 18:34:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe7e083e5a7dcb0fd535b2e6bca578462b1c882a82e392e6c152af889d05bda`  
		Last Modified: Tue, 15 May 2018 18:41:25 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc1b98bc283f79f52b654779fa9ad1f659d72332e992e69e0813b6ef598861`  
		Last Modified: Tue, 15 May 2018 18:41:35 GMT  
		Size: 27.8 MB (27758916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b9d4da824d858fe32e011231112dc35c1f6410aac11bb5691a79730e62c436`  
		Last Modified: Tue, 15 May 2018 18:43:10 GMT  
		Size: 120.7 MB (120699504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10`

```console
$ docker pull mono@sha256:1f9d966f1371dc9cd8d7b40bbf51dde0367fa810103c92ac17fef59a54ae3c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.10` - linux; amd64

```console
$ docker pull mono@sha256:5df3274583f86f62047a090c6feaf3bd02b5bdb8280b8ab992774107f2e3e599
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175562022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45111a3ec75913011365c499e2dd1f0999677ff9c0e102589b52c83a0db5df10`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:32:07 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 15 May 2018 18:32:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 15 May 2018 18:36:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfa59e0bf68536ab1062fdfeafc5855b7ebcfe7832607375c9951239bba9cb`  
		Last Modified: Tue, 15 May 2018 18:42:11 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43502210ec4a196a3a332016719f60ce48939e2df1ac8ac402037fbacc93696b`  
		Last Modified: Tue, 15 May 2018 18:42:18 GMT  
		Size: 27.6 MB (27596890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033fa65d10d543ec63662d585b84bc678ba60c102b5e54bfbc2effeb55c48c82`  
		Last Modified: Tue, 15 May 2018 18:44:09 GMT  
		Size: 117.8 MB (117835766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1`

```console
$ docker pull mono@sha256:1f9d966f1371dc9cd8d7b40bbf51dde0367fa810103c92ac17fef59a54ae3c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.10.1` - linux; amd64

```console
$ docker pull mono@sha256:5df3274583f86f62047a090c6feaf3bd02b5bdb8280b8ab992774107f2e3e599
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175562022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45111a3ec75913011365c499e2dd1f0999677ff9c0e102589b52c83a0db5df10`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:32:07 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 15 May 2018 18:32:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 15 May 2018 18:36:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfa59e0bf68536ab1062fdfeafc5855b7ebcfe7832607375c9951239bba9cb`  
		Last Modified: Tue, 15 May 2018 18:42:11 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43502210ec4a196a3a332016719f60ce48939e2df1ac8ac402037fbacc93696b`  
		Last Modified: Tue, 15 May 2018 18:42:18 GMT  
		Size: 27.6 MB (27596890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033fa65d10d543ec63662d585b84bc678ba60c102b5e54bfbc2effeb55c48c82`  
		Last Modified: Tue, 15 May 2018 18:44:09 GMT  
		Size: 117.8 MB (117835766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1.47`

```console
$ docker pull mono@sha256:1f9d966f1371dc9cd8d7b40bbf51dde0367fa810103c92ac17fef59a54ae3c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.10.1.47` - linux; amd64

```console
$ docker pull mono@sha256:5df3274583f86f62047a090c6feaf3bd02b5bdb8280b8ab992774107f2e3e599
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175562022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45111a3ec75913011365c499e2dd1f0999677ff9c0e102589b52c83a0db5df10`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:32:07 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 15 May 2018 18:32:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 15 May 2018 18:36:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfa59e0bf68536ab1062fdfeafc5855b7ebcfe7832607375c9951239bba9cb`  
		Last Modified: Tue, 15 May 2018 18:42:11 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43502210ec4a196a3a332016719f60ce48939e2df1ac8ac402037fbacc93696b`  
		Last Modified: Tue, 15 May 2018 18:42:18 GMT  
		Size: 27.6 MB (27596890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033fa65d10d543ec63662d585b84bc678ba60c102b5e54bfbc2effeb55c48c82`  
		Last Modified: Tue, 15 May 2018 18:44:09 GMT  
		Size: 117.8 MB (117835766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1.47-slim`

```console
$ docker pull mono@sha256:0d7405917f9e42519e9adaccd598463debb6515390c81a262a4b34b380cbfe9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.10.1.47-slim` - linux; amd64

```console
$ docker pull mono@sha256:37eadf322061e3836505319031d7760348c4ae7ab55cee5f8c4b45219234524d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57726256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84635c260c336730ef0c1b2ebf97807c63161a132ea92a5e4e7acc67415dc202`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:32:07 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 15 May 2018 18:32:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfa59e0bf68536ab1062fdfeafc5855b7ebcfe7832607375c9951239bba9cb`  
		Last Modified: Tue, 15 May 2018 18:42:11 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43502210ec4a196a3a332016719f60ce48939e2df1ac8ac402037fbacc93696b`  
		Last Modified: Tue, 15 May 2018 18:42:18 GMT  
		Size: 27.6 MB (27596890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1-slim`

```console
$ docker pull mono@sha256:0d7405917f9e42519e9adaccd598463debb6515390c81a262a4b34b380cbfe9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.10.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:37eadf322061e3836505319031d7760348c4ae7ab55cee5f8c4b45219234524d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57726256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84635c260c336730ef0c1b2ebf97807c63161a132ea92a5e4e7acc67415dc202`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:32:07 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 15 May 2018 18:32:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfa59e0bf68536ab1062fdfeafc5855b7ebcfe7832607375c9951239bba9cb`  
		Last Modified: Tue, 15 May 2018 18:42:11 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43502210ec4a196a3a332016719f60ce48939e2df1ac8ac402037fbacc93696b`  
		Last Modified: Tue, 15 May 2018 18:42:18 GMT  
		Size: 27.6 MB (27596890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10-slim`

```console
$ docker pull mono@sha256:0d7405917f9e42519e9adaccd598463debb6515390c81a262a4b34b380cbfe9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.10-slim` - linux; amd64

```console
$ docker pull mono@sha256:37eadf322061e3836505319031d7760348c4ae7ab55cee5f8c4b45219234524d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57726256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84635c260c336730ef0c1b2ebf97807c63161a132ea92a5e4e7acc67415dc202`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:32:07 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 15 May 2018 18:32:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0bfa59e0bf68536ab1062fdfeafc5855b7ebcfe7832607375c9951239bba9cb`  
		Last Modified: Tue, 15 May 2018 18:42:11 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43502210ec4a196a3a332016719f60ce48939e2df1ac8ac402037fbacc93696b`  
		Last Modified: Tue, 15 May 2018 18:42:18 GMT  
		Size: 27.6 MB (27596890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12`

```console
$ docker pull mono@sha256:68fa1f0f359263b29843cd90a42e95513af9e10baf2fac443e674bec2641b171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.12` - linux; amd64

```console
$ docker pull mono@sha256:b3fd87468b84282f8f1a577aed1c72fcd03fcf0d30237b9d81c5ddb80db08c0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178587784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78807956cbb8db5e8af4626014037d4c51d9900e1e7b748a716a9a91b55c75d6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:30:25 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 15 May 2018 18:30:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 15 May 2018 18:34:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe7e083e5a7dcb0fd535b2e6bca578462b1c882a82e392e6c152af889d05bda`  
		Last Modified: Tue, 15 May 2018 18:41:25 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc1b98bc283f79f52b654779fa9ad1f659d72332e992e69e0813b6ef598861`  
		Last Modified: Tue, 15 May 2018 18:41:35 GMT  
		Size: 27.8 MB (27758916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b9d4da824d858fe32e011231112dc35c1f6410aac11bb5691a79730e62c436`  
		Last Modified: Tue, 15 May 2018 18:43:10 GMT  
		Size: 120.7 MB (120699504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0`

```console
$ docker pull mono@sha256:68fa1f0f359263b29843cd90a42e95513af9e10baf2fac443e674bec2641b171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.12.0` - linux; amd64

```console
$ docker pull mono@sha256:b3fd87468b84282f8f1a577aed1c72fcd03fcf0d30237b9d81c5ddb80db08c0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178587784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78807956cbb8db5e8af4626014037d4c51d9900e1e7b748a716a9a91b55c75d6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:30:25 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 15 May 2018 18:30:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 15 May 2018 18:34:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe7e083e5a7dcb0fd535b2e6bca578462b1c882a82e392e6c152af889d05bda`  
		Last Modified: Tue, 15 May 2018 18:41:25 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc1b98bc283f79f52b654779fa9ad1f659d72332e992e69e0813b6ef598861`  
		Last Modified: Tue, 15 May 2018 18:41:35 GMT  
		Size: 27.8 MB (27758916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b9d4da824d858fe32e011231112dc35c1f6410aac11bb5691a79730e62c436`  
		Last Modified: Tue, 15 May 2018 18:43:10 GMT  
		Size: 120.7 MB (120699504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0.226`

```console
$ docker pull mono@sha256:68fa1f0f359263b29843cd90a42e95513af9e10baf2fac443e674bec2641b171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.12.0.226` - linux; amd64

```console
$ docker pull mono@sha256:b3fd87468b84282f8f1a577aed1c72fcd03fcf0d30237b9d81c5ddb80db08c0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178587784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78807956cbb8db5e8af4626014037d4c51d9900e1e7b748a716a9a91b55c75d6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:30:25 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 15 May 2018 18:30:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 15 May 2018 18:34:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe7e083e5a7dcb0fd535b2e6bca578462b1c882a82e392e6c152af889d05bda`  
		Last Modified: Tue, 15 May 2018 18:41:25 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc1b98bc283f79f52b654779fa9ad1f659d72332e992e69e0813b6ef598861`  
		Last Modified: Tue, 15 May 2018 18:41:35 GMT  
		Size: 27.8 MB (27758916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b9d4da824d858fe32e011231112dc35c1f6410aac11bb5691a79730e62c436`  
		Last Modified: Tue, 15 May 2018 18:43:10 GMT  
		Size: 120.7 MB (120699504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0.226-slim`

```console
$ docker pull mono@sha256:a5a91d788fd044692d6585ad86cb5af2c007a529d5f6599894394f213f1366c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.12.0.226-slim` - linux; amd64

```console
$ docker pull mono@sha256:2085988debc03a037d8cf84420f41ecb19430a1fa4c84a62ff909003b5bae5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57888280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ada18948377ae27c647636bca99bbb9c4b121f8589f04d61ee5fc8b6e2f9da`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:30:25 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 15 May 2018 18:30:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe7e083e5a7dcb0fd535b2e6bca578462b1c882a82e392e6c152af889d05bda`  
		Last Modified: Tue, 15 May 2018 18:41:25 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc1b98bc283f79f52b654779fa9ad1f659d72332e992e69e0813b6ef598861`  
		Last Modified: Tue, 15 May 2018 18:41:35 GMT  
		Size: 27.8 MB (27758916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0-slim`

```console
$ docker pull mono@sha256:a5a91d788fd044692d6585ad86cb5af2c007a529d5f6599894394f213f1366c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.12.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:2085988debc03a037d8cf84420f41ecb19430a1fa4c84a62ff909003b5bae5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57888280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ada18948377ae27c647636bca99bbb9c4b121f8589f04d61ee5fc8b6e2f9da`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:30:25 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 15 May 2018 18:30:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe7e083e5a7dcb0fd535b2e6bca578462b1c882a82e392e6c152af889d05bda`  
		Last Modified: Tue, 15 May 2018 18:41:25 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc1b98bc283f79f52b654779fa9ad1f659d72332e992e69e0813b6ef598861`  
		Last Modified: Tue, 15 May 2018 18:41:35 GMT  
		Size: 27.8 MB (27758916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12-slim`

```console
$ docker pull mono@sha256:a5a91d788fd044692d6585ad86cb5af2c007a529d5f6599894394f213f1366c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.12-slim` - linux; amd64

```console
$ docker pull mono@sha256:2085988debc03a037d8cf84420f41ecb19430a1fa4c84a62ff909003b5bae5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57888280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ada18948377ae27c647636bca99bbb9c4b121f8589f04d61ee5fc8b6e2f9da`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:30:25 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 15 May 2018 18:30:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe7e083e5a7dcb0fd535b2e6bca578462b1c882a82e392e6c152af889d05bda`  
		Last Modified: Tue, 15 May 2018 18:41:25 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc1b98bc283f79f52b654779fa9ad1f659d72332e992e69e0813b6ef598861`  
		Last Modified: Tue, 15 May 2018 18:41:35 GMT  
		Size: 27.8 MB (27758916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:a5a91d788fd044692d6585ad86cb5af2c007a529d5f6599894394f213f1366c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:2085988debc03a037d8cf84420f41ecb19430a1fa4c84a62ff909003b5bae5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57888280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ada18948377ae27c647636bca99bbb9c4b121f8589f04d61ee5fc8b6e2f9da`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:30:25 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 15 May 2018 18:30:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe7e083e5a7dcb0fd535b2e6bca578462b1c882a82e392e6c152af889d05bda`  
		Last Modified: Tue, 15 May 2018 18:41:25 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc1b98bc283f79f52b654779fa9ad1f659d72332e992e69e0813b6ef598861`  
		Last Modified: Tue, 15 May 2018 18:41:35 GMT  
		Size: 27.8 MB (27758916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:68fa1f0f359263b29843cd90a42e95513af9e10baf2fac443e674bec2641b171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:b3fd87468b84282f8f1a577aed1c72fcd03fcf0d30237b9d81c5ddb80db08c0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178587784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78807956cbb8db5e8af4626014037d4c51d9900e1e7b748a716a9a91b55c75d6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:30:25 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 15 May 2018 18:30:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 15 May 2018 18:34:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe7e083e5a7dcb0fd535b2e6bca578462b1c882a82e392e6c152af889d05bda`  
		Last Modified: Tue, 15 May 2018 18:41:25 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc1b98bc283f79f52b654779fa9ad1f659d72332e992e69e0813b6ef598861`  
		Last Modified: Tue, 15 May 2018 18:41:35 GMT  
		Size: 27.8 MB (27758916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b9d4da824d858fe32e011231112dc35c1f6410aac11bb5691a79730e62c436`  
		Last Modified: Tue, 15 May 2018 18:43:10 GMT  
		Size: 120.7 MB (120699504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:a5a91d788fd044692d6585ad86cb5af2c007a529d5f6599894394f213f1366c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:2085988debc03a037d8cf84420f41ecb19430a1fa4c84a62ff909003b5bae5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57888280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ada18948377ae27c647636bca99bbb9c4b121f8589f04d61ee5fc8b6e2f9da`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 15 May 2018 18:30:25 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 15 May 2018 18:30:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 15 May 2018 18:32:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe7e083e5a7dcb0fd535b2e6bca578462b1c882a82e392e6c152af889d05bda`  
		Last Modified: Tue, 15 May 2018 18:41:25 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dc1b98bc283f79f52b654779fa9ad1f659d72332e992e69e0813b6ef598861`  
		Last Modified: Tue, 15 May 2018 18:41:35 GMT  
		Size: 27.8 MB (27758916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

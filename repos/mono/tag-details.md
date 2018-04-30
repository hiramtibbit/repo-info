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
$ docker pull mono@sha256:ceeae5b23a8f239d55979fde42f7e1fad961a619b2aca6e1efdcc66bf2ac587b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:ee141aab8fe7e067585fd53f2a42733edeaba5f6f79dd4db720992a10a13d0ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174078410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9d64b6431fe9a201bb0354f4a4ab00f76e3a12047093ab6d72f48409ca6b6b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:56:03 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 30 Apr 2018 00:56:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:56:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 30 Apr 2018 01:26:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719116ec9dae0bf1f9f8bb215d2316a741b62af4c54913005f2cea46f1c0b051`  
		Last Modified: Mon, 30 Apr 2018 01:41:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849b31036984d6efc7431cbf93b7de3b9bee7df921b2e6c9eba8f85e18d16240`  
		Last Modified: Mon, 30 Apr 2018 01:41:36 GMT  
		Size: 27.6 MB (27599462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2915c5eb81f9b06f8713a68d47c05a07eedd0ec33191eb645f26f1278c380c`  
		Last Modified: Mon, 30 Apr 2018 02:37:09 GMT  
		Size: 116.3 MB (116349582 bytes)  
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
$ docker pull mono@sha256:ceeae5b23a8f239d55979fde42f7e1fad961a619b2aca6e1efdcc66bf2ac587b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10` - linux; amd64

```console
$ docker pull mono@sha256:ee141aab8fe7e067585fd53f2a42733edeaba5f6f79dd4db720992a10a13d0ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174078410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9d64b6431fe9a201bb0354f4a4ab00f76e3a12047093ab6d72f48409ca6b6b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:56:03 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 30 Apr 2018 00:56:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:56:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 30 Apr 2018 01:26:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719116ec9dae0bf1f9f8bb215d2316a741b62af4c54913005f2cea46f1c0b051`  
		Last Modified: Mon, 30 Apr 2018 01:41:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849b31036984d6efc7431cbf93b7de3b9bee7df921b2e6c9eba8f85e18d16240`  
		Last Modified: Mon, 30 Apr 2018 01:41:36 GMT  
		Size: 27.6 MB (27599462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2915c5eb81f9b06f8713a68d47c05a07eedd0ec33191eb645f26f1278c380c`  
		Last Modified: Mon, 30 Apr 2018 02:37:09 GMT  
		Size: 116.3 MB (116349582 bytes)  
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
$ docker pull mono@sha256:ceeae5b23a8f239d55979fde42f7e1fad961a619b2aca6e1efdcc66bf2ac587b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.0` - linux; amd64

```console
$ docker pull mono@sha256:ee141aab8fe7e067585fd53f2a42733edeaba5f6f79dd4db720992a10a13d0ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174078410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9d64b6431fe9a201bb0354f4a4ab00f76e3a12047093ab6d72f48409ca6b6b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:56:03 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 30 Apr 2018 00:56:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:56:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 30 Apr 2018 01:26:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719116ec9dae0bf1f9f8bb215d2316a741b62af4c54913005f2cea46f1c0b051`  
		Last Modified: Mon, 30 Apr 2018 01:41:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849b31036984d6efc7431cbf93b7de3b9bee7df921b2e6c9eba8f85e18d16240`  
		Last Modified: Mon, 30 Apr 2018 01:41:36 GMT  
		Size: 27.6 MB (27599462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2915c5eb81f9b06f8713a68d47c05a07eedd0ec33191eb645f26f1278c380c`  
		Last Modified: Mon, 30 Apr 2018 02:37:09 GMT  
		Size: 116.3 MB (116349582 bytes)  
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
$ docker pull mono@sha256:ceeae5b23a8f239d55979fde42f7e1fad961a619b2aca6e1efdcc66bf2ac587b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.0.160` - linux; amd64

```console
$ docker pull mono@sha256:ee141aab8fe7e067585fd53f2a42733edeaba5f6f79dd4db720992a10a13d0ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174078410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9d64b6431fe9a201bb0354f4a4ab00f76e3a12047093ab6d72f48409ca6b6b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:56:03 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 30 Apr 2018 00:56:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:56:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 30 Apr 2018 01:26:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719116ec9dae0bf1f9f8bb215d2316a741b62af4c54913005f2cea46f1c0b051`  
		Last Modified: Mon, 30 Apr 2018 01:41:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849b31036984d6efc7431cbf93b7de3b9bee7df921b2e6c9eba8f85e18d16240`  
		Last Modified: Mon, 30 Apr 2018 01:41:36 GMT  
		Size: 27.6 MB (27599462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2915c5eb81f9b06f8713a68d47c05a07eedd0ec33191eb645f26f1278c380c`  
		Last Modified: Mon, 30 Apr 2018 02:37:09 GMT  
		Size: 116.3 MB (116349582 bytes)  
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
$ docker pull mono@sha256:364669c9cb88f1d8cc0879dad9a9c99af4b67b47809f0e0c6f70954ed24d95b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.0.160-slim` - linux; amd64

```console
$ docker pull mono@sha256:5152842d9687e5d8e9b3e3ee8c5f79b050188ab6ef9ede9ac4093275988edd57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57728828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c11d0fb3ae9f868204ec0e1c6e5b97e2949acdf4bcefc08e09ccd9daa3a1c8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:56:03 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 30 Apr 2018 00:56:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:56:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719116ec9dae0bf1f9f8bb215d2316a741b62af4c54913005f2cea46f1c0b051`  
		Last Modified: Mon, 30 Apr 2018 01:41:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849b31036984d6efc7431cbf93b7de3b9bee7df921b2e6c9eba8f85e18d16240`  
		Last Modified: Mon, 30 Apr 2018 01:41:36 GMT  
		Size: 27.6 MB (27599462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0.160-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:4ad0679712405e15ddbd5d636e438606bc31ea93e277060a422a7e8734976113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48195579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed2d565517271458f97737b5e6ad4ce289ea94d4bca98340de94e49da52db9d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:16:51 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 13:16:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 13:17:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9580b7d7b61c61aa132835e3657446b207421b97b0fa29b2da6489a15987a010`  
		Last Modified: Sat, 28 Apr 2018 13:37:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e0e7ab3a2108d04326c52509e8123825ce0ef1a07a5fdf4b72053eef5a3818`  
		Last Modified: Sat, 28 Apr 2018 13:37:19 GMT  
		Size: 21.9 MB (21896113 bytes)  
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
$ docker pull mono@sha256:364669c9cb88f1d8cc0879dad9a9c99af4b67b47809f0e0c6f70954ed24d95b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:5152842d9687e5d8e9b3e3ee8c5f79b050188ab6ef9ede9ac4093275988edd57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57728828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c11d0fb3ae9f868204ec0e1c6e5b97e2949acdf4bcefc08e09ccd9daa3a1c8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:56:03 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 30 Apr 2018 00:56:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:56:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719116ec9dae0bf1f9f8bb215d2316a741b62af4c54913005f2cea46f1c0b051`  
		Last Modified: Mon, 30 Apr 2018 01:41:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849b31036984d6efc7431cbf93b7de3b9bee7df921b2e6c9eba8f85e18d16240`  
		Last Modified: Mon, 30 Apr 2018 01:41:36 GMT  
		Size: 27.6 MB (27599462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:4ad0679712405e15ddbd5d636e438606bc31ea93e277060a422a7e8734976113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48195579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed2d565517271458f97737b5e6ad4ce289ea94d4bca98340de94e49da52db9d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:16:51 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 13:16:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 13:17:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9580b7d7b61c61aa132835e3657446b207421b97b0fa29b2da6489a15987a010`  
		Last Modified: Sat, 28 Apr 2018 13:37:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e0e7ab3a2108d04326c52509e8123825ce0ef1a07a5fdf4b72053eef5a3818`  
		Last Modified: Sat, 28 Apr 2018 13:37:19 GMT  
		Size: 21.9 MB (21896113 bytes)  
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
$ docker pull mono@sha256:364669c9cb88f1d8cc0879dad9a9c99af4b67b47809f0e0c6f70954ed24d95b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10-slim` - linux; amd64

```console
$ docker pull mono@sha256:5152842d9687e5d8e9b3e3ee8c5f79b050188ab6ef9ede9ac4093275988edd57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57728828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c11d0fb3ae9f868204ec0e1c6e5b97e2949acdf4bcefc08e09ccd9daa3a1c8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:56:03 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 30 Apr 2018 00:56:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:56:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719116ec9dae0bf1f9f8bb215d2316a741b62af4c54913005f2cea46f1c0b051`  
		Last Modified: Mon, 30 Apr 2018 01:41:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849b31036984d6efc7431cbf93b7de3b9bee7df921b2e6c9eba8f85e18d16240`  
		Last Modified: Mon, 30 Apr 2018 01:41:36 GMT  
		Size: 27.6 MB (27599462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:4ad0679712405e15ddbd5d636e438606bc31ea93e277060a422a7e8734976113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48195579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed2d565517271458f97737b5e6ad4ce289ea94d4bca98340de94e49da52db9d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:16:51 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 13:16:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 13:17:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9580b7d7b61c61aa132835e3657446b207421b97b0fa29b2da6489a15987a010`  
		Last Modified: Sat, 28 Apr 2018 13:37:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e0e7ab3a2108d04326c52509e8123825ce0ef1a07a5fdf4b72053eef5a3818`  
		Last Modified: Sat, 28 Apr 2018 13:37:19 GMT  
		Size: 21.9 MB (21896113 bytes)  
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
$ docker pull mono@sha256:516a23d4fdf78d765a1177fe5342d7c56261d2afa4c043a30958fc462b8bc3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8` - linux; amd64

```console
$ docker pull mono@sha256:7dd1db245e54a40805fbb0ecaacc1ead72807f4698337781cf84c002e5782c72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174630018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e2e53421168afe679985aba58fafa1ddd3d6f52e0e2486acd0d106eec5012e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:36:06 GMT
ENV MONO_VERSION=5.8.0.127
# Mon, 30 Apr 2018 00:36:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:36:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 30 Apr 2018 01:22:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f070c6e308fdb60336d25c2dc411441ebd98b8d67417c673f0b3d7fe43370edf`  
		Last Modified: Mon, 30 Apr 2018 01:40:13 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34915950ac916b99bf1fcb28fe7964bc670cae0c136ab3c05bee6f3747d16e2`  
		Last Modified: Mon, 30 Apr 2018 01:40:21 GMT  
		Size: 27.4 MB (27362629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232ac24fdc0e69ff2d26aa0ea64b2706193e71e5f30d4c64ad5c2393e84a19ad`  
		Last Modified: Mon, 30 Apr 2018 02:20:16 GMT  
		Size: 117.1 MB (117138024 bytes)  
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
$ docker pull mono@sha256:516a23d4fdf78d765a1177fe5342d7c56261d2afa4c043a30958fc462b8bc3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0` - linux; amd64

```console
$ docker pull mono@sha256:7dd1db245e54a40805fbb0ecaacc1ead72807f4698337781cf84c002e5782c72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174630018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e2e53421168afe679985aba58fafa1ddd3d6f52e0e2486acd0d106eec5012e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:36:06 GMT
ENV MONO_VERSION=5.8.0.127
# Mon, 30 Apr 2018 00:36:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:36:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 30 Apr 2018 01:22:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f070c6e308fdb60336d25c2dc411441ebd98b8d67417c673f0b3d7fe43370edf`  
		Last Modified: Mon, 30 Apr 2018 01:40:13 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34915950ac916b99bf1fcb28fe7964bc670cae0c136ab3c05bee6f3747d16e2`  
		Last Modified: Mon, 30 Apr 2018 01:40:21 GMT  
		Size: 27.4 MB (27362629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232ac24fdc0e69ff2d26aa0ea64b2706193e71e5f30d4c64ad5c2393e84a19ad`  
		Last Modified: Mon, 30 Apr 2018 02:20:16 GMT  
		Size: 117.1 MB (117138024 bytes)  
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
$ docker pull mono@sha256:516a23d4fdf78d765a1177fe5342d7c56261d2afa4c043a30958fc462b8bc3eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0.127` - linux; amd64

```console
$ docker pull mono@sha256:7dd1db245e54a40805fbb0ecaacc1ead72807f4698337781cf84c002e5782c72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174630018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e2e53421168afe679985aba58fafa1ddd3d6f52e0e2486acd0d106eec5012e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:36:06 GMT
ENV MONO_VERSION=5.8.0.127
# Mon, 30 Apr 2018 00:36:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:36:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 30 Apr 2018 01:22:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f070c6e308fdb60336d25c2dc411441ebd98b8d67417c673f0b3d7fe43370edf`  
		Last Modified: Mon, 30 Apr 2018 01:40:13 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34915950ac916b99bf1fcb28fe7964bc670cae0c136ab3c05bee6f3747d16e2`  
		Last Modified: Mon, 30 Apr 2018 01:40:21 GMT  
		Size: 27.4 MB (27362629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232ac24fdc0e69ff2d26aa0ea64b2706193e71e5f30d4c64ad5c2393e84a19ad`  
		Last Modified: Mon, 30 Apr 2018 02:20:16 GMT  
		Size: 117.1 MB (117138024 bytes)  
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
$ docker pull mono@sha256:a9e58d76d9ab9289b5cf1b5c64bc7bb236de04cf555f19de2cea4a56d62df355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0.127-slim` - linux; amd64

```console
$ docker pull mono@sha256:dcbf7fdf15c5a0e934417fe115ed3c6e41b54fe2d14f1a639dae2f555f46fad2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57491994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f36ddd1162114f0ba1d1acbc770c67a3a5f400f5e849128de56078726ce70a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:36:06 GMT
ENV MONO_VERSION=5.8.0.127
# Mon, 30 Apr 2018 00:36:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:36:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f070c6e308fdb60336d25c2dc411441ebd98b8d67417c673f0b3d7fe43370edf`  
		Last Modified: Mon, 30 Apr 2018 01:40:13 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34915950ac916b99bf1fcb28fe7964bc670cae0c136ab3c05bee6f3747d16e2`  
		Last Modified: Mon, 30 Apr 2018 01:40:21 GMT  
		Size: 27.4 MB (27362629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0.127-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:15d684cdde3083a804a0ef4b6a343de3e451ee019eff829c36c5070b1b081bdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48084045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f7b4d24f3cfcc1639e716e13bd61a4beea3f23564f868dc8cf84a2f794fefa`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:15:06 GMT
ENV MONO_VERSION=5.8.0.127
# Sat, 28 Apr 2018 13:15:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 13:16:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1b29771cee5eb0fd11c973fd1623cced9ce06fea34863240436b9454208c8`  
		Last Modified: Sat, 28 Apr 2018 13:36:37 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d5f65873b22e32206721bb68d69af99358e2cebf0e53583fc10fb6188011f8`  
		Last Modified: Sat, 28 Apr 2018 13:36:47 GMT  
		Size: 21.8 MB (21784582 bytes)  
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
$ docker pull mono@sha256:a9e58d76d9ab9289b5cf1b5c64bc7bb236de04cf555f19de2cea4a56d62df355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:dcbf7fdf15c5a0e934417fe115ed3c6e41b54fe2d14f1a639dae2f555f46fad2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57491994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f36ddd1162114f0ba1d1acbc770c67a3a5f400f5e849128de56078726ce70a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:36:06 GMT
ENV MONO_VERSION=5.8.0.127
# Mon, 30 Apr 2018 00:36:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:36:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f070c6e308fdb60336d25c2dc411441ebd98b8d67417c673f0b3d7fe43370edf`  
		Last Modified: Mon, 30 Apr 2018 01:40:13 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34915950ac916b99bf1fcb28fe7964bc670cae0c136ab3c05bee6f3747d16e2`  
		Last Modified: Mon, 30 Apr 2018 01:40:21 GMT  
		Size: 27.4 MB (27362629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:15d684cdde3083a804a0ef4b6a343de3e451ee019eff829c36c5070b1b081bdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48084045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f7b4d24f3cfcc1639e716e13bd61a4beea3f23564f868dc8cf84a2f794fefa`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:15:06 GMT
ENV MONO_VERSION=5.8.0.127
# Sat, 28 Apr 2018 13:15:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 13:16:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1b29771cee5eb0fd11c973fd1623cced9ce06fea34863240436b9454208c8`  
		Last Modified: Sat, 28 Apr 2018 13:36:37 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d5f65873b22e32206721bb68d69af99358e2cebf0e53583fc10fb6188011f8`  
		Last Modified: Sat, 28 Apr 2018 13:36:47 GMT  
		Size: 21.8 MB (21784582 bytes)  
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
$ docker pull mono@sha256:a9e58d76d9ab9289b5cf1b5c64bc7bb236de04cf555f19de2cea4a56d62df355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.8-slim` - linux; amd64

```console
$ docker pull mono@sha256:dcbf7fdf15c5a0e934417fe115ed3c6e41b54fe2d14f1a639dae2f555f46fad2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57491994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f36ddd1162114f0ba1d1acbc770c67a3a5f400f5e849128de56078726ce70a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:36:06 GMT
ENV MONO_VERSION=5.8.0.127
# Mon, 30 Apr 2018 00:36:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:36:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f070c6e308fdb60336d25c2dc411441ebd98b8d67417c673f0b3d7fe43370edf`  
		Last Modified: Mon, 30 Apr 2018 01:40:13 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34915950ac916b99bf1fcb28fe7964bc670cae0c136ab3c05bee6f3747d16e2`  
		Last Modified: Mon, 30 Apr 2018 01:40:21 GMT  
		Size: 27.4 MB (27362629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.8-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:15d684cdde3083a804a0ef4b6a343de3e451ee019eff829c36c5070b1b081bdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48084045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f7b4d24f3cfcc1639e716e13bd61a4beea3f23564f868dc8cf84a2f794fefa`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:15:06 GMT
ENV MONO_VERSION=5.8.0.127
# Sat, 28 Apr 2018 13:15:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 13:16:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e1b29771cee5eb0fd11c973fd1623cced9ce06fea34863240436b9454208c8`  
		Last Modified: Sat, 28 Apr 2018 13:36:37 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d5f65873b22e32206721bb68d69af99358e2cebf0e53583fc10fb6188011f8`  
		Last Modified: Sat, 28 Apr 2018 13:36:47 GMT  
		Size: 21.8 MB (21784582 bytes)  
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
$ docker pull mono@sha256:364669c9cb88f1d8cc0879dad9a9c99af4b67b47809f0e0c6f70954ed24d95b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:5152842d9687e5d8e9b3e3ee8c5f79b050188ab6ef9ede9ac4093275988edd57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57728828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c11d0fb3ae9f868204ec0e1c6e5b97e2949acdf4bcefc08e09ccd9daa3a1c8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:56:03 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 30 Apr 2018 00:56:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:56:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719116ec9dae0bf1f9f8bb215d2316a741b62af4c54913005f2cea46f1c0b051`  
		Last Modified: Mon, 30 Apr 2018 01:41:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849b31036984d6efc7431cbf93b7de3b9bee7df921b2e6c9eba8f85e18d16240`  
		Last Modified: Mon, 30 Apr 2018 01:41:36 GMT  
		Size: 27.6 MB (27599462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:4ad0679712405e15ddbd5d636e438606bc31ea93e277060a422a7e8734976113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48195579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed2d565517271458f97737b5e6ad4ce289ea94d4bca98340de94e49da52db9d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:16:51 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 13:16:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 13:17:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9580b7d7b61c61aa132835e3657446b207421b97b0fa29b2da6489a15987a010`  
		Last Modified: Sat, 28 Apr 2018 13:37:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e0e7ab3a2108d04326c52509e8123825ce0ef1a07a5fdf4b72053eef5a3818`  
		Last Modified: Sat, 28 Apr 2018 13:37:19 GMT  
		Size: 21.9 MB (21896113 bytes)  
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
$ docker pull mono@sha256:ceeae5b23a8f239d55979fde42f7e1fad961a619b2aca6e1efdcc66bf2ac587b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:ee141aab8fe7e067585fd53f2a42733edeaba5f6f79dd4db720992a10a13d0ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174078410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9d64b6431fe9a201bb0354f4a4ab00f76e3a12047093ab6d72f48409ca6b6b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:56:03 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 30 Apr 2018 00:56:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:56:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 30 Apr 2018 01:26:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719116ec9dae0bf1f9f8bb215d2316a741b62af4c54913005f2cea46f1c0b051`  
		Last Modified: Mon, 30 Apr 2018 01:41:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849b31036984d6efc7431cbf93b7de3b9bee7df921b2e6c9eba8f85e18d16240`  
		Last Modified: Mon, 30 Apr 2018 01:41:36 GMT  
		Size: 27.6 MB (27599462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2915c5eb81f9b06f8713a68d47c05a07eedd0ec33191eb645f26f1278c380c`  
		Last Modified: Mon, 30 Apr 2018 02:37:09 GMT  
		Size: 116.3 MB (116349582 bytes)  
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
$ docker pull mono@sha256:364669c9cb88f1d8cc0879dad9a9c99af4b67b47809f0e0c6f70954ed24d95b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:5152842d9687e5d8e9b3e3ee8c5f79b050188ab6ef9ede9ac4093275988edd57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57728828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c11d0fb3ae9f868204ec0e1c6e5b97e2949acdf4bcefc08e09ccd9daa3a1c8`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 00:56:03 GMT
ENV MONO_VERSION=5.10.0.160
# Mon, 30 Apr 2018 00:56:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 30 Apr 2018 00:56:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719116ec9dae0bf1f9f8bb215d2316a741b62af4c54913005f2cea46f1c0b051`  
		Last Modified: Mon, 30 Apr 2018 01:41:30 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849b31036984d6efc7431cbf93b7de3b9bee7df921b2e6c9eba8f85e18d16240`  
		Last Modified: Mon, 30 Apr 2018 01:41:36 GMT  
		Size: 27.6 MB (27599462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:4ad0679712405e15ddbd5d636e438606bc31ea93e277060a422a7e8734976113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48195579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed2d565517271458f97737b5e6ad4ce289ea94d4bca98340de94e49da52db9d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:16:51 GMT
ENV MONO_VERSION=5.10.0.160
# Sat, 28 Apr 2018 13:16:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 13:17:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9580b7d7b61c61aa132835e3657446b207421b97b0fa29b2da6489a15987a010`  
		Last Modified: Sat, 28 Apr 2018 13:37:11 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e0e7ab3a2108d04326c52509e8123825ce0ef1a07a5fdf4b72053eef5a3818`  
		Last Modified: Sat, 28 Apr 2018 13:37:19 GMT  
		Size: 21.9 MB (21896113 bytes)  
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

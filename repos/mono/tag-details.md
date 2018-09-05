<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:4`](#mono4)
-	[`mono:4.8`](#mono48)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:5`](#mono5)
-	[`mono:5.12`](#mono512)
-	[`mono:5.12.0`](#mono5120)
-	[`mono:5.12.0.226`](#mono5120226)
-	[`mono:5.12.0.226-slim`](#mono5120226-slim)
-	[`mono:5.12.0-slim`](#mono5120-slim)
-	[`mono:5.12-slim`](#mono512-slim)
-	[`mono:5.14`](#mono514)
-	[`mono:5.14.0`](#mono5140)
-	[`mono:5.14.0.177`](#mono5140177)
-	[`mono:5.14.0.177-slim`](#mono5140177-slim)
-	[`mono:5.14.0-slim`](#mono5140-slim)
-	[`mono:5.14-slim`](#mono514-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:2357aace4b1dba9a1964181d5590f0af40e59b21efe7438f5f1ef2f0e00aa251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:a0cff3e37bdf8d983f7c46a56ef5aad9e3d46902d9c1c03e0b45f8c93f9e28c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152978136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf4b46c4cd1e90addb2c5e9d7f887291eacd1f934601d2648f519fac6e4fcb5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:22:11 GMT
ADD file:1d0d47b9e887adff2328eeb380e2cc47982a572942a29d7ed26bcf6291219302 in / 
# Tue, 04 Sep 2018 21:22:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:23:56 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 05 Sep 2018 00:23:56 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 05 Sep 2018 00:24:09 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:24:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:25:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:703d6f3fb41c45d33d1e6358aba66a774c9ebc11a21bc5dfef74f20d043d3933`  
		Last Modified: Tue, 04 Sep 2018 21:26:45 GMT  
		Size: 39.3 MB (39339633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888016f6e8fff2155fa51751db850c8bb0cbc7ce9b087d8fd266fa908365556c`  
		Last Modified: Wed, 05 Sep 2018 00:35:23 GMT  
		Size: 6.4 MB (6418825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ee0c4db9c1bdcbf551342335fc232e9aca9621d643a1f0d5c0bde6b1cc23ac`  
		Last Modified: Wed, 05 Sep 2018 00:35:22 GMT  
		Size: 29.9 KB (29897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02eb853cd5a0dfbff5a075eb777b9b14f51a94c59540ae751259ee3ff742f79`  
		Last Modified: Wed, 05 Sep 2018 00:35:49 GMT  
		Size: 107.2 MB (107189781 bytes)  
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
$ docker pull mono@sha256:857d1e2ea0fe8ceeb41c9ee430518b04847e3ace86e211356fbff06df9ed0e00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa130606f3ead69e9bf0690daee9b26f1dd61fb327f2f8feac4a8d8cf6d9d7f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:52:53 GMT
ADD file:2b0fab8ddd7d2f359f307fc659f958ad8a6e2a86a6a23ad77572c20f1d5aef12 in / 
# Tue, 17 Jul 2018 10:52:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:32:06 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jul 2018 15:32:06 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 17 Jul 2018 15:32:20 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:32:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 15:33:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7c59d17a85b1db041ae2f8db1bccfc071f1e66c58fe8a43087c34557aa910719`  
		Last Modified: Tue, 17 Jul 2018 11:12:53 GMT  
		Size: 40.5 MB (40532149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342a1185fea79350d781fe7079f5cfb1a6025f4aa20a237832e71db7ec8d0689`  
		Last Modified: Tue, 17 Jul 2018 15:42:23 GMT  
		Size: 6.4 MB (6406297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ba9ee0768205eeed1fe4ff0cfb585bcee316297cccf68934b671455556bf96`  
		Last Modified: Tue, 17 Jul 2018 15:42:21 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0aa973d4412a7150e34642ec7da91bbc3dd9bb994e86ff498abd1cfd1286bc`  
		Last Modified: Tue, 17 Jul 2018 15:42:58 GMT  
		Size: 106.0 MB (106008222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:2357aace4b1dba9a1964181d5590f0af40e59b21efe7438f5f1ef2f0e00aa251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:a0cff3e37bdf8d983f7c46a56ef5aad9e3d46902d9c1c03e0b45f8c93f9e28c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152978136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf4b46c4cd1e90addb2c5e9d7f887291eacd1f934601d2648f519fac6e4fcb5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:22:11 GMT
ADD file:1d0d47b9e887adff2328eeb380e2cc47982a572942a29d7ed26bcf6291219302 in / 
# Tue, 04 Sep 2018 21:22:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:23:56 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 05 Sep 2018 00:23:56 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 05 Sep 2018 00:24:09 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:24:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:25:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:703d6f3fb41c45d33d1e6358aba66a774c9ebc11a21bc5dfef74f20d043d3933`  
		Last Modified: Tue, 04 Sep 2018 21:26:45 GMT  
		Size: 39.3 MB (39339633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888016f6e8fff2155fa51751db850c8bb0cbc7ce9b087d8fd266fa908365556c`  
		Last Modified: Wed, 05 Sep 2018 00:35:23 GMT  
		Size: 6.4 MB (6418825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ee0c4db9c1bdcbf551342335fc232e9aca9621d643a1f0d5c0bde6b1cc23ac`  
		Last Modified: Wed, 05 Sep 2018 00:35:22 GMT  
		Size: 29.9 KB (29897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02eb853cd5a0dfbff5a075eb777b9b14f51a94c59540ae751259ee3ff742f79`  
		Last Modified: Wed, 05 Sep 2018 00:35:49 GMT  
		Size: 107.2 MB (107189781 bytes)  
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
$ docker pull mono@sha256:857d1e2ea0fe8ceeb41c9ee430518b04847e3ace86e211356fbff06df9ed0e00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa130606f3ead69e9bf0690daee9b26f1dd61fb327f2f8feac4a8d8cf6d9d7f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:52:53 GMT
ADD file:2b0fab8ddd7d2f359f307fc659f958ad8a6e2a86a6a23ad77572c20f1d5aef12 in / 
# Tue, 17 Jul 2018 10:52:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:32:06 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jul 2018 15:32:06 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 17 Jul 2018 15:32:20 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:32:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 15:33:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7c59d17a85b1db041ae2f8db1bccfc071f1e66c58fe8a43087c34557aa910719`  
		Last Modified: Tue, 17 Jul 2018 11:12:53 GMT  
		Size: 40.5 MB (40532149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342a1185fea79350d781fe7079f5cfb1a6025f4aa20a237832e71db7ec8d0689`  
		Last Modified: Tue, 17 Jul 2018 15:42:23 GMT  
		Size: 6.4 MB (6406297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ba9ee0768205eeed1fe4ff0cfb585bcee316297cccf68934b671455556bf96`  
		Last Modified: Tue, 17 Jul 2018 15:42:21 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0aa973d4412a7150e34642ec7da91bbc3dd9bb994e86ff498abd1cfd1286bc`  
		Last Modified: Tue, 17 Jul 2018 15:42:58 GMT  
		Size: 106.0 MB (106008222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:2357aace4b1dba9a1964181d5590f0af40e59b21efe7438f5f1ef2f0e00aa251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:a0cff3e37bdf8d983f7c46a56ef5aad9e3d46902d9c1c03e0b45f8c93f9e28c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152978136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf4b46c4cd1e90addb2c5e9d7f887291eacd1f934601d2648f519fac6e4fcb5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:22:11 GMT
ADD file:1d0d47b9e887adff2328eeb380e2cc47982a572942a29d7ed26bcf6291219302 in / 
# Tue, 04 Sep 2018 21:22:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:23:56 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 05 Sep 2018 00:23:56 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 05 Sep 2018 00:24:09 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:24:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:25:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:703d6f3fb41c45d33d1e6358aba66a774c9ebc11a21bc5dfef74f20d043d3933`  
		Last Modified: Tue, 04 Sep 2018 21:26:45 GMT  
		Size: 39.3 MB (39339633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888016f6e8fff2155fa51751db850c8bb0cbc7ce9b087d8fd266fa908365556c`  
		Last Modified: Wed, 05 Sep 2018 00:35:23 GMT  
		Size: 6.4 MB (6418825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ee0c4db9c1bdcbf551342335fc232e9aca9621d643a1f0d5c0bde6b1cc23ac`  
		Last Modified: Wed, 05 Sep 2018 00:35:22 GMT  
		Size: 29.9 KB (29897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02eb853cd5a0dfbff5a075eb777b9b14f51a94c59540ae751259ee3ff742f79`  
		Last Modified: Wed, 05 Sep 2018 00:35:49 GMT  
		Size: 107.2 MB (107189781 bytes)  
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
$ docker pull mono@sha256:857d1e2ea0fe8ceeb41c9ee430518b04847e3ace86e211356fbff06df9ed0e00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa130606f3ead69e9bf0690daee9b26f1dd61fb327f2f8feac4a8d8cf6d9d7f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:52:53 GMT
ADD file:2b0fab8ddd7d2f359f307fc659f958ad8a6e2a86a6a23ad77572c20f1d5aef12 in / 
# Tue, 17 Jul 2018 10:52:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:32:06 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jul 2018 15:32:06 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 17 Jul 2018 15:32:20 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:32:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 15:33:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7c59d17a85b1db041ae2f8db1bccfc071f1e66c58fe8a43087c34557aa910719`  
		Last Modified: Tue, 17 Jul 2018 11:12:53 GMT  
		Size: 40.5 MB (40532149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342a1185fea79350d781fe7079f5cfb1a6025f4aa20a237832e71db7ec8d0689`  
		Last Modified: Tue, 17 Jul 2018 15:42:23 GMT  
		Size: 6.4 MB (6406297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ba9ee0768205eeed1fe4ff0cfb585bcee316297cccf68934b671455556bf96`  
		Last Modified: Tue, 17 Jul 2018 15:42:21 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0aa973d4412a7150e34642ec7da91bbc3dd9bb994e86ff498abd1cfd1286bc`  
		Last Modified: Tue, 17 Jul 2018 15:42:58 GMT  
		Size: 106.0 MB (106008222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:2357aace4b1dba9a1964181d5590f0af40e59b21efe7438f5f1ef2f0e00aa251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:a0cff3e37bdf8d983f7c46a56ef5aad9e3d46902d9c1c03e0b45f8c93f9e28c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152978136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf4b46c4cd1e90addb2c5e9d7f887291eacd1f934601d2648f519fac6e4fcb5a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:22:11 GMT
ADD file:1d0d47b9e887adff2328eeb380e2cc47982a572942a29d7ed26bcf6291219302 in / 
# Tue, 04 Sep 2018 21:22:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:23:56 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 05 Sep 2018 00:23:56 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 05 Sep 2018 00:24:09 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:24:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:25:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:703d6f3fb41c45d33d1e6358aba66a774c9ebc11a21bc5dfef74f20d043d3933`  
		Last Modified: Tue, 04 Sep 2018 21:26:45 GMT  
		Size: 39.3 MB (39339633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888016f6e8fff2155fa51751db850c8bb0cbc7ce9b087d8fd266fa908365556c`  
		Last Modified: Wed, 05 Sep 2018 00:35:23 GMT  
		Size: 6.4 MB (6418825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ee0c4db9c1bdcbf551342335fc232e9aca9621d643a1f0d5c0bde6b1cc23ac`  
		Last Modified: Wed, 05 Sep 2018 00:35:22 GMT  
		Size: 29.9 KB (29897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02eb853cd5a0dfbff5a075eb777b9b14f51a94c59540ae751259ee3ff742f79`  
		Last Modified: Wed, 05 Sep 2018 00:35:49 GMT  
		Size: 107.2 MB (107189781 bytes)  
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
$ docker pull mono@sha256:857d1e2ea0fe8ceeb41c9ee430518b04847e3ace86e211356fbff06df9ed0e00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa130606f3ead69e9bf0690daee9b26f1dd61fb327f2f8feac4a8d8cf6d9d7f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:52:53 GMT
ADD file:2b0fab8ddd7d2f359f307fc659f958ad8a6e2a86a6a23ad77572c20f1d5aef12 in / 
# Tue, 17 Jul 2018 10:52:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:32:06 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jul 2018 15:32:06 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 17 Jul 2018 15:32:20 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:32:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 15:33:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7c59d17a85b1db041ae2f8db1bccfc071f1e66c58fe8a43087c34557aa910719`  
		Last Modified: Tue, 17 Jul 2018 11:12:53 GMT  
		Size: 40.5 MB (40532149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342a1185fea79350d781fe7079f5cfb1a6025f4aa20a237832e71db7ec8d0689`  
		Last Modified: Tue, 17 Jul 2018 15:42:23 GMT  
		Size: 6.4 MB (6406297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ba9ee0768205eeed1fe4ff0cfb585bcee316297cccf68934b671455556bf96`  
		Last Modified: Tue, 17 Jul 2018 15:42:21 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0aa973d4412a7150e34642ec7da91bbc3dd9bb994e86ff498abd1cfd1286bc`  
		Last Modified: Tue, 17 Jul 2018 15:42:58 GMT  
		Size: 106.0 MB (106008222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:d26703df051dc6228d141ef035bf704860ae3902e82c198050f5b60cf2351f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:aaff7d2ca3dd5f22aeb65965afd7cfddae287175cdc5c7a32d8a9264e411cacb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199299884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bc07ec171b72c454fc4dc1c31598b1a82a9d0baefe465fb5d7dbd31253f382`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 00:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d0fbddc66c2952c064079c751ddbfc060e2c5f00b583ba303b4ff66737839b`  
		Last Modified: Wed, 05 Sep 2018 00:36:21 GMT  
		Size: 118.6 MB (118555176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:47626db302906c09f4ce29a861fd2f328ddc0dfea6ab9c844bf6160ee42fe195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176959925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b9c34a003208a74b9755aab30644d3428e1575223d76fd0dcd103368fa61a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 12:17:54 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ba26f9fa402e0eec83d1312aa0c1a9fec603356067e533662ad5ecd9351c27`  
		Last Modified: Thu, 09 Aug 2018 12:19:42 GMT  
		Size: 108.8 MB (108828729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:31e88cab5f20d6c7e61395bb20f777ffd06398cd3642868718a46b6fb7502eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208577474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432a70a10348af2c76c4408eb8e839f1ddf80ad38fd17b2425ee9bd46cc04efa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 10:52:09 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1336dcd581ca7255a898ccf686303650474213feddbfea2251d1e041594a7e9b`  
		Last Modified: Thu, 09 Aug 2018 10:55:48 GMT  
		Size: 123.8 MB (123844487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12`

```console
$ docker pull mono@sha256:7c589652e652cf59abf6aaef1ac7df103e650b78cdbc0d959e65c3e899a5f855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12` - linux; amd64

```console
$ docker pull mono@sha256:b88d348aa472f4746b32c0518ce64e2f5db9e80982a10ecdd2adf2ed5ef8021f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178486895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5934761dc8d58238ca4ee81e3813dcefd296cafec955093e2ea51bbd1b54a10`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:22:52 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 00:22:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:23:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 00:34:26 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f010d42dee2116f29314cb00c4359ddc86cfaa48e8ab7b516fe4e6d85409a`  
		Last Modified: Wed, 05 Sep 2018 00:35:05 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24afbee490d043be22ea64d08d3b307a7c6ef8d3a9524c40f1077809a22a540`  
		Last Modified: Wed, 05 Sep 2018 00:35:14 GMT  
		Size: 27.6 MB (27641361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4b2fe5ed77bc31c1704eb721730de6cdd7646b05c2caa478dfdc1a60bc457c`  
		Last Modified: Wed, 05 Sep 2018 00:36:59 GMT  
		Size: 120.7 MB (120722905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12` - linux; arm variant v7

```console
$ docker pull mono@sha256:685763ee69f4e2919bc2e3f5157e078640b4c811b33583a950ee355eb169c9cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc8ea029e60cfdcbe7666ac7d58c74fbee50838982fa8727ce06d5b41dcbf4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:48 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 14:34:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 14:36:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 14:43:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41943f676c3d0ced5c80898f79b48404446edb6e5b1d514dd021e0a233dfe24e`  
		Last Modified: Tue, 17 Jul 2018 14:50:09 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245e673bc6522557d58c3e187d5f6223fcd42335b65f73ba3377d15607e977bf`  
		Last Modified: Tue, 17 Jul 2018 14:50:17 GMT  
		Size: 22.3 MB (22342918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48f14f47ac35084f933b0b6c43789d98f821f3ac9111fc2f925eae881445dfd`  
		Last Modified: Tue, 17 Jul 2018 14:52:11 GMT  
		Size: 103.8 MB (103750292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:6a9140f8fc5bd1a6a018c0c707911f96e0206dd7ec405ffc96b44f0249f437eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172629094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114299255f64b5b684b2cf82d87f03df647334cbcd446b632e79342cdb125502`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 08:53:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314ac8a828b1adf0d1aa4a845c0f4a4b561b6e8633844e806e3c4acaefa55f23`  
		Last Modified: Wed, 16 May 2018 09:04:20 GMT  
		Size: 118.5 MB (118541167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12` - linux; 386

```console
$ docker pull mono@sha256:90c36480b8c5b72e27c7d69ab2d54d2f2bd10c697dc11d29b39ad6ff879c1469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180757924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79d863d79992d62517d96843b527d6218222d7fa89c21e8b9200ee57af0bf17`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:28:10 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 15:28:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 15:29:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 15:36:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23553c09f38d30e3458ea50d0abacfd86477adf8fd9e0bdd9363d0bd9281fb54`  
		Last Modified: Tue, 17 Jul 2018 15:40:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5485e206ddd320c39b61645d684e7b141a1335107d415e0039dbd35a4166c4dc`  
		Last Modified: Tue, 17 Jul 2018 15:40:34 GMT  
		Size: 29.4 MB (29440927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69e900d7c0cc90bd2af79d9e59be71af6083546534b2a3907bda02504eeeb99`  
		Last Modified: Tue, 17 Jul 2018 15:44:32 GMT  
		Size: 121.0 MB (121044919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0`

```console
$ docker pull mono@sha256:7c589652e652cf59abf6aaef1ac7df103e650b78cdbc0d959e65c3e899a5f855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0` - linux; amd64

```console
$ docker pull mono@sha256:b88d348aa472f4746b32c0518ce64e2f5db9e80982a10ecdd2adf2ed5ef8021f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178486895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5934761dc8d58238ca4ee81e3813dcefd296cafec955093e2ea51bbd1b54a10`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:22:52 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 00:22:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:23:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 00:34:26 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f010d42dee2116f29314cb00c4359ddc86cfaa48e8ab7b516fe4e6d85409a`  
		Last Modified: Wed, 05 Sep 2018 00:35:05 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24afbee490d043be22ea64d08d3b307a7c6ef8d3a9524c40f1077809a22a540`  
		Last Modified: Wed, 05 Sep 2018 00:35:14 GMT  
		Size: 27.6 MB (27641361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4b2fe5ed77bc31c1704eb721730de6cdd7646b05c2caa478dfdc1a60bc457c`  
		Last Modified: Wed, 05 Sep 2018 00:36:59 GMT  
		Size: 120.7 MB (120722905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:685763ee69f4e2919bc2e3f5157e078640b4c811b33583a950ee355eb169c9cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc8ea029e60cfdcbe7666ac7d58c74fbee50838982fa8727ce06d5b41dcbf4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:48 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 14:34:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 14:36:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 14:43:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41943f676c3d0ced5c80898f79b48404446edb6e5b1d514dd021e0a233dfe24e`  
		Last Modified: Tue, 17 Jul 2018 14:50:09 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245e673bc6522557d58c3e187d5f6223fcd42335b65f73ba3377d15607e977bf`  
		Last Modified: Tue, 17 Jul 2018 14:50:17 GMT  
		Size: 22.3 MB (22342918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48f14f47ac35084f933b0b6c43789d98f821f3ac9111fc2f925eae881445dfd`  
		Last Modified: Tue, 17 Jul 2018 14:52:11 GMT  
		Size: 103.8 MB (103750292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:6a9140f8fc5bd1a6a018c0c707911f96e0206dd7ec405ffc96b44f0249f437eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172629094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114299255f64b5b684b2cf82d87f03df647334cbcd446b632e79342cdb125502`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 08:53:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314ac8a828b1adf0d1aa4a845c0f4a4b561b6e8633844e806e3c4acaefa55f23`  
		Last Modified: Wed, 16 May 2018 09:04:20 GMT  
		Size: 118.5 MB (118541167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0` - linux; 386

```console
$ docker pull mono@sha256:90c36480b8c5b72e27c7d69ab2d54d2f2bd10c697dc11d29b39ad6ff879c1469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180757924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79d863d79992d62517d96843b527d6218222d7fa89c21e8b9200ee57af0bf17`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:28:10 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 15:28:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 15:29:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 15:36:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23553c09f38d30e3458ea50d0abacfd86477adf8fd9e0bdd9363d0bd9281fb54`  
		Last Modified: Tue, 17 Jul 2018 15:40:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5485e206ddd320c39b61645d684e7b141a1335107d415e0039dbd35a4166c4dc`  
		Last Modified: Tue, 17 Jul 2018 15:40:34 GMT  
		Size: 29.4 MB (29440927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69e900d7c0cc90bd2af79d9e59be71af6083546534b2a3907bda02504eeeb99`  
		Last Modified: Tue, 17 Jul 2018 15:44:32 GMT  
		Size: 121.0 MB (121044919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0.226`

```console
$ docker pull mono@sha256:7c589652e652cf59abf6aaef1ac7df103e650b78cdbc0d959e65c3e899a5f855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0.226` - linux; amd64

```console
$ docker pull mono@sha256:b88d348aa472f4746b32c0518ce64e2f5db9e80982a10ecdd2adf2ed5ef8021f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178486895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5934761dc8d58238ca4ee81e3813dcefd296cafec955093e2ea51bbd1b54a10`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:22:52 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 00:22:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:23:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 00:34:26 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f010d42dee2116f29314cb00c4359ddc86cfaa48e8ab7b516fe4e6d85409a`  
		Last Modified: Wed, 05 Sep 2018 00:35:05 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24afbee490d043be22ea64d08d3b307a7c6ef8d3a9524c40f1077809a22a540`  
		Last Modified: Wed, 05 Sep 2018 00:35:14 GMT  
		Size: 27.6 MB (27641361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4b2fe5ed77bc31c1704eb721730de6cdd7646b05c2caa478dfdc1a60bc457c`  
		Last Modified: Wed, 05 Sep 2018 00:36:59 GMT  
		Size: 120.7 MB (120722905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226` - linux; arm variant v7

```console
$ docker pull mono@sha256:685763ee69f4e2919bc2e3f5157e078640b4c811b33583a950ee355eb169c9cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152382234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc8ea029e60cfdcbe7666ac7d58c74fbee50838982fa8727ce06d5b41dcbf4e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:48 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 14:34:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 14:36:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 14:43:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41943f676c3d0ced5c80898f79b48404446edb6e5b1d514dd021e0a233dfe24e`  
		Last Modified: Tue, 17 Jul 2018 14:50:09 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245e673bc6522557d58c3e187d5f6223fcd42335b65f73ba3377d15607e977bf`  
		Last Modified: Tue, 17 Jul 2018 14:50:17 GMT  
		Size: 22.3 MB (22342918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48f14f47ac35084f933b0b6c43789d98f821f3ac9111fc2f925eae881445dfd`  
		Last Modified: Tue, 17 Jul 2018 14:52:11 GMT  
		Size: 103.8 MB (103750292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:6a9140f8fc5bd1a6a018c0c707911f96e0206dd7ec405ffc96b44f0249f437eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172629094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114299255f64b5b684b2cf82d87f03df647334cbcd446b632e79342cdb125502`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 08:53:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314ac8a828b1adf0d1aa4a845c0f4a4b561b6e8633844e806e3c4acaefa55f23`  
		Last Modified: Wed, 16 May 2018 09:04:20 GMT  
		Size: 118.5 MB (118541167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226` - linux; 386

```console
$ docker pull mono@sha256:90c36480b8c5b72e27c7d69ab2d54d2f2bd10c697dc11d29b39ad6ff879c1469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180757924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79d863d79992d62517d96843b527d6218222d7fa89c21e8b9200ee57af0bf17`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:28:10 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 15:28:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 15:29:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 15:36:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23553c09f38d30e3458ea50d0abacfd86477adf8fd9e0bdd9363d0bd9281fb54`  
		Last Modified: Tue, 17 Jul 2018 15:40:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5485e206ddd320c39b61645d684e7b141a1335107d415e0039dbd35a4166c4dc`  
		Last Modified: Tue, 17 Jul 2018 15:40:34 GMT  
		Size: 29.4 MB (29440927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69e900d7c0cc90bd2af79d9e59be71af6083546534b2a3907bda02504eeeb99`  
		Last Modified: Tue, 17 Jul 2018 15:44:32 GMT  
		Size: 121.0 MB (121044919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0.226-slim`

```console
$ docker pull mono@sha256:c060cfd5cbd085ab23dbe0db850423e8d7b6433359e36e2d12bef209d9ec4b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0.226-slim` - linux; amd64

```console
$ docker pull mono@sha256:a32371f13d7f907f0fb8949474c71bb429d3e93a16c3ed4de0686b2d63291941
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57763990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e3ad2e0d0699e712727f867ddf8531c2b05b1a4746a80e94343f25f45ef467`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:22:52 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 00:22:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:23:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f010d42dee2116f29314cb00c4359ddc86cfaa48e8ab7b516fe4e6d85409a`  
		Last Modified: Wed, 05 Sep 2018 00:35:05 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24afbee490d043be22ea64d08d3b307a7c6ef8d3a9524c40f1077809a22a540`  
		Last Modified: Wed, 05 Sep 2018 00:35:14 GMT  
		Size: 27.6 MB (27641361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:6228271bb0d0a276fc54e20816aeefc1b8df2fd6df0635f0f4c4c964182d1764
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48631942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c60b2be134bcfc25854207b1ac4acbdf89fa78b1f6dae83932b18ccffbe98a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:48 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 14:34:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 14:36:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41943f676c3d0ced5c80898f79b48404446edb6e5b1d514dd021e0a233dfe24e`  
		Last Modified: Tue, 17 Jul 2018 14:50:09 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245e673bc6522557d58c3e187d5f6223fcd42335b65f73ba3377d15607e977bf`  
		Last Modified: Tue, 17 Jul 2018 14:50:17 GMT  
		Size: 22.3 MB (22342918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:8a7ed38df5535022f541f496ad420d0797a08dbbafa3ddb3716021be574c202a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54087927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1a335f5d76bb1891b5a26f14e7e0c2d5e684c5d69c5d2477366d1bb3d16ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226-slim` - linux; 386

```console
$ docker pull mono@sha256:1522e91f00d7c7ae9c60c0375df56da30d3e69d1f264762101df1390f62dcc07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59713005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a1e5d7a8a6bf0e804641182d0d790bbbb22f198360358abe7811585d9cc2a9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:28:10 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 15:28:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 15:29:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23553c09f38d30e3458ea50d0abacfd86477adf8fd9e0bdd9363d0bd9281fb54`  
		Last Modified: Tue, 17 Jul 2018 15:40:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5485e206ddd320c39b61645d684e7b141a1335107d415e0039dbd35a4166c4dc`  
		Last Modified: Tue, 17 Jul 2018 15:40:34 GMT  
		Size: 29.4 MB (29440927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0-slim`

```console
$ docker pull mono@sha256:c060cfd5cbd085ab23dbe0db850423e8d7b6433359e36e2d12bef209d9ec4b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:a32371f13d7f907f0fb8949474c71bb429d3e93a16c3ed4de0686b2d63291941
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57763990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e3ad2e0d0699e712727f867ddf8531c2b05b1a4746a80e94343f25f45ef467`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:22:52 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 00:22:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:23:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f010d42dee2116f29314cb00c4359ddc86cfaa48e8ab7b516fe4e6d85409a`  
		Last Modified: Wed, 05 Sep 2018 00:35:05 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24afbee490d043be22ea64d08d3b307a7c6ef8d3a9524c40f1077809a22a540`  
		Last Modified: Wed, 05 Sep 2018 00:35:14 GMT  
		Size: 27.6 MB (27641361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:6228271bb0d0a276fc54e20816aeefc1b8df2fd6df0635f0f4c4c964182d1764
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48631942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c60b2be134bcfc25854207b1ac4acbdf89fa78b1f6dae83932b18ccffbe98a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:48 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 14:34:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 14:36:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41943f676c3d0ced5c80898f79b48404446edb6e5b1d514dd021e0a233dfe24e`  
		Last Modified: Tue, 17 Jul 2018 14:50:09 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245e673bc6522557d58c3e187d5f6223fcd42335b65f73ba3377d15607e977bf`  
		Last Modified: Tue, 17 Jul 2018 14:50:17 GMT  
		Size: 22.3 MB (22342918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:8a7ed38df5535022f541f496ad420d0797a08dbbafa3ddb3716021be574c202a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54087927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1a335f5d76bb1891b5a26f14e7e0c2d5e684c5d69c5d2477366d1bb3d16ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0-slim` - linux; 386

```console
$ docker pull mono@sha256:1522e91f00d7c7ae9c60c0375df56da30d3e69d1f264762101df1390f62dcc07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59713005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a1e5d7a8a6bf0e804641182d0d790bbbb22f198360358abe7811585d9cc2a9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:28:10 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 15:28:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 15:29:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23553c09f38d30e3458ea50d0abacfd86477adf8fd9e0bdd9363d0bd9281fb54`  
		Last Modified: Tue, 17 Jul 2018 15:40:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5485e206ddd320c39b61645d684e7b141a1335107d415e0039dbd35a4166c4dc`  
		Last Modified: Tue, 17 Jul 2018 15:40:34 GMT  
		Size: 29.4 MB (29440927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12-slim`

```console
$ docker pull mono@sha256:c060cfd5cbd085ab23dbe0db850423e8d7b6433359e36e2d12bef209d9ec4b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12-slim` - linux; amd64

```console
$ docker pull mono@sha256:a32371f13d7f907f0fb8949474c71bb429d3e93a16c3ed4de0686b2d63291941
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57763990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e3ad2e0d0699e712727f867ddf8531c2b05b1a4746a80e94343f25f45ef467`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:22:52 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 00:22:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:23:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5f010d42dee2116f29314cb00c4359ddc86cfaa48e8ab7b516fe4e6d85409a`  
		Last Modified: Wed, 05 Sep 2018 00:35:05 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24afbee490d043be22ea64d08d3b307a7c6ef8d3a9524c40f1077809a22a540`  
		Last Modified: Wed, 05 Sep 2018 00:35:14 GMT  
		Size: 27.6 MB (27641361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:6228271bb0d0a276fc54e20816aeefc1b8df2fd6df0635f0f4c4c964182d1764
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48631942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c60b2be134bcfc25854207b1ac4acbdf89fa78b1f6dae83932b18ccffbe98a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:48 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 14:34:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 14:36:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41943f676c3d0ced5c80898f79b48404446edb6e5b1d514dd021e0a233dfe24e`  
		Last Modified: Tue, 17 Jul 2018 14:50:09 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245e673bc6522557d58c3e187d5f6223fcd42335b65f73ba3377d15607e977bf`  
		Last Modified: Tue, 17 Jul 2018 14:50:17 GMT  
		Size: 22.3 MB (22342918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:8a7ed38df5535022f541f496ad420d0797a08dbbafa3ddb3716021be574c202a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54087927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1a335f5d76bb1891b5a26f14e7e0c2d5e684c5d69c5d2477366d1bb3d16ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12-slim` - linux; 386

```console
$ docker pull mono@sha256:1522e91f00d7c7ae9c60c0375df56da30d3e69d1f264762101df1390f62dcc07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59713005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a1e5d7a8a6bf0e804641182d0d790bbbb22f198360358abe7811585d9cc2a9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:28:10 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 15:28:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 15:29:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23553c09f38d30e3458ea50d0abacfd86477adf8fd9e0bdd9363d0bd9281fb54`  
		Last Modified: Tue, 17 Jul 2018 15:40:19 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5485e206ddd320c39b61645d684e7b141a1335107d415e0039dbd35a4166c4dc`  
		Last Modified: Tue, 17 Jul 2018 15:40:34 GMT  
		Size: 29.4 MB (29440927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14`

```console
$ docker pull mono@sha256:d26703df051dc6228d141ef035bf704860ae3902e82c198050f5b60cf2351f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14` - linux; amd64

```console
$ docker pull mono@sha256:aaff7d2ca3dd5f22aeb65965afd7cfddae287175cdc5c7a32d8a9264e411cacb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199299884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bc07ec171b72c454fc4dc1c31598b1a82a9d0baefe465fb5d7dbd31253f382`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 00:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d0fbddc66c2952c064079c751ddbfc060e2c5f00b583ba303b4ff66737839b`  
		Last Modified: Wed, 05 Sep 2018 00:36:21 GMT  
		Size: 118.6 MB (118555176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14` - linux; arm variant v7

```console
$ docker pull mono@sha256:47626db302906c09f4ce29a861fd2f328ddc0dfea6ab9c844bf6160ee42fe195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176959925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b9c34a003208a74b9755aab30644d3428e1575223d76fd0dcd103368fa61a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 12:17:54 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ba26f9fa402e0eec83d1312aa0c1a9fec603356067e533662ad5ecd9351c27`  
		Last Modified: Thu, 09 Aug 2018 12:19:42 GMT  
		Size: 108.8 MB (108828729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14` - linux; 386

```console
$ docker pull mono@sha256:31e88cab5f20d6c7e61395bb20f777ffd06398cd3642868718a46b6fb7502eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208577474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432a70a10348af2c76c4408eb8e839f1ddf80ad38fd17b2425ee9bd46cc04efa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 10:52:09 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1336dcd581ca7255a898ccf686303650474213feddbfea2251d1e041594a7e9b`  
		Last Modified: Thu, 09 Aug 2018 10:55:48 GMT  
		Size: 123.8 MB (123844487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0`

```console
$ docker pull mono@sha256:d26703df051dc6228d141ef035bf704860ae3902e82c198050f5b60cf2351f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0` - linux; amd64

```console
$ docker pull mono@sha256:aaff7d2ca3dd5f22aeb65965afd7cfddae287175cdc5c7a32d8a9264e411cacb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199299884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bc07ec171b72c454fc4dc1c31598b1a82a9d0baefe465fb5d7dbd31253f382`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 00:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d0fbddc66c2952c064079c751ddbfc060e2c5f00b583ba303b4ff66737839b`  
		Last Modified: Wed, 05 Sep 2018 00:36:21 GMT  
		Size: 118.6 MB (118555176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:47626db302906c09f4ce29a861fd2f328ddc0dfea6ab9c844bf6160ee42fe195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176959925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b9c34a003208a74b9755aab30644d3428e1575223d76fd0dcd103368fa61a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 12:17:54 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ba26f9fa402e0eec83d1312aa0c1a9fec603356067e533662ad5ecd9351c27`  
		Last Modified: Thu, 09 Aug 2018 12:19:42 GMT  
		Size: 108.8 MB (108828729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0` - linux; 386

```console
$ docker pull mono@sha256:31e88cab5f20d6c7e61395bb20f777ffd06398cd3642868718a46b6fb7502eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208577474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432a70a10348af2c76c4408eb8e839f1ddf80ad38fd17b2425ee9bd46cc04efa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 10:52:09 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1336dcd581ca7255a898ccf686303650474213feddbfea2251d1e041594a7e9b`  
		Last Modified: Thu, 09 Aug 2018 10:55:48 GMT  
		Size: 123.8 MB (123844487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0.177`

```console
$ docker pull mono@sha256:d26703df051dc6228d141ef035bf704860ae3902e82c198050f5b60cf2351f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0.177` - linux; amd64

```console
$ docker pull mono@sha256:aaff7d2ca3dd5f22aeb65965afd7cfddae287175cdc5c7a32d8a9264e411cacb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199299884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bc07ec171b72c454fc4dc1c31598b1a82a9d0baefe465fb5d7dbd31253f382`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 00:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d0fbddc66c2952c064079c751ddbfc060e2c5f00b583ba303b4ff66737839b`  
		Last Modified: Wed, 05 Sep 2018 00:36:21 GMT  
		Size: 118.6 MB (118555176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177` - linux; arm variant v7

```console
$ docker pull mono@sha256:47626db302906c09f4ce29a861fd2f328ddc0dfea6ab9c844bf6160ee42fe195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176959925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b9c34a003208a74b9755aab30644d3428e1575223d76fd0dcd103368fa61a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 12:17:54 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ba26f9fa402e0eec83d1312aa0c1a9fec603356067e533662ad5ecd9351c27`  
		Last Modified: Thu, 09 Aug 2018 12:19:42 GMT  
		Size: 108.8 MB (108828729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177` - linux; 386

```console
$ docker pull mono@sha256:31e88cab5f20d6c7e61395bb20f777ffd06398cd3642868718a46b6fb7502eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208577474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432a70a10348af2c76c4408eb8e839f1ddf80ad38fd17b2425ee9bd46cc04efa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 10:52:09 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1336dcd581ca7255a898ccf686303650474213feddbfea2251d1e041594a7e9b`  
		Last Modified: Thu, 09 Aug 2018 10:55:48 GMT  
		Size: 123.8 MB (123844487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0.177-slim`

```console
$ docker pull mono@sha256:91631e0b215898f18d43d51400370bee183070738f8e37be5833fbb5803030cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0.177-slim` - linux; amd64

```console
$ docker pull mono@sha256:a690e53015230837f5b86f658f0d29d48b6d7162cfac5fd8b4e0978f23227134
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80744708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22afec10a0e90ae936f882335640feb64f7b91bce2ccbdc45bbe2657f893f800`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:f5546f7e61b8fdfad4de770788225f2caaf6bdf2c789ea6970def88992e64005
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d621ee0fb58324c6da92e200a2c61aaeb13ebb1e712321552ff5cddacce4d55`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177-slim` - linux; 386

```console
$ docker pull mono@sha256:80ced1271958d6eaf9ff5a916b611503a6f97bb8cdc342cd2d3611d0790c8d2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83165fd3636badc40efb8666284925748525a61ad89fcf0dee7e81f71627d92e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0-slim`

```console
$ docker pull mono@sha256:91631e0b215898f18d43d51400370bee183070738f8e37be5833fbb5803030cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:a690e53015230837f5b86f658f0d29d48b6d7162cfac5fd8b4e0978f23227134
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80744708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22afec10a0e90ae936f882335640feb64f7b91bce2ccbdc45bbe2657f893f800`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:f5546f7e61b8fdfad4de770788225f2caaf6bdf2c789ea6970def88992e64005
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d621ee0fb58324c6da92e200a2c61aaeb13ebb1e712321552ff5cddacce4d55`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0-slim` - linux; 386

```console
$ docker pull mono@sha256:80ced1271958d6eaf9ff5a916b611503a6f97bb8cdc342cd2d3611d0790c8d2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83165fd3636badc40efb8666284925748525a61ad89fcf0dee7e81f71627d92e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14-slim`

```console
$ docker pull mono@sha256:91631e0b215898f18d43d51400370bee183070738f8e37be5833fbb5803030cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14-slim` - linux; amd64

```console
$ docker pull mono@sha256:a690e53015230837f5b86f658f0d29d48b6d7162cfac5fd8b4e0978f23227134
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80744708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22afec10a0e90ae936f882335640feb64f7b91bce2ccbdc45bbe2657f893f800`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:f5546f7e61b8fdfad4de770788225f2caaf6bdf2c789ea6970def88992e64005
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d621ee0fb58324c6da92e200a2c61aaeb13ebb1e712321552ff5cddacce4d55`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14-slim` - linux; 386

```console
$ docker pull mono@sha256:80ced1271958d6eaf9ff5a916b611503a6f97bb8cdc342cd2d3611d0790c8d2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83165fd3636badc40efb8666284925748525a61ad89fcf0dee7e81f71627d92e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:91631e0b215898f18d43d51400370bee183070738f8e37be5833fbb5803030cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:a690e53015230837f5b86f658f0d29d48b6d7162cfac5fd8b4e0978f23227134
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80744708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22afec10a0e90ae936f882335640feb64f7b91bce2ccbdc45bbe2657f893f800`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:f5546f7e61b8fdfad4de770788225f2caaf6bdf2c789ea6970def88992e64005
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d621ee0fb58324c6da92e200a2c61aaeb13ebb1e712321552ff5cddacce4d55`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:80ced1271958d6eaf9ff5a916b611503a6f97bb8cdc342cd2d3611d0790c8d2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83165fd3636badc40efb8666284925748525a61ad89fcf0dee7e81f71627d92e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:d26703df051dc6228d141ef035bf704860ae3902e82c198050f5b60cf2351f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:aaff7d2ca3dd5f22aeb65965afd7cfddae287175cdc5c7a32d8a9264e411cacb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199299884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bc07ec171b72c454fc4dc1c31598b1a82a9d0baefe465fb5d7dbd31253f382`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 00:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d0fbddc66c2952c064079c751ddbfc060e2c5f00b583ba303b4ff66737839b`  
		Last Modified: Wed, 05 Sep 2018 00:36:21 GMT  
		Size: 118.6 MB (118555176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:47626db302906c09f4ce29a861fd2f328ddc0dfea6ab9c844bf6160ee42fe195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176959925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b9c34a003208a74b9755aab30644d3428e1575223d76fd0dcd103368fa61a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 12:17:54 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ba26f9fa402e0eec83d1312aa0c1a9fec603356067e533662ad5ecd9351c27`  
		Last Modified: Thu, 09 Aug 2018 12:19:42 GMT  
		Size: 108.8 MB (108828729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:31e88cab5f20d6c7e61395bb20f777ffd06398cd3642868718a46b6fb7502eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208577474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432a70a10348af2c76c4408eb8e839f1ddf80ad38fd17b2425ee9bd46cc04efa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 10:52:09 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1336dcd581ca7255a898ccf686303650474213feddbfea2251d1e041594a7e9b`  
		Last Modified: Thu, 09 Aug 2018 10:55:48 GMT  
		Size: 123.8 MB (123844487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:91631e0b215898f18d43d51400370bee183070738f8e37be5833fbb5803030cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:a690e53015230837f5b86f658f0d29d48b6d7162cfac5fd8b4e0978f23227134
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80744708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22afec10a0e90ae936f882335640feb64f7b91bce2ccbdc45bbe2657f893f800`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:f5546f7e61b8fdfad4de770788225f2caaf6bdf2c789ea6970def88992e64005
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d621ee0fb58324c6da92e200a2c61aaeb13ebb1e712321552ff5cddacce4d55`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:80ced1271958d6eaf9ff5a916b611503a6f97bb8cdc342cd2d3611d0790c8d2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83165fd3636badc40efb8666284925748525a61ad89fcf0dee7e81f71627d92e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

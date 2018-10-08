<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:4`](#mono4)
-	[`mono:4.8`](#mono48)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:5`](#mono5)
-	[`mono:5.14`](#mono514)
-	[`mono:5.14.0`](#mono5140)
-	[`mono:5.14.0.177`](#mono5140177)
-	[`mono:5.14.0.177-slim`](#mono5140177-slim)
-	[`mono:5.14.0-slim`](#mono5140-slim)
-	[`mono:5.14-slim`](#mono514-slim)
-	[`mono:5.16`](#mono516)
-	[`mono:5.16.0`](#mono5160)
-	[`mono:5.16.0.179`](#mono5160179)
-	[`mono:5.16.0.179-slim`](#mono5160179-slim)
-	[`mono:5.16.0-slim`](#mono5160-slim)
-	[`mono:5.16-slim`](#mono516-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:7a193f3dc65e7ae5b205f486c9e4dee99cee5c8a542efd77b08ffae8c9dab72d
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
$ docker pull mono@sha256:d7ff2299370a44a6777daab289a7b252b9dafbdc655aae4b057c14c662e80220
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60559f1d385eb50290267b182b6ad15c79d384a4c87b0e0954fb3ab0329d010`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:45:49 GMT
ADD file:f270dc2a82d00313de1f792ee286405bcb5fa0e79dbfa44cf9cb0abc3c42221d in / 
# Wed, 05 Sep 2018 10:45:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:30:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 05 Sep 2018 12:30:05 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 05 Sep 2018 12:30:24 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:30:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:32:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ffdb7073d93a02815a69b2a5396cb5bb86c592de0ac9fa593b1c71b964d536cd`  
		Last Modified: Wed, 05 Sep 2018 10:54:06 GMT  
		Size: 40.5 MB (40532872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f1d6809055b4f25a61b8af0d3f9fde636b98da4e29b5a127a34b7f3d5e42bf`  
		Last Modified: Wed, 05 Sep 2018 12:41:52 GMT  
		Size: 6.4 MB (6406282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13cc39f8e13c8d16ef1bc892349652394f19a73690b4f63faaaa6e86f5bc1c9`  
		Last Modified: Wed, 05 Sep 2018 12:41:49 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c520075e0f6d4f43c17b46c456df7f047159e41d53ab71f35884d21e8343ef`  
		Last Modified: Wed, 05 Sep 2018 12:42:42 GMT  
		Size: 106.0 MB (106007794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:7a193f3dc65e7ae5b205f486c9e4dee99cee5c8a542efd77b08ffae8c9dab72d
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
$ docker pull mono@sha256:d7ff2299370a44a6777daab289a7b252b9dafbdc655aae4b057c14c662e80220
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60559f1d385eb50290267b182b6ad15c79d384a4c87b0e0954fb3ab0329d010`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:45:49 GMT
ADD file:f270dc2a82d00313de1f792ee286405bcb5fa0e79dbfa44cf9cb0abc3c42221d in / 
# Wed, 05 Sep 2018 10:45:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:30:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 05 Sep 2018 12:30:05 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 05 Sep 2018 12:30:24 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:30:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:32:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ffdb7073d93a02815a69b2a5396cb5bb86c592de0ac9fa593b1c71b964d536cd`  
		Last Modified: Wed, 05 Sep 2018 10:54:06 GMT  
		Size: 40.5 MB (40532872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f1d6809055b4f25a61b8af0d3f9fde636b98da4e29b5a127a34b7f3d5e42bf`  
		Last Modified: Wed, 05 Sep 2018 12:41:52 GMT  
		Size: 6.4 MB (6406282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13cc39f8e13c8d16ef1bc892349652394f19a73690b4f63faaaa6e86f5bc1c9`  
		Last Modified: Wed, 05 Sep 2018 12:41:49 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c520075e0f6d4f43c17b46c456df7f047159e41d53ab71f35884d21e8343ef`  
		Last Modified: Wed, 05 Sep 2018 12:42:42 GMT  
		Size: 106.0 MB (106007794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:7a193f3dc65e7ae5b205f486c9e4dee99cee5c8a542efd77b08ffae8c9dab72d
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
$ docker pull mono@sha256:d7ff2299370a44a6777daab289a7b252b9dafbdc655aae4b057c14c662e80220
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60559f1d385eb50290267b182b6ad15c79d384a4c87b0e0954fb3ab0329d010`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:45:49 GMT
ADD file:f270dc2a82d00313de1f792ee286405bcb5fa0e79dbfa44cf9cb0abc3c42221d in / 
# Wed, 05 Sep 2018 10:45:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:30:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 05 Sep 2018 12:30:05 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 05 Sep 2018 12:30:24 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:30:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:32:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ffdb7073d93a02815a69b2a5396cb5bb86c592de0ac9fa593b1c71b964d536cd`  
		Last Modified: Wed, 05 Sep 2018 10:54:06 GMT  
		Size: 40.5 MB (40532872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f1d6809055b4f25a61b8af0d3f9fde636b98da4e29b5a127a34b7f3d5e42bf`  
		Last Modified: Wed, 05 Sep 2018 12:41:52 GMT  
		Size: 6.4 MB (6406282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13cc39f8e13c8d16ef1bc892349652394f19a73690b4f63faaaa6e86f5bc1c9`  
		Last Modified: Wed, 05 Sep 2018 12:41:49 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c520075e0f6d4f43c17b46c456df7f047159e41d53ab71f35884d21e8343ef`  
		Last Modified: Wed, 05 Sep 2018 12:42:42 GMT  
		Size: 106.0 MB (106007794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:7a193f3dc65e7ae5b205f486c9e4dee99cee5c8a542efd77b08ffae8c9dab72d
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
$ docker pull mono@sha256:d7ff2299370a44a6777daab289a7b252b9dafbdc655aae4b057c14c662e80220
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60559f1d385eb50290267b182b6ad15c79d384a4c87b0e0954fb3ab0329d010`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:45:49 GMT
ADD file:f270dc2a82d00313de1f792ee286405bcb5fa0e79dbfa44cf9cb0abc3c42221d in / 
# Wed, 05 Sep 2018 10:45:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:30:05 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 05 Sep 2018 12:30:05 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 05 Sep 2018 12:30:24 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:30:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:32:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ffdb7073d93a02815a69b2a5396cb5bb86c592de0ac9fa593b1c71b964d536cd`  
		Last Modified: Wed, 05 Sep 2018 10:54:06 GMT  
		Size: 40.5 MB (40532872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f1d6809055b4f25a61b8af0d3f9fde636b98da4e29b5a127a34b7f3d5e42bf`  
		Last Modified: Wed, 05 Sep 2018 12:41:52 GMT  
		Size: 6.4 MB (6406282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13cc39f8e13c8d16ef1bc892349652394f19a73690b4f63faaaa6e86f5bc1c9`  
		Last Modified: Wed, 05 Sep 2018 12:41:49 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c520075e0f6d4f43c17b46c456df7f047159e41d53ab71f35884d21e8343ef`  
		Last Modified: Wed, 05 Sep 2018 12:42:42 GMT  
		Size: 106.0 MB (106007794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:b65b3687448fd050e35c77acccbdccdf4938ef3ea2d510495141f73cce87b1c1
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
$ docker pull mono@sha256:045cb285d598579af08d3591e7ac24a5d418f5c55da5bc0815796764e30b3b9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176957327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4e377ec1dc79961700eb3e4ca5ec525b78f1c81d28e15e59dab66f08ce3e09`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:46:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:48:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:58:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38788cacaa86563e84ef337c52a23e096e939c7e3186fb632399ae32ad4d090b`  
		Last Modified: Wed, 05 Sep 2018 13:00:52 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56fa378bd1d626bd3cb5e27f85e5e24d2ffca2c7c35d6f9b3cc757add1628b`  
		Last Modified: Wed, 05 Sep 2018 13:01:04 GMT  
		Size: 41.8 MB (41842542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c816fbb529623d351df96f0caf61d1b7b8d3b2c20882ce871ff948baac2b4e5`  
		Last Modified: Wed, 05 Sep 2018 13:02:49 GMT  
		Size: 108.8 MB (108825716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:ff67c80404fe3113c539e79617550649acc8709bf64f9418743ade29a8a40374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208576922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:637aec430e5e1aa410092b59a950d1c90268bda50009d9646404374ab9aace3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:24:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:24:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:27:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:36:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e08c9f4263e98c010859acac5e09c7f6eaafdc615f0187c1efccb4f9cac6f`  
		Last Modified: Wed, 05 Sep 2018 12:40:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92172861947cf31dafe204527e3989fb1b07d7b681141a6cc9869e511fce486c`  
		Last Modified: Wed, 05 Sep 2018 12:41:14 GMT  
		Size: 54.5 MB (54460786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abefef6bd379e71783dcf9b1fea61abf0affce275444af036915bdaaa92f06b6`  
		Last Modified: Wed, 05 Sep 2018 12:43:54 GMT  
		Size: 123.8 MB (123844002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14`

```console
$ docker pull mono@sha256:b65b3687448fd050e35c77acccbdccdf4938ef3ea2d510495141f73cce87b1c1
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
$ docker pull mono@sha256:045cb285d598579af08d3591e7ac24a5d418f5c55da5bc0815796764e30b3b9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176957327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4e377ec1dc79961700eb3e4ca5ec525b78f1c81d28e15e59dab66f08ce3e09`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:46:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:48:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:58:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38788cacaa86563e84ef337c52a23e096e939c7e3186fb632399ae32ad4d090b`  
		Last Modified: Wed, 05 Sep 2018 13:00:52 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56fa378bd1d626bd3cb5e27f85e5e24d2ffca2c7c35d6f9b3cc757add1628b`  
		Last Modified: Wed, 05 Sep 2018 13:01:04 GMT  
		Size: 41.8 MB (41842542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c816fbb529623d351df96f0caf61d1b7b8d3b2c20882ce871ff948baac2b4e5`  
		Last Modified: Wed, 05 Sep 2018 13:02:49 GMT  
		Size: 108.8 MB (108825716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14` - linux; 386

```console
$ docker pull mono@sha256:ff67c80404fe3113c539e79617550649acc8709bf64f9418743ade29a8a40374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208576922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:637aec430e5e1aa410092b59a950d1c90268bda50009d9646404374ab9aace3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:24:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:24:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:27:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:36:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e08c9f4263e98c010859acac5e09c7f6eaafdc615f0187c1efccb4f9cac6f`  
		Last Modified: Wed, 05 Sep 2018 12:40:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92172861947cf31dafe204527e3989fb1b07d7b681141a6cc9869e511fce486c`  
		Last Modified: Wed, 05 Sep 2018 12:41:14 GMT  
		Size: 54.5 MB (54460786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abefef6bd379e71783dcf9b1fea61abf0affce275444af036915bdaaa92f06b6`  
		Last Modified: Wed, 05 Sep 2018 12:43:54 GMT  
		Size: 123.8 MB (123844002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0`

```console
$ docker pull mono@sha256:b65b3687448fd050e35c77acccbdccdf4938ef3ea2d510495141f73cce87b1c1
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
$ docker pull mono@sha256:045cb285d598579af08d3591e7ac24a5d418f5c55da5bc0815796764e30b3b9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176957327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4e377ec1dc79961700eb3e4ca5ec525b78f1c81d28e15e59dab66f08ce3e09`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:46:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:48:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:58:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38788cacaa86563e84ef337c52a23e096e939c7e3186fb632399ae32ad4d090b`  
		Last Modified: Wed, 05 Sep 2018 13:00:52 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56fa378bd1d626bd3cb5e27f85e5e24d2ffca2c7c35d6f9b3cc757add1628b`  
		Last Modified: Wed, 05 Sep 2018 13:01:04 GMT  
		Size: 41.8 MB (41842542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c816fbb529623d351df96f0caf61d1b7b8d3b2c20882ce871ff948baac2b4e5`  
		Last Modified: Wed, 05 Sep 2018 13:02:49 GMT  
		Size: 108.8 MB (108825716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0` - linux; 386

```console
$ docker pull mono@sha256:ff67c80404fe3113c539e79617550649acc8709bf64f9418743ade29a8a40374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208576922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:637aec430e5e1aa410092b59a950d1c90268bda50009d9646404374ab9aace3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:24:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:24:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:27:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:36:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e08c9f4263e98c010859acac5e09c7f6eaafdc615f0187c1efccb4f9cac6f`  
		Last Modified: Wed, 05 Sep 2018 12:40:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92172861947cf31dafe204527e3989fb1b07d7b681141a6cc9869e511fce486c`  
		Last Modified: Wed, 05 Sep 2018 12:41:14 GMT  
		Size: 54.5 MB (54460786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abefef6bd379e71783dcf9b1fea61abf0affce275444af036915bdaaa92f06b6`  
		Last Modified: Wed, 05 Sep 2018 12:43:54 GMT  
		Size: 123.8 MB (123844002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0.177`

```console
$ docker pull mono@sha256:b65b3687448fd050e35c77acccbdccdf4938ef3ea2d510495141f73cce87b1c1
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
$ docker pull mono@sha256:045cb285d598579af08d3591e7ac24a5d418f5c55da5bc0815796764e30b3b9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176957327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4e377ec1dc79961700eb3e4ca5ec525b78f1c81d28e15e59dab66f08ce3e09`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:46:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:48:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:58:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38788cacaa86563e84ef337c52a23e096e939c7e3186fb632399ae32ad4d090b`  
		Last Modified: Wed, 05 Sep 2018 13:00:52 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56fa378bd1d626bd3cb5e27f85e5e24d2ffca2c7c35d6f9b3cc757add1628b`  
		Last Modified: Wed, 05 Sep 2018 13:01:04 GMT  
		Size: 41.8 MB (41842542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c816fbb529623d351df96f0caf61d1b7b8d3b2c20882ce871ff948baac2b4e5`  
		Last Modified: Wed, 05 Sep 2018 13:02:49 GMT  
		Size: 108.8 MB (108825716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177` - linux; 386

```console
$ docker pull mono@sha256:ff67c80404fe3113c539e79617550649acc8709bf64f9418743ade29a8a40374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208576922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:637aec430e5e1aa410092b59a950d1c90268bda50009d9646404374ab9aace3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:24:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:24:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:27:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:36:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e08c9f4263e98c010859acac5e09c7f6eaafdc615f0187c1efccb4f9cac6f`  
		Last Modified: Wed, 05 Sep 2018 12:40:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92172861947cf31dafe204527e3989fb1b07d7b681141a6cc9869e511fce486c`  
		Last Modified: Wed, 05 Sep 2018 12:41:14 GMT  
		Size: 54.5 MB (54460786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abefef6bd379e71783dcf9b1fea61abf0affce275444af036915bdaaa92f06b6`  
		Last Modified: Wed, 05 Sep 2018 12:43:54 GMT  
		Size: 123.8 MB (123844002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0.177-slim`

```console
$ docker pull mono@sha256:5b7ff6b2374522b4b9df884473a6e3ab8c96059f3428de803b6a5b814f3fc617
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
$ docker pull mono@sha256:6f5e5940521d59ac8da1f639510541907ad4e46eb230d7eb48228345f1020a8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6d343876918251c46c1f061260b1005bbb5927b617a8bcef49b0f1f12ad962`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:46:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:48:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38788cacaa86563e84ef337c52a23e096e939c7e3186fb632399ae32ad4d090b`  
		Last Modified: Wed, 05 Sep 2018 13:00:52 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56fa378bd1d626bd3cb5e27f85e5e24d2ffca2c7c35d6f9b3cc757add1628b`  
		Last Modified: Wed, 05 Sep 2018 13:01:04 GMT  
		Size: 41.8 MB (41842542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177-slim` - linux; 386

```console
$ docker pull mono@sha256:878fb0753d238ff7ea65a8d36c1a403eedb35b1e32653ddbef067341a0e66c2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390405609cc1e0abee0c3f150882782e734f38cdbddecf9c48d48da0d96ca167`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:24:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:24:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:27:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e08c9f4263e98c010859acac5e09c7f6eaafdc615f0187c1efccb4f9cac6f`  
		Last Modified: Wed, 05 Sep 2018 12:40:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92172861947cf31dafe204527e3989fb1b07d7b681141a6cc9869e511fce486c`  
		Last Modified: Wed, 05 Sep 2018 12:41:14 GMT  
		Size: 54.5 MB (54460786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0-slim`

```console
$ docker pull mono@sha256:5b7ff6b2374522b4b9df884473a6e3ab8c96059f3428de803b6a5b814f3fc617
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
$ docker pull mono@sha256:6f5e5940521d59ac8da1f639510541907ad4e46eb230d7eb48228345f1020a8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6d343876918251c46c1f061260b1005bbb5927b617a8bcef49b0f1f12ad962`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:46:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:48:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38788cacaa86563e84ef337c52a23e096e939c7e3186fb632399ae32ad4d090b`  
		Last Modified: Wed, 05 Sep 2018 13:00:52 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56fa378bd1d626bd3cb5e27f85e5e24d2ffca2c7c35d6f9b3cc757add1628b`  
		Last Modified: Wed, 05 Sep 2018 13:01:04 GMT  
		Size: 41.8 MB (41842542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0-slim` - linux; 386

```console
$ docker pull mono@sha256:878fb0753d238ff7ea65a8d36c1a403eedb35b1e32653ddbef067341a0e66c2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390405609cc1e0abee0c3f150882782e734f38cdbddecf9c48d48da0d96ca167`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:24:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:24:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:27:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e08c9f4263e98c010859acac5e09c7f6eaafdc615f0187c1efccb4f9cac6f`  
		Last Modified: Wed, 05 Sep 2018 12:40:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92172861947cf31dafe204527e3989fb1b07d7b681141a6cc9869e511fce486c`  
		Last Modified: Wed, 05 Sep 2018 12:41:14 GMT  
		Size: 54.5 MB (54460786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14-slim`

```console
$ docker pull mono@sha256:5b7ff6b2374522b4b9df884473a6e3ab8c96059f3428de803b6a5b814f3fc617
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
$ docker pull mono@sha256:6f5e5940521d59ac8da1f639510541907ad4e46eb230d7eb48228345f1020a8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6d343876918251c46c1f061260b1005bbb5927b617a8bcef49b0f1f12ad962`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:46:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:48:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38788cacaa86563e84ef337c52a23e096e939c7e3186fb632399ae32ad4d090b`  
		Last Modified: Wed, 05 Sep 2018 13:00:52 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56fa378bd1d626bd3cb5e27f85e5e24d2ffca2c7c35d6f9b3cc757add1628b`  
		Last Modified: Wed, 05 Sep 2018 13:01:04 GMT  
		Size: 41.8 MB (41842542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14-slim` - linux; 386

```console
$ docker pull mono@sha256:878fb0753d238ff7ea65a8d36c1a403eedb35b1e32653ddbef067341a0e66c2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390405609cc1e0abee0c3f150882782e734f38cdbddecf9c48d48da0d96ca167`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:24:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:24:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:27:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e08c9f4263e98c010859acac5e09c7f6eaafdc615f0187c1efccb4f9cac6f`  
		Last Modified: Wed, 05 Sep 2018 12:40:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92172861947cf31dafe204527e3989fb1b07d7b681141a6cc9869e511fce486c`  
		Last Modified: Wed, 05 Sep 2018 12:41:14 GMT  
		Size: 54.5 MB (54460786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16`

**does not exist** (yet?)

## `mono:5.16.0`

**does not exist** (yet?)

## `mono:5.16.0.179`

**does not exist** (yet?)

## `mono:5.16.0.179-slim`

**does not exist** (yet?)

## `mono:5.16.0-slim`

**does not exist** (yet?)

## `mono:5.16-slim`

**does not exist** (yet?)

## `mono:5-slim`

```console
$ docker pull mono@sha256:5b7ff6b2374522b4b9df884473a6e3ab8c96059f3428de803b6a5b814f3fc617
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
$ docker pull mono@sha256:6f5e5940521d59ac8da1f639510541907ad4e46eb230d7eb48228345f1020a8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6d343876918251c46c1f061260b1005bbb5927b617a8bcef49b0f1f12ad962`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:46:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:48:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38788cacaa86563e84ef337c52a23e096e939c7e3186fb632399ae32ad4d090b`  
		Last Modified: Wed, 05 Sep 2018 13:00:52 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56fa378bd1d626bd3cb5e27f85e5e24d2ffca2c7c35d6f9b3cc757add1628b`  
		Last Modified: Wed, 05 Sep 2018 13:01:04 GMT  
		Size: 41.8 MB (41842542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:878fb0753d238ff7ea65a8d36c1a403eedb35b1e32653ddbef067341a0e66c2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390405609cc1e0abee0c3f150882782e734f38cdbddecf9c48d48da0d96ca167`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:24:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:24:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:27:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e08c9f4263e98c010859acac5e09c7f6eaafdc615f0187c1efccb4f9cac6f`  
		Last Modified: Wed, 05 Sep 2018 12:40:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92172861947cf31dafe204527e3989fb1b07d7b681141a6cc9869e511fce486c`  
		Last Modified: Wed, 05 Sep 2018 12:41:14 GMT  
		Size: 54.5 MB (54460786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:b65b3687448fd050e35c77acccbdccdf4938ef3ea2d510495141f73cce87b1c1
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
$ docker pull mono@sha256:045cb285d598579af08d3591e7ac24a5d418f5c55da5bc0815796764e30b3b9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176957327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4e377ec1dc79961700eb3e4ca5ec525b78f1c81d28e15e59dab66f08ce3e09`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:46:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:48:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:58:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38788cacaa86563e84ef337c52a23e096e939c7e3186fb632399ae32ad4d090b`  
		Last Modified: Wed, 05 Sep 2018 13:00:52 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56fa378bd1d626bd3cb5e27f85e5e24d2ffca2c7c35d6f9b3cc757add1628b`  
		Last Modified: Wed, 05 Sep 2018 13:01:04 GMT  
		Size: 41.8 MB (41842542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c816fbb529623d351df96f0caf61d1b7b8d3b2c20882ce871ff948baac2b4e5`  
		Last Modified: Wed, 05 Sep 2018 13:02:49 GMT  
		Size: 108.8 MB (108825716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:ff67c80404fe3113c539e79617550649acc8709bf64f9418743ade29a8a40374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208576922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:637aec430e5e1aa410092b59a950d1c90268bda50009d9646404374ab9aace3c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:24:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:24:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:27:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:36:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e08c9f4263e98c010859acac5e09c7f6eaafdc615f0187c1efccb4f9cac6f`  
		Last Modified: Wed, 05 Sep 2018 12:40:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92172861947cf31dafe204527e3989fb1b07d7b681141a6cc9869e511fce486c`  
		Last Modified: Wed, 05 Sep 2018 12:41:14 GMT  
		Size: 54.5 MB (54460786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abefef6bd379e71783dcf9b1fea61abf0affce275444af036915bdaaa92f06b6`  
		Last Modified: Wed, 05 Sep 2018 12:43:54 GMT  
		Size: 123.8 MB (123844002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:5b7ff6b2374522b4b9df884473a6e3ab8c96059f3428de803b6a5b814f3fc617
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
$ docker pull mono@sha256:6f5e5940521d59ac8da1f639510541907ad4e46eb230d7eb48228345f1020a8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6d343876918251c46c1f061260b1005bbb5927b617a8bcef49b0f1f12ad962`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:46:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:48:02 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38788cacaa86563e84ef337c52a23e096e939c7e3186fb632399ae32ad4d090b`  
		Last Modified: Wed, 05 Sep 2018 13:00:52 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56fa378bd1d626bd3cb5e27f85e5e24d2ffca2c7c35d6f9b3cc757add1628b`  
		Last Modified: Wed, 05 Sep 2018 13:01:04 GMT  
		Size: 41.8 MB (41842542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:878fb0753d238ff7ea65a8d36c1a403eedb35b1e32653ddbef067341a0e66c2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390405609cc1e0abee0c3f150882782e734f38cdbddecf9c48d48da0d96ca167`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:24:45 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 12:24:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:27:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e08c9f4263e98c010859acac5e09c7f6eaafdc615f0187c1efccb4f9cac6f`  
		Last Modified: Wed, 05 Sep 2018 12:40:48 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92172861947cf31dafe204527e3989fb1b07d7b681141a6cc9869e511fce486c`  
		Last Modified: Wed, 05 Sep 2018 12:41:14 GMT  
		Size: 54.5 MB (54460786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

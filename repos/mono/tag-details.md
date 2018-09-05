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
$ docker pull mono@sha256:87611bfc4a38f1e381f56b45b7335dc14b20ff03e2f25f2107cdd38653780a7f
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

## `mono:5.12`

```console
$ docker pull mono@sha256:3ca2fb0b4a8b5d20796d1b613870e7244c5b392b1076aebc5402798b20bb184f
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
$ docker pull mono@sha256:a8ee61e6bcfa64fea329de8d47297d9d56f355ce06b5633017c03a78dc30265d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180755224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4de012be210741a0805e5cadf5a5a1b76b41402a943d8c2736cd37a432b8ec`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:27:33 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 12:27:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:29:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:40:30 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eec946536b5a649dbee71b0e1571ca57678174aad1972eb7346b9553dcb006a`  
		Last Modified: Wed, 05 Sep 2018 12:41:25 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f4915cd9c20a649e543d07c655555df5c86c4f1aa063cd17d7b34c8c27a253`  
		Last Modified: Wed, 05 Sep 2018 12:41:42 GMT  
		Size: 29.4 MB (29444435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d1cf1fefd8c4a92882d1e5ae84fe481fa7e1eacef5bb3c60c7e7526e08db71`  
		Last Modified: Wed, 05 Sep 2018 12:45:10 GMT  
		Size: 121.0 MB (121038651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0`

```console
$ docker pull mono@sha256:3ca2fb0b4a8b5d20796d1b613870e7244c5b392b1076aebc5402798b20bb184f
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
$ docker pull mono@sha256:a8ee61e6bcfa64fea329de8d47297d9d56f355ce06b5633017c03a78dc30265d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180755224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4de012be210741a0805e5cadf5a5a1b76b41402a943d8c2736cd37a432b8ec`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:27:33 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 12:27:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:29:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:40:30 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eec946536b5a649dbee71b0e1571ca57678174aad1972eb7346b9553dcb006a`  
		Last Modified: Wed, 05 Sep 2018 12:41:25 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f4915cd9c20a649e543d07c655555df5c86c4f1aa063cd17d7b34c8c27a253`  
		Last Modified: Wed, 05 Sep 2018 12:41:42 GMT  
		Size: 29.4 MB (29444435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d1cf1fefd8c4a92882d1e5ae84fe481fa7e1eacef5bb3c60c7e7526e08db71`  
		Last Modified: Wed, 05 Sep 2018 12:45:10 GMT  
		Size: 121.0 MB (121038651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0.226`

```console
$ docker pull mono@sha256:3ca2fb0b4a8b5d20796d1b613870e7244c5b392b1076aebc5402798b20bb184f
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
$ docker pull mono@sha256:a8ee61e6bcfa64fea329de8d47297d9d56f355ce06b5633017c03a78dc30265d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180755224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4de012be210741a0805e5cadf5a5a1b76b41402a943d8c2736cd37a432b8ec`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:27:33 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 12:27:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:29:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 12:40:30 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eec946536b5a649dbee71b0e1571ca57678174aad1972eb7346b9553dcb006a`  
		Last Modified: Wed, 05 Sep 2018 12:41:25 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f4915cd9c20a649e543d07c655555df5c86c4f1aa063cd17d7b34c8c27a253`  
		Last Modified: Wed, 05 Sep 2018 12:41:42 GMT  
		Size: 29.4 MB (29444435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d1cf1fefd8c4a92882d1e5ae84fe481fa7e1eacef5bb3c60c7e7526e08db71`  
		Last Modified: Wed, 05 Sep 2018 12:45:10 GMT  
		Size: 121.0 MB (121038651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0.226-slim`

```console
$ docker pull mono@sha256:5bbe66da51d03a690679a0e410e14b46834e6322681a3f955c6887ddc9c5d34c
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
$ docker pull mono@sha256:d37b540a96e80df3af7f6a4e9e80c3f779adfab3239b806a469ee4cc33a20b4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59716573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47eb02c3017125a078189a38048666aaecd02cccf139dbb8b23c3989a504418e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:27:33 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 12:27:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:29:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eec946536b5a649dbee71b0e1571ca57678174aad1972eb7346b9553dcb006a`  
		Last Modified: Wed, 05 Sep 2018 12:41:25 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f4915cd9c20a649e543d07c655555df5c86c4f1aa063cd17d7b34c8c27a253`  
		Last Modified: Wed, 05 Sep 2018 12:41:42 GMT  
		Size: 29.4 MB (29444435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0-slim`

```console
$ docker pull mono@sha256:5bbe66da51d03a690679a0e410e14b46834e6322681a3f955c6887ddc9c5d34c
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
$ docker pull mono@sha256:d37b540a96e80df3af7f6a4e9e80c3f779adfab3239b806a469ee4cc33a20b4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59716573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47eb02c3017125a078189a38048666aaecd02cccf139dbb8b23c3989a504418e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:27:33 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 12:27:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:29:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eec946536b5a649dbee71b0e1571ca57678174aad1972eb7346b9553dcb006a`  
		Last Modified: Wed, 05 Sep 2018 12:41:25 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f4915cd9c20a649e543d07c655555df5c86c4f1aa063cd17d7b34c8c27a253`  
		Last Modified: Wed, 05 Sep 2018 12:41:42 GMT  
		Size: 29.4 MB (29444435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12-slim`

```console
$ docker pull mono@sha256:5bbe66da51d03a690679a0e410e14b46834e6322681a3f955c6887ddc9c5d34c
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
$ docker pull mono@sha256:d37b540a96e80df3af7f6a4e9e80c3f779adfab3239b806a469ee4cc33a20b4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59716573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47eb02c3017125a078189a38048666aaecd02cccf139dbb8b23c3989a504418e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:27:33 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 05 Sep 2018 12:27:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 12:29:51 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eec946536b5a649dbee71b0e1571ca57678174aad1972eb7346b9553dcb006a`  
		Last Modified: Wed, 05 Sep 2018 12:41:25 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f4915cd9c20a649e543d07c655555df5c86c4f1aa063cd17d7b34c8c27a253`  
		Last Modified: Wed, 05 Sep 2018 12:41:42 GMT  
		Size: 29.4 MB (29444435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14`

```console
$ docker pull mono@sha256:87611bfc4a38f1e381f56b45b7335dc14b20ff03e2f25f2107cdd38653780a7f
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
$ docker pull mono@sha256:87611bfc4a38f1e381f56b45b7335dc14b20ff03e2f25f2107cdd38653780a7f
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
$ docker pull mono@sha256:87611bfc4a38f1e381f56b45b7335dc14b20ff03e2f25f2107cdd38653780a7f
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
$ docker pull mono@sha256:f4e2a5bee612846fdc2c67d283c803602ed8aeacca6e51fc6d4f8e22d13c8adf
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
$ docker pull mono@sha256:f4e2a5bee612846fdc2c67d283c803602ed8aeacca6e51fc6d4f8e22d13c8adf
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
$ docker pull mono@sha256:f4e2a5bee612846fdc2c67d283c803602ed8aeacca6e51fc6d4f8e22d13c8adf
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

## `mono:5-slim`

```console
$ docker pull mono@sha256:f4e2a5bee612846fdc2c67d283c803602ed8aeacca6e51fc6d4f8e22d13c8adf
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
$ docker pull mono@sha256:87611bfc4a38f1e381f56b45b7335dc14b20ff03e2f25f2107cdd38653780a7f
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
$ docker pull mono@sha256:f4e2a5bee612846fdc2c67d283c803602ed8aeacca6e51fc6d4f8e22d13c8adf
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

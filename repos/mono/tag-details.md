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
$ docker pull mono@sha256:d339ee6dcb74e99144ba3387eb9caaf311c86d9224c81ebdd689eff94c7e4790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:c748566ecb81a1559d1f79b2e375bfefb29cfb52ac041026605785343ab14e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcd825f5b2fdd6e1976f04ae6e95d5ac39a35188a93ad00bdeb83f5ad8a4438`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:47:37 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 06:47:37 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 06:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:47:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:48:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba7201fcf9a1ec2333ff23a91994494ee415db34b8c18ce2f4d0b52dd36a5a8`  
		Last Modified: Tue, 16 Oct 2018 07:02:34 GMT  
		Size: 6.4 MB (6418802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b0bf6aa48c49f3a86b4e5d4a813a056f122bd08f828d4b18deeb3af4d1406`  
		Last Modified: Tue, 16 Oct 2018 07:02:33 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f11f1fdf94f48416c4f3e15aa733159156c4695be0d99c725882a81fd3f34e`  
		Last Modified: Tue, 16 Oct 2018 07:02:54 GMT  
		Size: 107.2 MB (107189089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v7

```console
$ docker pull mono@sha256:a4c247491ae71b230eac83fe0e31d8abd3a365581274a7b193bb60dc54cbd4dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138904568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91470febc204e3d79022514b72c6087ebc38ef11765884a68b6bf90506a71ee7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:09:26 GMT
ADD file:8935227f32a3e91c86efa1305b607c27bdd98b340fdd6ad7342366363999a514 in / 
# Tue, 16 Oct 2018 12:09:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:09:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 13:09:19 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 13:09:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:09:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 13:11:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ec8fef9acc449b28b0c87a81f00dd797c93892b15c350b9cd5f042f27f80de6d`  
		Last Modified: Tue, 16 Oct 2018 12:18:26 GMT  
		Size: 36.6 MB (36620330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fc0c6b61eb12e25256d5b619457cd839ac5d3ce301bbdeedb5823d481af97`  
		Last Modified: Tue, 16 Oct 2018 13:11:43 GMT  
		Size: 6.1 MB (6116679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e4959d63403ca85e00c0d7eea796f52d18ae7a0f410409bbf120ed86425105`  
		Last Modified: Tue, 16 Oct 2018 13:11:42 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cebb2eb5828b8df494dafae23489bb3655e23c3f542664b2149fc571044417`  
		Last Modified: Tue, 16 Oct 2018 13:12:21 GMT  
		Size: 96.1 MB (96137653 bytes)  
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
$ docker pull mono@sha256:d339ee6dcb74e99144ba3387eb9caaf311c86d9224c81ebdd689eff94c7e4790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:c748566ecb81a1559d1f79b2e375bfefb29cfb52ac041026605785343ab14e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcd825f5b2fdd6e1976f04ae6e95d5ac39a35188a93ad00bdeb83f5ad8a4438`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:47:37 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 06:47:37 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 06:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:47:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:48:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba7201fcf9a1ec2333ff23a91994494ee415db34b8c18ce2f4d0b52dd36a5a8`  
		Last Modified: Tue, 16 Oct 2018 07:02:34 GMT  
		Size: 6.4 MB (6418802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b0bf6aa48c49f3a86b4e5d4a813a056f122bd08f828d4b18deeb3af4d1406`  
		Last Modified: Tue, 16 Oct 2018 07:02:33 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f11f1fdf94f48416c4f3e15aa733159156c4695be0d99c725882a81fd3f34e`  
		Last Modified: Tue, 16 Oct 2018 07:02:54 GMT  
		Size: 107.2 MB (107189089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v7

```console
$ docker pull mono@sha256:a4c247491ae71b230eac83fe0e31d8abd3a365581274a7b193bb60dc54cbd4dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138904568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91470febc204e3d79022514b72c6087ebc38ef11765884a68b6bf90506a71ee7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:09:26 GMT
ADD file:8935227f32a3e91c86efa1305b607c27bdd98b340fdd6ad7342366363999a514 in / 
# Tue, 16 Oct 2018 12:09:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:09:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 13:09:19 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 13:09:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:09:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 13:11:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ec8fef9acc449b28b0c87a81f00dd797c93892b15c350b9cd5f042f27f80de6d`  
		Last Modified: Tue, 16 Oct 2018 12:18:26 GMT  
		Size: 36.6 MB (36620330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fc0c6b61eb12e25256d5b619457cd839ac5d3ce301bbdeedb5823d481af97`  
		Last Modified: Tue, 16 Oct 2018 13:11:43 GMT  
		Size: 6.1 MB (6116679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e4959d63403ca85e00c0d7eea796f52d18ae7a0f410409bbf120ed86425105`  
		Last Modified: Tue, 16 Oct 2018 13:11:42 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cebb2eb5828b8df494dafae23489bb3655e23c3f542664b2149fc571044417`  
		Last Modified: Tue, 16 Oct 2018 13:12:21 GMT  
		Size: 96.1 MB (96137653 bytes)  
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
$ docker pull mono@sha256:d339ee6dcb74e99144ba3387eb9caaf311c86d9224c81ebdd689eff94c7e4790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:c748566ecb81a1559d1f79b2e375bfefb29cfb52ac041026605785343ab14e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcd825f5b2fdd6e1976f04ae6e95d5ac39a35188a93ad00bdeb83f5ad8a4438`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:47:37 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 06:47:37 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 06:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:47:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:48:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba7201fcf9a1ec2333ff23a91994494ee415db34b8c18ce2f4d0b52dd36a5a8`  
		Last Modified: Tue, 16 Oct 2018 07:02:34 GMT  
		Size: 6.4 MB (6418802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b0bf6aa48c49f3a86b4e5d4a813a056f122bd08f828d4b18deeb3af4d1406`  
		Last Modified: Tue, 16 Oct 2018 07:02:33 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f11f1fdf94f48416c4f3e15aa733159156c4695be0d99c725882a81fd3f34e`  
		Last Modified: Tue, 16 Oct 2018 07:02:54 GMT  
		Size: 107.2 MB (107189089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:a4c247491ae71b230eac83fe0e31d8abd3a365581274a7b193bb60dc54cbd4dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138904568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91470febc204e3d79022514b72c6087ebc38ef11765884a68b6bf90506a71ee7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:09:26 GMT
ADD file:8935227f32a3e91c86efa1305b607c27bdd98b340fdd6ad7342366363999a514 in / 
# Tue, 16 Oct 2018 12:09:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:09:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 13:09:19 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 13:09:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:09:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 13:11:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ec8fef9acc449b28b0c87a81f00dd797c93892b15c350b9cd5f042f27f80de6d`  
		Last Modified: Tue, 16 Oct 2018 12:18:26 GMT  
		Size: 36.6 MB (36620330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fc0c6b61eb12e25256d5b619457cd839ac5d3ce301bbdeedb5823d481af97`  
		Last Modified: Tue, 16 Oct 2018 13:11:43 GMT  
		Size: 6.1 MB (6116679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e4959d63403ca85e00c0d7eea796f52d18ae7a0f410409bbf120ed86425105`  
		Last Modified: Tue, 16 Oct 2018 13:11:42 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cebb2eb5828b8df494dafae23489bb3655e23c3f542664b2149fc571044417`  
		Last Modified: Tue, 16 Oct 2018 13:12:21 GMT  
		Size: 96.1 MB (96137653 bytes)  
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
$ docker pull mono@sha256:d339ee6dcb74e99144ba3387eb9caaf311c86d9224c81ebdd689eff94c7e4790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:c748566ecb81a1559d1f79b2e375bfefb29cfb52ac041026605785343ab14e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dcd825f5b2fdd6e1976f04ae6e95d5ac39a35188a93ad00bdeb83f5ad8a4438`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:47:37 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 06:47:37 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 06:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:47:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:48:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba7201fcf9a1ec2333ff23a91994494ee415db34b8c18ce2f4d0b52dd36a5a8`  
		Last Modified: Tue, 16 Oct 2018 07:02:34 GMT  
		Size: 6.4 MB (6418802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b0bf6aa48c49f3a86b4e5d4a813a056f122bd08f828d4b18deeb3af4d1406`  
		Last Modified: Tue, 16 Oct 2018 07:02:33 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f11f1fdf94f48416c4f3e15aa733159156c4695be0d99c725882a81fd3f34e`  
		Last Modified: Tue, 16 Oct 2018 07:02:54 GMT  
		Size: 107.2 MB (107189089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v7

```console
$ docker pull mono@sha256:a4c247491ae71b230eac83fe0e31d8abd3a365581274a7b193bb60dc54cbd4dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138904568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91470febc204e3d79022514b72c6087ebc38ef11765884a68b6bf90506a71ee7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:09:26 GMT
ADD file:8935227f32a3e91c86efa1305b607c27bdd98b340fdd6ad7342366363999a514 in / 
# Tue, 16 Oct 2018 12:09:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 13:09:18 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 13:09:19 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 13:09:34 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:09:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 13:11:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ec8fef9acc449b28b0c87a81f00dd797c93892b15c350b9cd5f042f27f80de6d`  
		Last Modified: Tue, 16 Oct 2018 12:18:26 GMT  
		Size: 36.6 MB (36620330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7fc0c6b61eb12e25256d5b619457cd839ac5d3ce301bbdeedb5823d481af97`  
		Last Modified: Tue, 16 Oct 2018 13:11:43 GMT  
		Size: 6.1 MB (6116679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e4959d63403ca85e00c0d7eea796f52d18ae7a0f410409bbf120ed86425105`  
		Last Modified: Tue, 16 Oct 2018 13:11:42 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46cebb2eb5828b8df494dafae23489bb3655e23c3f542664b2149fc571044417`  
		Last Modified: Tue, 16 Oct 2018 13:12:21 GMT  
		Size: 96.1 MB (96137653 bytes)  
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
$ docker pull mono@sha256:a4106f6e783735d5f807920640057d26868f803e82da7d2c2add22d34ce906a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:a57f986fd6c347dd4fb40ead2876d777f898190322a6c67cdc26b525639cc887
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196313218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10d48e24cfd04597d0c97f5bc25b26d1cb31be74358c5c088be5717ae7b2553`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:45:25 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 06:45:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:46:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 06:54:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1b3de808587272c43d446508b8fdc604e29706161dd05ab6ca6980c2d90db6`  
		Last Modified: Tue, 16 Oct 2018 07:00:51 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c99d68345fa5f6c93b64f8c306fbecf1ae8fbad6bfdacf46e7df8a33b5239de`  
		Last Modified: Tue, 16 Oct 2018 07:01:01 GMT  
		Size: 45.5 MB (45510264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e67c306f5273bdf1cbbd63a655faa71a982cc2f27b59d98adb79408d2a124`  
		Last Modified: Tue, 16 Oct 2018 07:04:28 GMT  
		Size: 120.7 MB (120680266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:5ed2d1fb307e237273bba284f8ba352e60dc8acedfa255cdd29d6d9d793367a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169131919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc368a235144c2f17525d9e8e618e1dee873223b9e2379a3d1279b2a0a2ba850`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 09 Oct 2018 12:11:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd691ee1d63fa1e6ea62fe0d1e7b1b18d57863f7101289ff2237457675cea0b`  
		Last Modified: Tue, 09 Oct 2018 12:15:22 GMT  
		Size: 105.3 MB (105318540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:6c54980353749aff12af25f94084c3323fa3ceab2442bf599d08d24b1115c98f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205158240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07fc3449b121b2035f3d6a8562d8aab784f30f5d599731367b22e4fd212acde`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 09 Oct 2018 10:42:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96135af28ebd1cd0a4d355cd5cd9d77f0e8345f8aba77b8571c2217e20b89f1`  
		Last Modified: Tue, 09 Oct 2018 10:44:12 GMT  
		Size: 125.9 MB (125949382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14`

```console
$ docker pull mono@sha256:96fccab173abdddd6011374e3106f0db3d274d75ce8d7160e11a699629a764ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14` - linux; amd64

```console
$ docker pull mono@sha256:a7ca0699bb678809d1a87569961edc502b8d9c5ec8dde7592a3316b697d2064e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199299776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ba2e8f1d7c81df55e56d8c567ca96fc6f68c75c713410d3fd450048d344caa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:46:30 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 06:46:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:47:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 07:00:33 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1831df62b5b5571622317f184aa934265910f53808c7069b71511e7747e55b`  
		Last Modified: Tue, 16 Oct 2018 07:01:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f026ca101620346727c4df3472a8c48db77c1c2fc160809119a01503fb3872`  
		Last Modified: Tue, 16 Oct 2018 07:01:58 GMT  
		Size: 50.6 MB (50622113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae6c7c8ad5455280d0d86ac7e8968925084c3cb19ca0877eb0a9d23f8e2da3`  
		Last Modified: Tue, 16 Oct 2018 07:05:39 GMT  
		Size: 118.6 MB (118554975 bytes)  
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
$ docker pull mono@sha256:96fccab173abdddd6011374e3106f0db3d274d75ce8d7160e11a699629a764ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0` - linux; amd64

```console
$ docker pull mono@sha256:a7ca0699bb678809d1a87569961edc502b8d9c5ec8dde7592a3316b697d2064e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199299776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ba2e8f1d7c81df55e56d8c567ca96fc6f68c75c713410d3fd450048d344caa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:46:30 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 06:46:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:47:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 07:00:33 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1831df62b5b5571622317f184aa934265910f53808c7069b71511e7747e55b`  
		Last Modified: Tue, 16 Oct 2018 07:01:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f026ca101620346727c4df3472a8c48db77c1c2fc160809119a01503fb3872`  
		Last Modified: Tue, 16 Oct 2018 07:01:58 GMT  
		Size: 50.6 MB (50622113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae6c7c8ad5455280d0d86ac7e8968925084c3cb19ca0877eb0a9d23f8e2da3`  
		Last Modified: Tue, 16 Oct 2018 07:05:39 GMT  
		Size: 118.6 MB (118554975 bytes)  
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
$ docker pull mono@sha256:96fccab173abdddd6011374e3106f0db3d274d75ce8d7160e11a699629a764ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0.177` - linux; amd64

```console
$ docker pull mono@sha256:a7ca0699bb678809d1a87569961edc502b8d9c5ec8dde7592a3316b697d2064e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199299776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ba2e8f1d7c81df55e56d8c567ca96fc6f68c75c713410d3fd450048d344caa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:46:30 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 06:46:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:47:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 07:00:33 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1831df62b5b5571622317f184aa934265910f53808c7069b71511e7747e55b`  
		Last Modified: Tue, 16 Oct 2018 07:01:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f026ca101620346727c4df3472a8c48db77c1c2fc160809119a01503fb3872`  
		Last Modified: Tue, 16 Oct 2018 07:01:58 GMT  
		Size: 50.6 MB (50622113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae6c7c8ad5455280d0d86ac7e8968925084c3cb19ca0877eb0a9d23f8e2da3`  
		Last Modified: Tue, 16 Oct 2018 07:05:39 GMT  
		Size: 118.6 MB (118554975 bytes)  
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
$ docker pull mono@sha256:444f999afd43c415292570b64cc2e231c6dea97c3a4792439b83b0a87af37673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0.177-slim` - linux; amd64

```console
$ docker pull mono@sha256:3f0ef52e3d221bfa4b793a983acfd5c92e31728c12730d151a53c4098bf3167c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80744801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14930ca65d4b2031e04cd697ea98009286f5f8c1c9e491e288a0df6ac59acf03`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:46:30 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 06:46:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:47:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1831df62b5b5571622317f184aa934265910f53808c7069b71511e7747e55b`  
		Last Modified: Tue, 16 Oct 2018 07:01:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f026ca101620346727c4df3472a8c48db77c1c2fc160809119a01503fb3872`  
		Last Modified: Tue, 16 Oct 2018 07:01:58 GMT  
		Size: 50.6 MB (50622113 bytes)  
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
$ docker pull mono@sha256:444f999afd43c415292570b64cc2e231c6dea97c3a4792439b83b0a87af37673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:3f0ef52e3d221bfa4b793a983acfd5c92e31728c12730d151a53c4098bf3167c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80744801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14930ca65d4b2031e04cd697ea98009286f5f8c1c9e491e288a0df6ac59acf03`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:46:30 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 06:46:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:47:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1831df62b5b5571622317f184aa934265910f53808c7069b71511e7747e55b`  
		Last Modified: Tue, 16 Oct 2018 07:01:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f026ca101620346727c4df3472a8c48db77c1c2fc160809119a01503fb3872`  
		Last Modified: Tue, 16 Oct 2018 07:01:58 GMT  
		Size: 50.6 MB (50622113 bytes)  
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
$ docker pull mono@sha256:444f999afd43c415292570b64cc2e231c6dea97c3a4792439b83b0a87af37673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14-slim` - linux; amd64

```console
$ docker pull mono@sha256:3f0ef52e3d221bfa4b793a983acfd5c92e31728c12730d151a53c4098bf3167c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80744801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14930ca65d4b2031e04cd697ea98009286f5f8c1c9e491e288a0df6ac59acf03`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:46:30 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 06:46:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:47:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1831df62b5b5571622317f184aa934265910f53808c7069b71511e7747e55b`  
		Last Modified: Tue, 16 Oct 2018 07:01:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f026ca101620346727c4df3472a8c48db77c1c2fc160809119a01503fb3872`  
		Last Modified: Tue, 16 Oct 2018 07:01:58 GMT  
		Size: 50.6 MB (50622113 bytes)  
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

```console
$ docker pull mono@sha256:a4106f6e783735d5f807920640057d26868f803e82da7d2c2add22d34ce906a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16` - linux; amd64

```console
$ docker pull mono@sha256:a57f986fd6c347dd4fb40ead2876d777f898190322a6c67cdc26b525639cc887
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196313218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10d48e24cfd04597d0c97f5bc25b26d1cb31be74358c5c088be5717ae7b2553`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:45:25 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 06:45:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:46:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 06:54:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1b3de808587272c43d446508b8fdc604e29706161dd05ab6ca6980c2d90db6`  
		Last Modified: Tue, 16 Oct 2018 07:00:51 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c99d68345fa5f6c93b64f8c306fbecf1ae8fbad6bfdacf46e7df8a33b5239de`  
		Last Modified: Tue, 16 Oct 2018 07:01:01 GMT  
		Size: 45.5 MB (45510264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e67c306f5273bdf1cbbd63a655faa71a982cc2f27b59d98adb79408d2a124`  
		Last Modified: Tue, 16 Oct 2018 07:04:28 GMT  
		Size: 120.7 MB (120680266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v7

```console
$ docker pull mono@sha256:5ed2d1fb307e237273bba284f8ba352e60dc8acedfa255cdd29d6d9d793367a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169131919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc368a235144c2f17525d9e8e618e1dee873223b9e2379a3d1279b2a0a2ba850`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 09 Oct 2018 12:11:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd691ee1d63fa1e6ea62fe0d1e7b1b18d57863f7101289ff2237457675cea0b`  
		Last Modified: Tue, 09 Oct 2018 12:15:22 GMT  
		Size: 105.3 MB (105318540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; 386

```console
$ docker pull mono@sha256:6c54980353749aff12af25f94084c3323fa3ceab2442bf599d08d24b1115c98f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205158240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07fc3449b121b2035f3d6a8562d8aab784f30f5d599731367b22e4fd212acde`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 09 Oct 2018 10:42:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96135af28ebd1cd0a4d355cd5cd9d77f0e8345f8aba77b8571c2217e20b89f1`  
		Last Modified: Tue, 09 Oct 2018 10:44:12 GMT  
		Size: 125.9 MB (125949382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0`

```console
$ docker pull mono@sha256:a4106f6e783735d5f807920640057d26868f803e82da7d2c2add22d34ce906a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0` - linux; amd64

```console
$ docker pull mono@sha256:a57f986fd6c347dd4fb40ead2876d777f898190322a6c67cdc26b525639cc887
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196313218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10d48e24cfd04597d0c97f5bc25b26d1cb31be74358c5c088be5717ae7b2553`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:45:25 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 06:45:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:46:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 06:54:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1b3de808587272c43d446508b8fdc604e29706161dd05ab6ca6980c2d90db6`  
		Last Modified: Tue, 16 Oct 2018 07:00:51 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c99d68345fa5f6c93b64f8c306fbecf1ae8fbad6bfdacf46e7df8a33b5239de`  
		Last Modified: Tue, 16 Oct 2018 07:01:01 GMT  
		Size: 45.5 MB (45510264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e67c306f5273bdf1cbbd63a655faa71a982cc2f27b59d98adb79408d2a124`  
		Last Modified: Tue, 16 Oct 2018 07:04:28 GMT  
		Size: 120.7 MB (120680266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:5ed2d1fb307e237273bba284f8ba352e60dc8acedfa255cdd29d6d9d793367a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169131919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc368a235144c2f17525d9e8e618e1dee873223b9e2379a3d1279b2a0a2ba850`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 09 Oct 2018 12:11:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd691ee1d63fa1e6ea62fe0d1e7b1b18d57863f7101289ff2237457675cea0b`  
		Last Modified: Tue, 09 Oct 2018 12:15:22 GMT  
		Size: 105.3 MB (105318540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; 386

```console
$ docker pull mono@sha256:6c54980353749aff12af25f94084c3323fa3ceab2442bf599d08d24b1115c98f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205158240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07fc3449b121b2035f3d6a8562d8aab784f30f5d599731367b22e4fd212acde`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 09 Oct 2018 10:42:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96135af28ebd1cd0a4d355cd5cd9d77f0e8345f8aba77b8571c2217e20b89f1`  
		Last Modified: Tue, 09 Oct 2018 10:44:12 GMT  
		Size: 125.9 MB (125949382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.179`

```console
$ docker pull mono@sha256:a4106f6e783735d5f807920640057d26868f803e82da7d2c2add22d34ce906a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0.179` - linux; amd64

```console
$ docker pull mono@sha256:a57f986fd6c347dd4fb40ead2876d777f898190322a6c67cdc26b525639cc887
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196313218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10d48e24cfd04597d0c97f5bc25b26d1cb31be74358c5c088be5717ae7b2553`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:45:25 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 06:45:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:46:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 06:54:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1b3de808587272c43d446508b8fdc604e29706161dd05ab6ca6980c2d90db6`  
		Last Modified: Tue, 16 Oct 2018 07:00:51 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c99d68345fa5f6c93b64f8c306fbecf1ae8fbad6bfdacf46e7df8a33b5239de`  
		Last Modified: Tue, 16 Oct 2018 07:01:01 GMT  
		Size: 45.5 MB (45510264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e67c306f5273bdf1cbbd63a655faa71a982cc2f27b59d98adb79408d2a124`  
		Last Modified: Tue, 16 Oct 2018 07:04:28 GMT  
		Size: 120.7 MB (120680266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.179` - linux; arm variant v7

```console
$ docker pull mono@sha256:5ed2d1fb307e237273bba284f8ba352e60dc8acedfa255cdd29d6d9d793367a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169131919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc368a235144c2f17525d9e8e618e1dee873223b9e2379a3d1279b2a0a2ba850`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 09 Oct 2018 12:11:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd691ee1d63fa1e6ea62fe0d1e7b1b18d57863f7101289ff2237457675cea0b`  
		Last Modified: Tue, 09 Oct 2018 12:15:22 GMT  
		Size: 105.3 MB (105318540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.179` - linux; 386

```console
$ docker pull mono@sha256:6c54980353749aff12af25f94084c3323fa3ceab2442bf599d08d24b1115c98f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205158240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07fc3449b121b2035f3d6a8562d8aab784f30f5d599731367b22e4fd212acde`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 09 Oct 2018 10:42:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96135af28ebd1cd0a4d355cd5cd9d77f0e8345f8aba77b8571c2217e20b89f1`  
		Last Modified: Tue, 09 Oct 2018 10:44:12 GMT  
		Size: 125.9 MB (125949382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.179-slim`

```console
$ docker pull mono@sha256:5ecc760b2f2cc2a16a8d2fdaff00d11fd39b0bd2759fa05b52ce591d3bfc7096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0.179-slim` - linux; amd64

```console
$ docker pull mono@sha256:cd46bc40d455856c70bff2a0b8db39132ba45b28613a60b9090e49b0627c6bed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75632952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a805e93bb9d305272d65f328f6ef63626e79acfa6f6d04c72efb0d1d9c0fcc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:45:25 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 06:45:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:46:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1b3de808587272c43d446508b8fdc604e29706161dd05ab6ca6980c2d90db6`  
		Last Modified: Tue, 16 Oct 2018 07:00:51 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c99d68345fa5f6c93b64f8c306fbecf1ae8fbad6bfdacf46e7df8a33b5239de`  
		Last Modified: Tue, 16 Oct 2018 07:01:01 GMT  
		Size: 45.5 MB (45510264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.179-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:11274082028152668c6c9689c89552f3a1a7029653b50e8a7a6b51e5da2671d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63813379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfac4cf94b91c11d8cdca26fa9dc603c57938da5ed836e7ce90067b829ff77e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.179-slim` - linux; 386

```console
$ docker pull mono@sha256:855a9236e6e005371fbb48b371f33042c8164cd3e7b1b68c3d1d3ee2fc2ebe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b57f67ec070f023ad969c003e8d58be5ecffa2a6b4124407954425d8643f4b6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0-slim`

```console
$ docker pull mono@sha256:5ecc760b2f2cc2a16a8d2fdaff00d11fd39b0bd2759fa05b52ce591d3bfc7096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:cd46bc40d455856c70bff2a0b8db39132ba45b28613a60b9090e49b0627c6bed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75632952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a805e93bb9d305272d65f328f6ef63626e79acfa6f6d04c72efb0d1d9c0fcc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:45:25 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 06:45:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:46:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1b3de808587272c43d446508b8fdc604e29706161dd05ab6ca6980c2d90db6`  
		Last Modified: Tue, 16 Oct 2018 07:00:51 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c99d68345fa5f6c93b64f8c306fbecf1ae8fbad6bfdacf46e7df8a33b5239de`  
		Last Modified: Tue, 16 Oct 2018 07:01:01 GMT  
		Size: 45.5 MB (45510264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:11274082028152668c6c9689c89552f3a1a7029653b50e8a7a6b51e5da2671d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63813379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfac4cf94b91c11d8cdca26fa9dc603c57938da5ed836e7ce90067b829ff77e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; 386

```console
$ docker pull mono@sha256:855a9236e6e005371fbb48b371f33042c8164cd3e7b1b68c3d1d3ee2fc2ebe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b57f67ec070f023ad969c003e8d58be5ecffa2a6b4124407954425d8643f4b6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16-slim`

```console
$ docker pull mono@sha256:5ecc760b2f2cc2a16a8d2fdaff00d11fd39b0bd2759fa05b52ce591d3bfc7096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16-slim` - linux; amd64

```console
$ docker pull mono@sha256:cd46bc40d455856c70bff2a0b8db39132ba45b28613a60b9090e49b0627c6bed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75632952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a805e93bb9d305272d65f328f6ef63626e79acfa6f6d04c72efb0d1d9c0fcc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:45:25 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 06:45:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:46:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1b3de808587272c43d446508b8fdc604e29706161dd05ab6ca6980c2d90db6`  
		Last Modified: Tue, 16 Oct 2018 07:00:51 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c99d68345fa5f6c93b64f8c306fbecf1ae8fbad6bfdacf46e7df8a33b5239de`  
		Last Modified: Tue, 16 Oct 2018 07:01:01 GMT  
		Size: 45.5 MB (45510264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:11274082028152668c6c9689c89552f3a1a7029653b50e8a7a6b51e5da2671d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63813379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfac4cf94b91c11d8cdca26fa9dc603c57938da5ed836e7ce90067b829ff77e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; 386

```console
$ docker pull mono@sha256:855a9236e6e005371fbb48b371f33042c8164cd3e7b1b68c3d1d3ee2fc2ebe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b57f67ec070f023ad969c003e8d58be5ecffa2a6b4124407954425d8643f4b6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:5ecc760b2f2cc2a16a8d2fdaff00d11fd39b0bd2759fa05b52ce591d3bfc7096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:cd46bc40d455856c70bff2a0b8db39132ba45b28613a60b9090e49b0627c6bed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75632952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a805e93bb9d305272d65f328f6ef63626e79acfa6f6d04c72efb0d1d9c0fcc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:45:25 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 06:45:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:46:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1b3de808587272c43d446508b8fdc604e29706161dd05ab6ca6980c2d90db6`  
		Last Modified: Tue, 16 Oct 2018 07:00:51 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c99d68345fa5f6c93b64f8c306fbecf1ae8fbad6bfdacf46e7df8a33b5239de`  
		Last Modified: Tue, 16 Oct 2018 07:01:01 GMT  
		Size: 45.5 MB (45510264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:11274082028152668c6c9689c89552f3a1a7029653b50e8a7a6b51e5da2671d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63813379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfac4cf94b91c11d8cdca26fa9dc603c57938da5ed836e7ce90067b829ff77e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:855a9236e6e005371fbb48b371f33042c8164cd3e7b1b68c3d1d3ee2fc2ebe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b57f67ec070f023ad969c003e8d58be5ecffa2a6b4124407954425d8643f4b6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:a4106f6e783735d5f807920640057d26868f803e82da7d2c2add22d34ce906a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:a57f986fd6c347dd4fb40ead2876d777f898190322a6c67cdc26b525639cc887
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196313218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10d48e24cfd04597d0c97f5bc25b26d1cb31be74358c5c088be5717ae7b2553`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:45:25 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 06:45:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:46:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 06:54:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1b3de808587272c43d446508b8fdc604e29706161dd05ab6ca6980c2d90db6`  
		Last Modified: Tue, 16 Oct 2018 07:00:51 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c99d68345fa5f6c93b64f8c306fbecf1ae8fbad6bfdacf46e7df8a33b5239de`  
		Last Modified: Tue, 16 Oct 2018 07:01:01 GMT  
		Size: 45.5 MB (45510264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327e67c306f5273bdf1cbbd63a655faa71a982cc2f27b59d98adb79408d2a124`  
		Last Modified: Tue, 16 Oct 2018 07:04:28 GMT  
		Size: 120.7 MB (120680266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:5ed2d1fb307e237273bba284f8ba352e60dc8acedfa255cdd29d6d9d793367a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169131919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc368a235144c2f17525d9e8e618e1dee873223b9e2379a3d1279b2a0a2ba850`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 09 Oct 2018 12:11:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd691ee1d63fa1e6ea62fe0d1e7b1b18d57863f7101289ff2237457675cea0b`  
		Last Modified: Tue, 09 Oct 2018 12:15:22 GMT  
		Size: 105.3 MB (105318540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:6c54980353749aff12af25f94084c3323fa3ceab2442bf599d08d24b1115c98f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205158240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07fc3449b121b2035f3d6a8562d8aab784f30f5d599731367b22e4fd212acde`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 09 Oct 2018 10:42:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96135af28ebd1cd0a4d355cd5cd9d77f0e8345f8aba77b8571c2217e20b89f1`  
		Last Modified: Tue, 09 Oct 2018 10:44:12 GMT  
		Size: 125.9 MB (125949382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:5ecc760b2f2cc2a16a8d2fdaff00d11fd39b0bd2759fa05b52ce591d3bfc7096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:cd46bc40d455856c70bff2a0b8db39132ba45b28613a60b9090e49b0627c6bed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75632952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a805e93bb9d305272d65f328f6ef63626e79acfa6f6d04c72efb0d1d9c0fcc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:45:25 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 06:45:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 06:46:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1b3de808587272c43d446508b8fdc604e29706161dd05ab6ca6980c2d90db6`  
		Last Modified: Tue, 16 Oct 2018 07:00:51 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c99d68345fa5f6c93b64f8c306fbecf1ae8fbad6bfdacf46e7df8a33b5239de`  
		Last Modified: Tue, 16 Oct 2018 07:01:01 GMT  
		Size: 45.5 MB (45510264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:11274082028152668c6c9689c89552f3a1a7029653b50e8a7a6b51e5da2671d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63813379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfac4cf94b91c11d8cdca26fa9dc603c57938da5ed836e7ce90067b829ff77e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 11:57:44 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 11:57:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 11:59:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf3f3f5a2f428b4bd575c5e953657b239addc0153cb3febb8bac7a4581d7b18`  
		Last Modified: Tue, 09 Oct 2018 12:11:47 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82cb49a5062e7e582bcebd5b800a49f3b498813f6d934993b6e9b314ce4328f`  
		Last Modified: Tue, 09 Oct 2018 12:11:58 GMT  
		Size: 37.5 MB (37524310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:855a9236e6e005371fbb48b371f33042c8164cd3e7b1b68c3d1d3ee2fc2ebe2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b57f67ec070f023ad969c003e8d58be5ecffa2a6b4124407954425d8643f4b6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Tue, 09 Oct 2018 10:38:31 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 09 Oct 2018 10:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 Oct 2018 10:39:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec3b9dc5f4cfdeaf8aea33360e27ead6d66ce6cc1f5445c68e5c5428517b383`  
		Last Modified: Tue, 09 Oct 2018 10:42:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c704ee9b44d8c830c56f4d58993c5a9c5ab861f33ddfac46fd7c0ab78c8a9`  
		Last Modified: Tue, 09 Oct 2018 10:42:36 GMT  
		Size: 48.9 MB (48936719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

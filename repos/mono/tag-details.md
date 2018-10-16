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
$ docker pull mono@sha256:bca69d574abe2cbe7d02a4abc7c9554a7e00d5dfddadf480d7c4246a4ef1eaea
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
$ docker pull mono@sha256:db227d7e43f400459bf2f5c7c01501c0adcfe5269ea72d806b955b2454ecdb4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82921563f796e51f242f6fa450965dc1a7e7da96d26369bc8b1fd816cbb7ddbc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:52:08 GMT
ADD file:802fa935f1c519c7f94aaeea65d44725095f32d1f2af893dc2039a760dd79742 in / 
# Tue, 16 Oct 2018 10:52:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:32:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 22:32:49 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 22:33:00 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:33:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:33:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:bcc2ae1457e5537ae226201c76b3020749f51c0286a8026bfc95b92fa3ee382a`  
		Last Modified: Tue, 16 Oct 2018 11:10:17 GMT  
		Size: 40.5 MB (40532875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a37f7129fbaa77f0c1403ef40e0bbb1972bbe346d3653054d0ccde93acf130`  
		Last Modified: Tue, 16 Oct 2018 22:40:35 GMT  
		Size: 6.4 MB (6406272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaf6ead3ab109c7db126fad15dabe45e7b814434ed76cb0dc71df9f3824a166`  
		Last Modified: Tue, 16 Oct 2018 22:40:35 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d2886b2a9851d5930231bbe0555053924a0cb19997f1c3a0cffa862a891b8a`  
		Last Modified: Tue, 16 Oct 2018 22:41:02 GMT  
		Size: 106.0 MB (106008889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:bca69d574abe2cbe7d02a4abc7c9554a7e00d5dfddadf480d7c4246a4ef1eaea
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
$ docker pull mono@sha256:db227d7e43f400459bf2f5c7c01501c0adcfe5269ea72d806b955b2454ecdb4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82921563f796e51f242f6fa450965dc1a7e7da96d26369bc8b1fd816cbb7ddbc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:52:08 GMT
ADD file:802fa935f1c519c7f94aaeea65d44725095f32d1f2af893dc2039a760dd79742 in / 
# Tue, 16 Oct 2018 10:52:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:32:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 22:32:49 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 22:33:00 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:33:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:33:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:bcc2ae1457e5537ae226201c76b3020749f51c0286a8026bfc95b92fa3ee382a`  
		Last Modified: Tue, 16 Oct 2018 11:10:17 GMT  
		Size: 40.5 MB (40532875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a37f7129fbaa77f0c1403ef40e0bbb1972bbe346d3653054d0ccde93acf130`  
		Last Modified: Tue, 16 Oct 2018 22:40:35 GMT  
		Size: 6.4 MB (6406272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaf6ead3ab109c7db126fad15dabe45e7b814434ed76cb0dc71df9f3824a166`  
		Last Modified: Tue, 16 Oct 2018 22:40:35 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d2886b2a9851d5930231bbe0555053924a0cb19997f1c3a0cffa862a891b8a`  
		Last Modified: Tue, 16 Oct 2018 22:41:02 GMT  
		Size: 106.0 MB (106008889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:bca69d574abe2cbe7d02a4abc7c9554a7e00d5dfddadf480d7c4246a4ef1eaea
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
$ docker pull mono@sha256:db227d7e43f400459bf2f5c7c01501c0adcfe5269ea72d806b955b2454ecdb4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82921563f796e51f242f6fa450965dc1a7e7da96d26369bc8b1fd816cbb7ddbc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:52:08 GMT
ADD file:802fa935f1c519c7f94aaeea65d44725095f32d1f2af893dc2039a760dd79742 in / 
# Tue, 16 Oct 2018 10:52:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:32:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 22:32:49 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 22:33:00 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:33:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:33:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:bcc2ae1457e5537ae226201c76b3020749f51c0286a8026bfc95b92fa3ee382a`  
		Last Modified: Tue, 16 Oct 2018 11:10:17 GMT  
		Size: 40.5 MB (40532875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a37f7129fbaa77f0c1403ef40e0bbb1972bbe346d3653054d0ccde93acf130`  
		Last Modified: Tue, 16 Oct 2018 22:40:35 GMT  
		Size: 6.4 MB (6406272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaf6ead3ab109c7db126fad15dabe45e7b814434ed76cb0dc71df9f3824a166`  
		Last Modified: Tue, 16 Oct 2018 22:40:35 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d2886b2a9851d5930231bbe0555053924a0cb19997f1c3a0cffa862a891b8a`  
		Last Modified: Tue, 16 Oct 2018 22:41:02 GMT  
		Size: 106.0 MB (106008889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:bca69d574abe2cbe7d02a4abc7c9554a7e00d5dfddadf480d7c4246a4ef1eaea
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
$ docker pull mono@sha256:db227d7e43f400459bf2f5c7c01501c0adcfe5269ea72d806b955b2454ecdb4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82921563f796e51f242f6fa450965dc1a7e7da96d26369bc8b1fd816cbb7ddbc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:52:08 GMT
ADD file:802fa935f1c519c7f94aaeea65d44725095f32d1f2af893dc2039a760dd79742 in / 
# Tue, 16 Oct 2018 10:52:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:32:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 16 Oct 2018 22:32:49 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 16 Oct 2018 22:33:00 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 22:33:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:33:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:bcc2ae1457e5537ae226201c76b3020749f51c0286a8026bfc95b92fa3ee382a`  
		Last Modified: Tue, 16 Oct 2018 11:10:17 GMT  
		Size: 40.5 MB (40532875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a37f7129fbaa77f0c1403ef40e0bbb1972bbe346d3653054d0ccde93acf130`  
		Last Modified: Tue, 16 Oct 2018 22:40:35 GMT  
		Size: 6.4 MB (6406272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaf6ead3ab109c7db126fad15dabe45e7b814434ed76cb0dc71df9f3824a166`  
		Last Modified: Tue, 16 Oct 2018 22:40:35 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d2886b2a9851d5930231bbe0555053924a0cb19997f1c3a0cffa862a891b8a`  
		Last Modified: Tue, 16 Oct 2018 22:41:02 GMT  
		Size: 106.0 MB (106008889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:b7e2b8b2d6e1f86879e979a1812f757439962e99b12bf6d3961d76d1140e5ddd
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
$ docker pull mono@sha256:6bc825a0edd7e7f214216699b8705a359f10915bb6f7d19806a01f58a753b0bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205157497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86eceb353b8c1d003a0e4a6225cd1a698b92e48dde529a1bfa74a053319aaa6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:29:57 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 22:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:31:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 22:36:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76529663b72f47b8c548bdc61c4069055fcfeb1a619b96e20b05c9e8989e7b8d`  
		Last Modified: Tue, 16 Oct 2018 22:39:02 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100234c3059eb6c194f48a84f602a3db7f772c8915f12db45cd4c88cec267528`  
		Last Modified: Tue, 16 Oct 2018 22:39:15 GMT  
		Size: 48.9 MB (48936522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57515bf0f85c7a469f0c6fd4805a78c15885e0d7e23e1abd097502fc406a4909`  
		Last Modified: Tue, 16 Oct 2018 22:42:09 GMT  
		Size: 125.9 MB (125948877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14`

```console
$ docker pull mono@sha256:575dba8a25c7de5af4d967714777e70d422fc46909d2e062bd822266432df391
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
$ docker pull mono@sha256:c4240f5c7ab9a5224d759c321f5a5be08b69a72ad28469c0a6e4bb2a665acadc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208576666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2612f6490a9ea54cd800ef6fdb0c6bc0d74831ea3b951c699aa2e46aef1808`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:31:23 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 22:31:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:32:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 22:38:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2847b402e931e250e9bdb4e9607ced17feb515932a80a2f73f729aa3ff82f`  
		Last Modified: Tue, 16 Oct 2018 22:39:55 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f33384be00ed8ae690ce5e9911e5ebf88b0aade0d36bd2b772119b36b08b911`  
		Last Modified: Tue, 16 Oct 2018 22:40:09 GMT  
		Size: 54.5 MB (54461135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adc4e1ccf0dd54b359e72bb383c8f74071a2b5c5fadab095ffe5e457425d335`  
		Last Modified: Tue, 16 Oct 2018 22:43:22 GMT  
		Size: 123.8 MB (123843433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0`

```console
$ docker pull mono@sha256:575dba8a25c7de5af4d967714777e70d422fc46909d2e062bd822266432df391
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
$ docker pull mono@sha256:c4240f5c7ab9a5224d759c321f5a5be08b69a72ad28469c0a6e4bb2a665acadc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208576666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2612f6490a9ea54cd800ef6fdb0c6bc0d74831ea3b951c699aa2e46aef1808`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:31:23 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 22:31:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:32:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 22:38:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2847b402e931e250e9bdb4e9607ced17feb515932a80a2f73f729aa3ff82f`  
		Last Modified: Tue, 16 Oct 2018 22:39:55 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f33384be00ed8ae690ce5e9911e5ebf88b0aade0d36bd2b772119b36b08b911`  
		Last Modified: Tue, 16 Oct 2018 22:40:09 GMT  
		Size: 54.5 MB (54461135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adc4e1ccf0dd54b359e72bb383c8f74071a2b5c5fadab095ffe5e457425d335`  
		Last Modified: Tue, 16 Oct 2018 22:43:22 GMT  
		Size: 123.8 MB (123843433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0.177`

```console
$ docker pull mono@sha256:575dba8a25c7de5af4d967714777e70d422fc46909d2e062bd822266432df391
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
$ docker pull mono@sha256:c4240f5c7ab9a5224d759c321f5a5be08b69a72ad28469c0a6e4bb2a665acadc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208576666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2612f6490a9ea54cd800ef6fdb0c6bc0d74831ea3b951c699aa2e46aef1808`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:31:23 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 22:31:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:32:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 22:38:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2847b402e931e250e9bdb4e9607ced17feb515932a80a2f73f729aa3ff82f`  
		Last Modified: Tue, 16 Oct 2018 22:39:55 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f33384be00ed8ae690ce5e9911e5ebf88b0aade0d36bd2b772119b36b08b911`  
		Last Modified: Tue, 16 Oct 2018 22:40:09 GMT  
		Size: 54.5 MB (54461135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adc4e1ccf0dd54b359e72bb383c8f74071a2b5c5fadab095ffe5e457425d335`  
		Last Modified: Tue, 16 Oct 2018 22:43:22 GMT  
		Size: 123.8 MB (123843433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0.177-slim`

```console
$ docker pull mono@sha256:055756a803c8bc24d635bda6de30aa8221e640911abea896ded9bf34287eeed3
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
$ docker pull mono@sha256:2c0894b9a6ba6a93b1d9b1f647d95cd7519b4e86677055c644a2263f00149932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84733233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746fb0642d4aa3c2fca6121e4d68117d9421a1893648a32817593c5ed80ea5cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:31:23 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 22:31:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:32:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2847b402e931e250e9bdb4e9607ced17feb515932a80a2f73f729aa3ff82f`  
		Last Modified: Tue, 16 Oct 2018 22:39:55 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f33384be00ed8ae690ce5e9911e5ebf88b0aade0d36bd2b772119b36b08b911`  
		Last Modified: Tue, 16 Oct 2018 22:40:09 GMT  
		Size: 54.5 MB (54461135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0-slim`

```console
$ docker pull mono@sha256:055756a803c8bc24d635bda6de30aa8221e640911abea896ded9bf34287eeed3
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
$ docker pull mono@sha256:2c0894b9a6ba6a93b1d9b1f647d95cd7519b4e86677055c644a2263f00149932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84733233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746fb0642d4aa3c2fca6121e4d68117d9421a1893648a32817593c5ed80ea5cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:31:23 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 22:31:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:32:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2847b402e931e250e9bdb4e9607ced17feb515932a80a2f73f729aa3ff82f`  
		Last Modified: Tue, 16 Oct 2018 22:39:55 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f33384be00ed8ae690ce5e9911e5ebf88b0aade0d36bd2b772119b36b08b911`  
		Last Modified: Tue, 16 Oct 2018 22:40:09 GMT  
		Size: 54.5 MB (54461135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14-slim`

```console
$ docker pull mono@sha256:055756a803c8bc24d635bda6de30aa8221e640911abea896ded9bf34287eeed3
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
$ docker pull mono@sha256:2c0894b9a6ba6a93b1d9b1f647d95cd7519b4e86677055c644a2263f00149932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84733233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746fb0642d4aa3c2fca6121e4d68117d9421a1893648a32817593c5ed80ea5cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:31:23 GMT
ENV MONO_VERSION=5.14.0.177
# Tue, 16 Oct 2018 22:31:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:32:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d2847b402e931e250e9bdb4e9607ced17feb515932a80a2f73f729aa3ff82f`  
		Last Modified: Tue, 16 Oct 2018 22:39:55 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f33384be00ed8ae690ce5e9911e5ebf88b0aade0d36bd2b772119b36b08b911`  
		Last Modified: Tue, 16 Oct 2018 22:40:09 GMT  
		Size: 54.5 MB (54461135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16`

```console
$ docker pull mono@sha256:b7e2b8b2d6e1f86879e979a1812f757439962e99b12bf6d3961d76d1140e5ddd
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
$ docker pull mono@sha256:6bc825a0edd7e7f214216699b8705a359f10915bb6f7d19806a01f58a753b0bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205157497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86eceb353b8c1d003a0e4a6225cd1a698b92e48dde529a1bfa74a053319aaa6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:29:57 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 22:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:31:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 22:36:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76529663b72f47b8c548bdc61c4069055fcfeb1a619b96e20b05c9e8989e7b8d`  
		Last Modified: Tue, 16 Oct 2018 22:39:02 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100234c3059eb6c194f48a84f602a3db7f772c8915f12db45cd4c88cec267528`  
		Last Modified: Tue, 16 Oct 2018 22:39:15 GMT  
		Size: 48.9 MB (48936522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57515bf0f85c7a469f0c6fd4805a78c15885e0d7e23e1abd097502fc406a4909`  
		Last Modified: Tue, 16 Oct 2018 22:42:09 GMT  
		Size: 125.9 MB (125948877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0`

```console
$ docker pull mono@sha256:b7e2b8b2d6e1f86879e979a1812f757439962e99b12bf6d3961d76d1140e5ddd
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
$ docker pull mono@sha256:6bc825a0edd7e7f214216699b8705a359f10915bb6f7d19806a01f58a753b0bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205157497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86eceb353b8c1d003a0e4a6225cd1a698b92e48dde529a1bfa74a053319aaa6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:29:57 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 22:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:31:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 22:36:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76529663b72f47b8c548bdc61c4069055fcfeb1a619b96e20b05c9e8989e7b8d`  
		Last Modified: Tue, 16 Oct 2018 22:39:02 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100234c3059eb6c194f48a84f602a3db7f772c8915f12db45cd4c88cec267528`  
		Last Modified: Tue, 16 Oct 2018 22:39:15 GMT  
		Size: 48.9 MB (48936522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57515bf0f85c7a469f0c6fd4805a78c15885e0d7e23e1abd097502fc406a4909`  
		Last Modified: Tue, 16 Oct 2018 22:42:09 GMT  
		Size: 125.9 MB (125948877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.179`

```console
$ docker pull mono@sha256:b7e2b8b2d6e1f86879e979a1812f757439962e99b12bf6d3961d76d1140e5ddd
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
$ docker pull mono@sha256:6bc825a0edd7e7f214216699b8705a359f10915bb6f7d19806a01f58a753b0bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205157497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86eceb353b8c1d003a0e4a6225cd1a698b92e48dde529a1bfa74a053319aaa6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:29:57 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 22:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:31:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 22:36:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76529663b72f47b8c548bdc61c4069055fcfeb1a619b96e20b05c9e8989e7b8d`  
		Last Modified: Tue, 16 Oct 2018 22:39:02 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100234c3059eb6c194f48a84f602a3db7f772c8915f12db45cd4c88cec267528`  
		Last Modified: Tue, 16 Oct 2018 22:39:15 GMT  
		Size: 48.9 MB (48936522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57515bf0f85c7a469f0c6fd4805a78c15885e0d7e23e1abd097502fc406a4909`  
		Last Modified: Tue, 16 Oct 2018 22:42:09 GMT  
		Size: 125.9 MB (125948877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.179-slim`

```console
$ docker pull mono@sha256:803e148f7205bd1cc8d9bbb195b523a09b841c25bec3e17b36dc6283e10f74d0
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
$ docker pull mono@sha256:404c58c5ae38b6d182ce1e2f414309a6e5c91656a424f192f184a635bec8ff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0dc2de161a23080e844976749a15df70ba8b7bf9c8bbb2ed9e820df645ec64`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:29:57 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 22:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:31:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76529663b72f47b8c548bdc61c4069055fcfeb1a619b96e20b05c9e8989e7b8d`  
		Last Modified: Tue, 16 Oct 2018 22:39:02 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100234c3059eb6c194f48a84f602a3db7f772c8915f12db45cd4c88cec267528`  
		Last Modified: Tue, 16 Oct 2018 22:39:15 GMT  
		Size: 48.9 MB (48936522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0-slim`

```console
$ docker pull mono@sha256:803e148f7205bd1cc8d9bbb195b523a09b841c25bec3e17b36dc6283e10f74d0
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
$ docker pull mono@sha256:404c58c5ae38b6d182ce1e2f414309a6e5c91656a424f192f184a635bec8ff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0dc2de161a23080e844976749a15df70ba8b7bf9c8bbb2ed9e820df645ec64`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:29:57 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 22:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:31:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76529663b72f47b8c548bdc61c4069055fcfeb1a619b96e20b05c9e8989e7b8d`  
		Last Modified: Tue, 16 Oct 2018 22:39:02 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100234c3059eb6c194f48a84f602a3db7f772c8915f12db45cd4c88cec267528`  
		Last Modified: Tue, 16 Oct 2018 22:39:15 GMT  
		Size: 48.9 MB (48936522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16-slim`

```console
$ docker pull mono@sha256:803e148f7205bd1cc8d9bbb195b523a09b841c25bec3e17b36dc6283e10f74d0
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
$ docker pull mono@sha256:404c58c5ae38b6d182ce1e2f414309a6e5c91656a424f192f184a635bec8ff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0dc2de161a23080e844976749a15df70ba8b7bf9c8bbb2ed9e820df645ec64`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:29:57 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 22:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:31:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76529663b72f47b8c548bdc61c4069055fcfeb1a619b96e20b05c9e8989e7b8d`  
		Last Modified: Tue, 16 Oct 2018 22:39:02 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100234c3059eb6c194f48a84f602a3db7f772c8915f12db45cd4c88cec267528`  
		Last Modified: Tue, 16 Oct 2018 22:39:15 GMT  
		Size: 48.9 MB (48936522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:803e148f7205bd1cc8d9bbb195b523a09b841c25bec3e17b36dc6283e10f74d0
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
$ docker pull mono@sha256:404c58c5ae38b6d182ce1e2f414309a6e5c91656a424f192f184a635bec8ff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0dc2de161a23080e844976749a15df70ba8b7bf9c8bbb2ed9e820df645ec64`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:29:57 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 22:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:31:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76529663b72f47b8c548bdc61c4069055fcfeb1a619b96e20b05c9e8989e7b8d`  
		Last Modified: Tue, 16 Oct 2018 22:39:02 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100234c3059eb6c194f48a84f602a3db7f772c8915f12db45cd4c88cec267528`  
		Last Modified: Tue, 16 Oct 2018 22:39:15 GMT  
		Size: 48.9 MB (48936522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:b7e2b8b2d6e1f86879e979a1812f757439962e99b12bf6d3961d76d1140e5ddd
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
$ docker pull mono@sha256:6bc825a0edd7e7f214216699b8705a359f10915bb6f7d19806a01f58a753b0bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205157497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86eceb353b8c1d003a0e4a6225cd1a698b92e48dde529a1bfa74a053319aaa6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:29:57 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 22:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:31:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 16 Oct 2018 22:36:31 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76529663b72f47b8c548bdc61c4069055fcfeb1a619b96e20b05c9e8989e7b8d`  
		Last Modified: Tue, 16 Oct 2018 22:39:02 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100234c3059eb6c194f48a84f602a3db7f772c8915f12db45cd4c88cec267528`  
		Last Modified: Tue, 16 Oct 2018 22:39:15 GMT  
		Size: 48.9 MB (48936522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57515bf0f85c7a469f0c6fd4805a78c15885e0d7e23e1abd097502fc406a4909`  
		Last Modified: Tue, 16 Oct 2018 22:42:09 GMT  
		Size: 125.9 MB (125948877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:803e148f7205bd1cc8d9bbb195b523a09b841c25bec3e17b36dc6283e10f74d0
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
$ docker pull mono@sha256:404c58c5ae38b6d182ce1e2f414309a6e5c91656a424f192f184a635bec8ff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79208620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0dc2de161a23080e844976749a15df70ba8b7bf9c8bbb2ed9e820df645ec64`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 22:29:57 GMT
ENV MONO_VERSION=5.16.0.179
# Tue, 16 Oct 2018 22:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 16 Oct 2018 22:31:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76529663b72f47b8c548bdc61c4069055fcfeb1a619b96e20b05c9e8989e7b8d`  
		Last Modified: Tue, 16 Oct 2018 22:39:02 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100234c3059eb6c194f48a84f602a3db7f772c8915f12db45cd4c88cec267528`  
		Last Modified: Tue, 16 Oct 2018 22:39:15 GMT  
		Size: 48.9 MB (48936522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

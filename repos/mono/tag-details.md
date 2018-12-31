<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:4`](#mono4)
-	[`mono:4.8`](#mono48)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:5`](#mono5)
-	[`mono:5.16`](#mono516)
-	[`mono:5.16.0`](#mono5160)
-	[`mono:5.16.0.220`](#mono5160220)
-	[`mono:5.16.0.220-slim`](#mono5160220-slim)
-	[`mono:5.16.0-slim`](#mono5160-slim)
-	[`mono:5.16-slim`](#mono516-slim)
-	[`mono:5.18`](#mono518)
-	[`mono:5.18.0`](#mono5180)
-	[`mono:5.18.0.225`](#mono5180225)
-	[`mono:5.18.0.225-slim`](#mono5180225-slim)
-	[`mono:5.18.0-slim`](#mono5180-slim)
-	[`mono:5.18-slim`](#mono518-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:c14de21ec7701ec3ac9485a04ce9e16dbb5d9d42d11ffd4bae382f696ed5ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:835ae7e6c4e2afcef2298606c12f671458491d379ea78e6b1c4c869d9ae72283
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152968851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db937602c4e4ca4b2af8daf025d2c99a1a0048a16c8fba6e19ca0c6dd0d1c510`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:32:10 GMT
ADD file:7d97c6060d2f2ed127bfa6caf63275d4d8d4a3828f243204370a117e3bde0923 in / 
# Fri, 28 Dec 2018 23:32:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:56:19 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 29 Dec 2018 08:56:19 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 29 Dec 2018 08:56:28 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:56:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:57:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0ac552c681ffeeb04e8a77bde853c03dd88f87b3936e140ebff2919aef76fe84`  
		Last Modified: Fri, 28 Dec 2018 23:36:56 GMT  
		Size: 39.3 MB (39339686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae2deafc4b8eaca406a48d4879903427a5c41f36f3a2598d0bd84e0d2990b9`  
		Last Modified: Sat, 29 Dec 2018 09:13:38 GMT  
		Size: 6.4 MB (6418972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa87a287d0df9bdc82ab587d77d5b311f49242476cbe3f5e847ee01081dcdeae`  
		Last Modified: Sat, 29 Dec 2018 09:13:37 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11184add45ceeaa816c548673364c76cfab6b9fe336aa66890373cec19cc62a9`  
		Last Modified: Sat, 29 Dec 2018 09:14:00 GMT  
		Size: 107.2 MB (107180287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v7

```console
$ docker pull mono@sha256:1e85113b52f48f7521bbf5e19050ef9af1a1a26cba12c39b2e1a45c299a08df8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7560401075fdf33115182c6e7e4c165b2a7cc3b512513c28496c3d2857c6eba3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:07:30 GMT
ADD file:afb8fc53fa712796da9dd3634f9727b3a61011287571a7f5b7a83dad001fb48a in / 
# Sat, 29 Dec 2018 13:07:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:51:58 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 29 Dec 2018 14:51:58 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 29 Dec 2018 14:52:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:52:18 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:53:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:365b02c18acb1b27f85922210e9971228cdd4e6b5e8953c9f0759dde2f1c3f41`  
		Last Modified: Sat, 29 Dec 2018 13:13:48 GMT  
		Size: 36.6 MB (36619981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f374ef11683abc5fd05293dca2d4435a47e8519844c52175caf6f615cf7f0ae`  
		Last Modified: Sat, 29 Dec 2018 15:11:51 GMT  
		Size: 6.1 MB (6116749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f0a7c1f010e2aa21fa25d9202a0870faac45a0d87e5bd1c0e13b31121e6fd0`  
		Last Modified: Sat, 29 Dec 2018 15:11:50 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f767bb26f5dcac55f53c10d5a890d6af175affbaa8f4b4f3afb56326408a018e`  
		Last Modified: Sat, 29 Dec 2018 15:12:29 GMT  
		Size: 96.1 MB (96121571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; 386

```console
$ docker pull mono@sha256:ab399ff7af752a0469d370884eb11aed293fe6169071d3c1c5df311f94a9e2df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95ca3ea698250fd1cbc481799491b3082bcc1f42fe4d4bcb7a3d776a2aaffd3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:01:56 GMT
ADD file:1acbd220f969e13c69f3f789ba79f4436365edeb5d2acae232d1a4c53c3d54b6 in / 
# Sat, 29 Dec 2018 12:01:57 GMT
CMD ["bash"]
# Sun, 30 Dec 2018 04:11:58 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sun, 30 Dec 2018 04:11:58 GMT
ENV MONO_VERSION=4.8.0.524
# Sun, 30 Dec 2018 04:12:08 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:12:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sun, 30 Dec 2018 04:13:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5c1f1b705acc909fc97b326ea9a451bc340d9986219dcb9aabf2c3a691450a29`  
		Last Modified: Sat, 29 Dec 2018 12:12:20 GMT  
		Size: 40.5 MB (40532841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b8345bd08fe3b55345e8815b18f1014fdcd82b3f1d0c1728249d297055019`  
		Last Modified: Sun, 30 Dec 2018 04:24:02 GMT  
		Size: 6.4 MB (6406168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d55f7eec03f52a4465cae37210f4bbf56865e2e86a8a733860c648e0928603d`  
		Last Modified: Sun, 30 Dec 2018 04:24:00 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a4b073dd19d39a88ed0b19cc9875d8f4e34c1d61115430e173f3028694f1f7`  
		Last Modified: Sun, 30 Dec 2018 04:24:28 GMT  
		Size: 106.0 MB (105992383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:c14de21ec7701ec3ac9485a04ce9e16dbb5d9d42d11ffd4bae382f696ed5ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:835ae7e6c4e2afcef2298606c12f671458491d379ea78e6b1c4c869d9ae72283
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152968851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db937602c4e4ca4b2af8daf025d2c99a1a0048a16c8fba6e19ca0c6dd0d1c510`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:32:10 GMT
ADD file:7d97c6060d2f2ed127bfa6caf63275d4d8d4a3828f243204370a117e3bde0923 in / 
# Fri, 28 Dec 2018 23:32:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:56:19 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 29 Dec 2018 08:56:19 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 29 Dec 2018 08:56:28 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:56:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:57:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0ac552c681ffeeb04e8a77bde853c03dd88f87b3936e140ebff2919aef76fe84`  
		Last Modified: Fri, 28 Dec 2018 23:36:56 GMT  
		Size: 39.3 MB (39339686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae2deafc4b8eaca406a48d4879903427a5c41f36f3a2598d0bd84e0d2990b9`  
		Last Modified: Sat, 29 Dec 2018 09:13:38 GMT  
		Size: 6.4 MB (6418972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa87a287d0df9bdc82ab587d77d5b311f49242476cbe3f5e847ee01081dcdeae`  
		Last Modified: Sat, 29 Dec 2018 09:13:37 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11184add45ceeaa816c548673364c76cfab6b9fe336aa66890373cec19cc62a9`  
		Last Modified: Sat, 29 Dec 2018 09:14:00 GMT  
		Size: 107.2 MB (107180287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v7

```console
$ docker pull mono@sha256:1e85113b52f48f7521bbf5e19050ef9af1a1a26cba12c39b2e1a45c299a08df8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7560401075fdf33115182c6e7e4c165b2a7cc3b512513c28496c3d2857c6eba3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:07:30 GMT
ADD file:afb8fc53fa712796da9dd3634f9727b3a61011287571a7f5b7a83dad001fb48a in / 
# Sat, 29 Dec 2018 13:07:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:51:58 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 29 Dec 2018 14:51:58 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 29 Dec 2018 14:52:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:52:18 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:53:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:365b02c18acb1b27f85922210e9971228cdd4e6b5e8953c9f0759dde2f1c3f41`  
		Last Modified: Sat, 29 Dec 2018 13:13:48 GMT  
		Size: 36.6 MB (36619981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f374ef11683abc5fd05293dca2d4435a47e8519844c52175caf6f615cf7f0ae`  
		Last Modified: Sat, 29 Dec 2018 15:11:51 GMT  
		Size: 6.1 MB (6116749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f0a7c1f010e2aa21fa25d9202a0870faac45a0d87e5bd1c0e13b31121e6fd0`  
		Last Modified: Sat, 29 Dec 2018 15:11:50 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f767bb26f5dcac55f53c10d5a890d6af175affbaa8f4b4f3afb56326408a018e`  
		Last Modified: Sat, 29 Dec 2018 15:12:29 GMT  
		Size: 96.1 MB (96121571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; 386

```console
$ docker pull mono@sha256:ab399ff7af752a0469d370884eb11aed293fe6169071d3c1c5df311f94a9e2df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95ca3ea698250fd1cbc481799491b3082bcc1f42fe4d4bcb7a3d776a2aaffd3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:01:56 GMT
ADD file:1acbd220f969e13c69f3f789ba79f4436365edeb5d2acae232d1a4c53c3d54b6 in / 
# Sat, 29 Dec 2018 12:01:57 GMT
CMD ["bash"]
# Sun, 30 Dec 2018 04:11:58 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sun, 30 Dec 2018 04:11:58 GMT
ENV MONO_VERSION=4.8.0.524
# Sun, 30 Dec 2018 04:12:08 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:12:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sun, 30 Dec 2018 04:13:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5c1f1b705acc909fc97b326ea9a451bc340d9986219dcb9aabf2c3a691450a29`  
		Last Modified: Sat, 29 Dec 2018 12:12:20 GMT  
		Size: 40.5 MB (40532841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b8345bd08fe3b55345e8815b18f1014fdcd82b3f1d0c1728249d297055019`  
		Last Modified: Sun, 30 Dec 2018 04:24:02 GMT  
		Size: 6.4 MB (6406168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d55f7eec03f52a4465cae37210f4bbf56865e2e86a8a733860c648e0928603d`  
		Last Modified: Sun, 30 Dec 2018 04:24:00 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a4b073dd19d39a88ed0b19cc9875d8f4e34c1d61115430e173f3028694f1f7`  
		Last Modified: Sun, 30 Dec 2018 04:24:28 GMT  
		Size: 106.0 MB (105992383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:c14de21ec7701ec3ac9485a04ce9e16dbb5d9d42d11ffd4bae382f696ed5ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:835ae7e6c4e2afcef2298606c12f671458491d379ea78e6b1c4c869d9ae72283
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152968851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db937602c4e4ca4b2af8daf025d2c99a1a0048a16c8fba6e19ca0c6dd0d1c510`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:32:10 GMT
ADD file:7d97c6060d2f2ed127bfa6caf63275d4d8d4a3828f243204370a117e3bde0923 in / 
# Fri, 28 Dec 2018 23:32:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:56:19 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 29 Dec 2018 08:56:19 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 29 Dec 2018 08:56:28 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:56:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:57:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0ac552c681ffeeb04e8a77bde853c03dd88f87b3936e140ebff2919aef76fe84`  
		Last Modified: Fri, 28 Dec 2018 23:36:56 GMT  
		Size: 39.3 MB (39339686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae2deafc4b8eaca406a48d4879903427a5c41f36f3a2598d0bd84e0d2990b9`  
		Last Modified: Sat, 29 Dec 2018 09:13:38 GMT  
		Size: 6.4 MB (6418972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa87a287d0df9bdc82ab587d77d5b311f49242476cbe3f5e847ee01081dcdeae`  
		Last Modified: Sat, 29 Dec 2018 09:13:37 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11184add45ceeaa816c548673364c76cfab6b9fe336aa66890373cec19cc62a9`  
		Last Modified: Sat, 29 Dec 2018 09:14:00 GMT  
		Size: 107.2 MB (107180287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:1e85113b52f48f7521bbf5e19050ef9af1a1a26cba12c39b2e1a45c299a08df8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7560401075fdf33115182c6e7e4c165b2a7cc3b512513c28496c3d2857c6eba3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:07:30 GMT
ADD file:afb8fc53fa712796da9dd3634f9727b3a61011287571a7f5b7a83dad001fb48a in / 
# Sat, 29 Dec 2018 13:07:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:51:58 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 29 Dec 2018 14:51:58 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 29 Dec 2018 14:52:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:52:18 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:53:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:365b02c18acb1b27f85922210e9971228cdd4e6b5e8953c9f0759dde2f1c3f41`  
		Last Modified: Sat, 29 Dec 2018 13:13:48 GMT  
		Size: 36.6 MB (36619981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f374ef11683abc5fd05293dca2d4435a47e8519844c52175caf6f615cf7f0ae`  
		Last Modified: Sat, 29 Dec 2018 15:11:51 GMT  
		Size: 6.1 MB (6116749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f0a7c1f010e2aa21fa25d9202a0870faac45a0d87e5bd1c0e13b31121e6fd0`  
		Last Modified: Sat, 29 Dec 2018 15:11:50 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f767bb26f5dcac55f53c10d5a890d6af175affbaa8f4b4f3afb56326408a018e`  
		Last Modified: Sat, 29 Dec 2018 15:12:29 GMT  
		Size: 96.1 MB (96121571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; 386

```console
$ docker pull mono@sha256:ab399ff7af752a0469d370884eb11aed293fe6169071d3c1c5df311f94a9e2df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95ca3ea698250fd1cbc481799491b3082bcc1f42fe4d4bcb7a3d776a2aaffd3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:01:56 GMT
ADD file:1acbd220f969e13c69f3f789ba79f4436365edeb5d2acae232d1a4c53c3d54b6 in / 
# Sat, 29 Dec 2018 12:01:57 GMT
CMD ["bash"]
# Sun, 30 Dec 2018 04:11:58 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sun, 30 Dec 2018 04:11:58 GMT
ENV MONO_VERSION=4.8.0.524
# Sun, 30 Dec 2018 04:12:08 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:12:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sun, 30 Dec 2018 04:13:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5c1f1b705acc909fc97b326ea9a451bc340d9986219dcb9aabf2c3a691450a29`  
		Last Modified: Sat, 29 Dec 2018 12:12:20 GMT  
		Size: 40.5 MB (40532841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b8345bd08fe3b55345e8815b18f1014fdcd82b3f1d0c1728249d297055019`  
		Last Modified: Sun, 30 Dec 2018 04:24:02 GMT  
		Size: 6.4 MB (6406168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d55f7eec03f52a4465cae37210f4bbf56865e2e86a8a733860c648e0928603d`  
		Last Modified: Sun, 30 Dec 2018 04:24:00 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a4b073dd19d39a88ed0b19cc9875d8f4e34c1d61115430e173f3028694f1f7`  
		Last Modified: Sun, 30 Dec 2018 04:24:28 GMT  
		Size: 106.0 MB (105992383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:c14de21ec7701ec3ac9485a04ce9e16dbb5d9d42d11ffd4bae382f696ed5ef0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:835ae7e6c4e2afcef2298606c12f671458491d379ea78e6b1c4c869d9ae72283
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152968851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db937602c4e4ca4b2af8daf025d2c99a1a0048a16c8fba6e19ca0c6dd0d1c510`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:32:10 GMT
ADD file:7d97c6060d2f2ed127bfa6caf63275d4d8d4a3828f243204370a117e3bde0923 in / 
# Fri, 28 Dec 2018 23:32:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:56:19 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 29 Dec 2018 08:56:19 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 29 Dec 2018 08:56:28 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:56:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:57:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0ac552c681ffeeb04e8a77bde853c03dd88f87b3936e140ebff2919aef76fe84`  
		Last Modified: Fri, 28 Dec 2018 23:36:56 GMT  
		Size: 39.3 MB (39339686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ae2deafc4b8eaca406a48d4879903427a5c41f36f3a2598d0bd84e0d2990b9`  
		Last Modified: Sat, 29 Dec 2018 09:13:38 GMT  
		Size: 6.4 MB (6418972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa87a287d0df9bdc82ab587d77d5b311f49242476cbe3f5e847ee01081dcdeae`  
		Last Modified: Sat, 29 Dec 2018 09:13:37 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11184add45ceeaa816c548673364c76cfab6b9fe336aa66890373cec19cc62a9`  
		Last Modified: Sat, 29 Dec 2018 09:14:00 GMT  
		Size: 107.2 MB (107180287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v7

```console
$ docker pull mono@sha256:1e85113b52f48f7521bbf5e19050ef9af1a1a26cba12c39b2e1a45c299a08df8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7560401075fdf33115182c6e7e4c165b2a7cc3b512513c28496c3d2857c6eba3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:07:30 GMT
ADD file:afb8fc53fa712796da9dd3634f9727b3a61011287571a7f5b7a83dad001fb48a in / 
# Sat, 29 Dec 2018 13:07:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:51:58 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 29 Dec 2018 14:51:58 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 29 Dec 2018 14:52:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:52:18 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:53:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:365b02c18acb1b27f85922210e9971228cdd4e6b5e8953c9f0759dde2f1c3f41`  
		Last Modified: Sat, 29 Dec 2018 13:13:48 GMT  
		Size: 36.6 MB (36619981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f374ef11683abc5fd05293dca2d4435a47e8519844c52175caf6f615cf7f0ae`  
		Last Modified: Sat, 29 Dec 2018 15:11:51 GMT  
		Size: 6.1 MB (6116749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f0a7c1f010e2aa21fa25d9202a0870faac45a0d87e5bd1c0e13b31121e6fd0`  
		Last Modified: Sat, 29 Dec 2018 15:11:50 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f767bb26f5dcac55f53c10d5a890d6af175affbaa8f4b4f3afb56326408a018e`  
		Last Modified: Sat, 29 Dec 2018 15:12:29 GMT  
		Size: 96.1 MB (96121571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; 386

```console
$ docker pull mono@sha256:ab399ff7af752a0469d370884eb11aed293fe6169071d3c1c5df311f94a9e2df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95ca3ea698250fd1cbc481799491b3082bcc1f42fe4d4bcb7a3d776a2aaffd3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:01:56 GMT
ADD file:1acbd220f969e13c69f3f789ba79f4436365edeb5d2acae232d1a4c53c3d54b6 in / 
# Sat, 29 Dec 2018 12:01:57 GMT
CMD ["bash"]
# Sun, 30 Dec 2018 04:11:58 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sun, 30 Dec 2018 04:11:58 GMT
ENV MONO_VERSION=4.8.0.524
# Sun, 30 Dec 2018 04:12:08 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 04:12:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sun, 30 Dec 2018 04:13:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5c1f1b705acc909fc97b326ea9a451bc340d9986219dcb9aabf2c3a691450a29`  
		Last Modified: Sat, 29 Dec 2018 12:12:20 GMT  
		Size: 40.5 MB (40532841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b8345bd08fe3b55345e8815b18f1014fdcd82b3f1d0c1728249d297055019`  
		Last Modified: Sun, 30 Dec 2018 04:24:02 GMT  
		Size: 6.4 MB (6406168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d55f7eec03f52a4465cae37210f4bbf56865e2e86a8a733860c648e0928603d`  
		Last Modified: Sun, 30 Dec 2018 04:24:00 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a4b073dd19d39a88ed0b19cc9875d8f4e34c1d61115430e173f3028694f1f7`  
		Last Modified: Sun, 30 Dec 2018 04:24:28 GMT  
		Size: 106.0 MB (105992383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:106000063dc01519dc90f5cdf3d1ef7093582dc6b204467dddf4b09ec7185e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:19fbb5f251793c735161f1a9276e565fb1f8bb166f477f96d42757eb581af76b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223989373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86c59def407a97fb1fe6a12b372873ab4bc3781cb0942a8e0d094a5a7b901a5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 31 Dec 2018 21:29:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6e34b2a5917a8b7cbb9ee98f94247e43b9cfdcb9f04b23c456279b7c1f5f7e`  
		Last Modified: Mon, 31 Dec 2018 21:36:12 GMT  
		Size: 140.1 MB (140102533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16`

```console
$ docker pull mono@sha256:4e98a358c2e183eabde83ea9a4231c027f4ea0c70558ce3f9ac9b3d536d852d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.16` - linux; amd64

```console
$ docker pull mono@sha256:1ed53a8879d96d8c4e22d05694505d838587a834cea7fa6e86c30850667a96de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205195027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd9c75bf22e8d112573259ec98180c39e31b2295ca62c69562017cb7dea47f3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:20:31 GMT
ENV MONO_VERSION=5.16.0.220
# Mon, 31 Dec 2018 21:20:39 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 31 Dec 2018 21:34:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11321e5dbfc0d88e1d5e9fa761b53c47149df195eedb8bb266e268136f86284`  
		Last Modified: Mon, 31 Dec 2018 21:35:29 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc9354a8c6ef4e9bb025b62ec8a14a989ea9e020aa9f3df2c4daa810ad4e358`  
		Last Modified: Mon, 31 Dec 2018 21:35:37 GMT  
		Size: 45.7 MB (45720811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b4eefef3166fb4e76eb3ba78ea20ddfa3b91b2ed1089ae329697803a9dc293`  
		Last Modified: Mon, 31 Dec 2018 21:36:42 GMT  
		Size: 136.7 MB (136736861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0`

```console
$ docker pull mono@sha256:4e98a358c2e183eabde83ea9a4231c027f4ea0c70558ce3f9ac9b3d536d852d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.16.0` - linux; amd64

```console
$ docker pull mono@sha256:1ed53a8879d96d8c4e22d05694505d838587a834cea7fa6e86c30850667a96de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205195027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd9c75bf22e8d112573259ec98180c39e31b2295ca62c69562017cb7dea47f3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:20:31 GMT
ENV MONO_VERSION=5.16.0.220
# Mon, 31 Dec 2018 21:20:39 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 31 Dec 2018 21:34:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11321e5dbfc0d88e1d5e9fa761b53c47149df195eedb8bb266e268136f86284`  
		Last Modified: Mon, 31 Dec 2018 21:35:29 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc9354a8c6ef4e9bb025b62ec8a14a989ea9e020aa9f3df2c4daa810ad4e358`  
		Last Modified: Mon, 31 Dec 2018 21:35:37 GMT  
		Size: 45.7 MB (45720811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b4eefef3166fb4e76eb3ba78ea20ddfa3b91b2ed1089ae329697803a9dc293`  
		Last Modified: Mon, 31 Dec 2018 21:36:42 GMT  
		Size: 136.7 MB (136736861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.220`

```console
$ docker pull mono@sha256:4e98a358c2e183eabde83ea9a4231c027f4ea0c70558ce3f9ac9b3d536d852d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.16.0.220` - linux; amd64

```console
$ docker pull mono@sha256:1ed53a8879d96d8c4e22d05694505d838587a834cea7fa6e86c30850667a96de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205195027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd9c75bf22e8d112573259ec98180c39e31b2295ca62c69562017cb7dea47f3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:20:31 GMT
ENV MONO_VERSION=5.16.0.220
# Mon, 31 Dec 2018 21:20:39 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 31 Dec 2018 21:34:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11321e5dbfc0d88e1d5e9fa761b53c47149df195eedb8bb266e268136f86284`  
		Last Modified: Mon, 31 Dec 2018 21:35:29 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc9354a8c6ef4e9bb025b62ec8a14a989ea9e020aa9f3df2c4daa810ad4e358`  
		Last Modified: Mon, 31 Dec 2018 21:35:37 GMT  
		Size: 45.7 MB (45720811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b4eefef3166fb4e76eb3ba78ea20ddfa3b91b2ed1089ae329697803a9dc293`  
		Last Modified: Mon, 31 Dec 2018 21:36:42 GMT  
		Size: 136.7 MB (136736861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.220-slim`

```console
$ docker pull mono@sha256:7c0f93c0a4e4f81d1c3cc67b32da82bf822920c7ea8ea393aebea5584784f73c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.16.0.220-slim` - linux; amd64

```console
$ docker pull mono@sha256:ff2170c337747fd6f10fd454a04bbb699117f1191367e70074f764ec5e468f36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68458166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3ffad3df647038da3a5b1c0ecf971c8128f83094be6f5b17cdbb431b70c9aa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:20:31 GMT
ENV MONO_VERSION=5.16.0.220
# Mon, 31 Dec 2018 21:20:39 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11321e5dbfc0d88e1d5e9fa761b53c47149df195eedb8bb266e268136f86284`  
		Last Modified: Mon, 31 Dec 2018 21:35:29 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc9354a8c6ef4e9bb025b62ec8a14a989ea9e020aa9f3df2c4daa810ad4e358`  
		Last Modified: Mon, 31 Dec 2018 21:35:37 GMT  
		Size: 45.7 MB (45720811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0-slim`

```console
$ docker pull mono@sha256:7c0f93c0a4e4f81d1c3cc67b32da82bf822920c7ea8ea393aebea5584784f73c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.16.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:ff2170c337747fd6f10fd454a04bbb699117f1191367e70074f764ec5e468f36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68458166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3ffad3df647038da3a5b1c0ecf971c8128f83094be6f5b17cdbb431b70c9aa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:20:31 GMT
ENV MONO_VERSION=5.16.0.220
# Mon, 31 Dec 2018 21:20:39 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11321e5dbfc0d88e1d5e9fa761b53c47149df195eedb8bb266e268136f86284`  
		Last Modified: Mon, 31 Dec 2018 21:35:29 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc9354a8c6ef4e9bb025b62ec8a14a989ea9e020aa9f3df2c4daa810ad4e358`  
		Last Modified: Mon, 31 Dec 2018 21:35:37 GMT  
		Size: 45.7 MB (45720811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16-slim`

```console
$ docker pull mono@sha256:7c0f93c0a4e4f81d1c3cc67b32da82bf822920c7ea8ea393aebea5584784f73c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.16-slim` - linux; amd64

```console
$ docker pull mono@sha256:ff2170c337747fd6f10fd454a04bbb699117f1191367e70074f764ec5e468f36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68458166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3ffad3df647038da3a5b1c0ecf971c8128f83094be6f5b17cdbb431b70c9aa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:20:31 GMT
ENV MONO_VERSION=5.16.0.220
# Mon, 31 Dec 2018 21:20:39 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:21:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11321e5dbfc0d88e1d5e9fa761b53c47149df195eedb8bb266e268136f86284`  
		Last Modified: Mon, 31 Dec 2018 21:35:29 GMT  
		Size: 244.4 KB (244439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc9354a8c6ef4e9bb025b62ec8a14a989ea9e020aa9f3df2c4daa810ad4e358`  
		Last Modified: Mon, 31 Dec 2018 21:35:37 GMT  
		Size: 45.7 MB (45720811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18`

```console
$ docker pull mono@sha256:106000063dc01519dc90f5cdf3d1ef7093582dc6b204467dddf4b09ec7185e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18` - linux; amd64

```console
$ docker pull mono@sha256:19fbb5f251793c735161f1a9276e565fb1f8bb166f477f96d42757eb581af76b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223989373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86c59def407a97fb1fe6a12b372873ab4bc3781cb0942a8e0d094a5a7b901a5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 31 Dec 2018 21:29:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6e34b2a5917a8b7cbb9ee98f94247e43b9cfdcb9f04b23c456279b7c1f5f7e`  
		Last Modified: Mon, 31 Dec 2018 21:36:12 GMT  
		Size: 140.1 MB (140102533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0`

```console
$ docker pull mono@sha256:106000063dc01519dc90f5cdf3d1ef7093582dc6b204467dddf4b09ec7185e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18.0` - linux; amd64

```console
$ docker pull mono@sha256:19fbb5f251793c735161f1a9276e565fb1f8bb166f477f96d42757eb581af76b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223989373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86c59def407a97fb1fe6a12b372873ab4bc3781cb0942a8e0d094a5a7b901a5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 31 Dec 2018 21:29:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6e34b2a5917a8b7cbb9ee98f94247e43b9cfdcb9f04b23c456279b7c1f5f7e`  
		Last Modified: Mon, 31 Dec 2018 21:36:12 GMT  
		Size: 140.1 MB (140102533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0.225`

```console
$ docker pull mono@sha256:106000063dc01519dc90f5cdf3d1ef7093582dc6b204467dddf4b09ec7185e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18.0.225` - linux; amd64

```console
$ docker pull mono@sha256:19fbb5f251793c735161f1a9276e565fb1f8bb166f477f96d42757eb581af76b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223989373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86c59def407a97fb1fe6a12b372873ab4bc3781cb0942a8e0d094a5a7b901a5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 31 Dec 2018 21:29:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6e34b2a5917a8b7cbb9ee98f94247e43b9cfdcb9f04b23c456279b7c1f5f7e`  
		Last Modified: Mon, 31 Dec 2018 21:36:12 GMT  
		Size: 140.1 MB (140102533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0.225-slim`

```console
$ docker pull mono@sha256:c76574d5ac01829faa21b88e840a90a6c44bb9a527a8b66a7cb83a11a12a7f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18.0.225-slim` - linux; amd64

```console
$ docker pull mono@sha256:38cc687bbbe6f48b245d2a7c790ce6ae422d2b24529b6c9c54ddf7e24d771740
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83886840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef28f72e30957a59541893d3779169afddb1a0862b20e1d2f2a4a15bcd5f519`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0-slim`

```console
$ docker pull mono@sha256:c76574d5ac01829faa21b88e840a90a6c44bb9a527a8b66a7cb83a11a12a7f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:38cc687bbbe6f48b245d2a7c790ce6ae422d2b24529b6c9c54ddf7e24d771740
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83886840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef28f72e30957a59541893d3779169afddb1a0862b20e1d2f2a4a15bcd5f519`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18-slim`

```console
$ docker pull mono@sha256:c76574d5ac01829faa21b88e840a90a6c44bb9a527a8b66a7cb83a11a12a7f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18-slim` - linux; amd64

```console
$ docker pull mono@sha256:38cc687bbbe6f48b245d2a7c790ce6ae422d2b24529b6c9c54ddf7e24d771740
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83886840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef28f72e30957a59541893d3779169afddb1a0862b20e1d2f2a4a15bcd5f519`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:c76574d5ac01829faa21b88e840a90a6c44bb9a527a8b66a7cb83a11a12a7f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:38cc687bbbe6f48b245d2a7c790ce6ae422d2b24529b6c9c54ddf7e24d771740
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83886840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef28f72e30957a59541893d3779169afddb1a0862b20e1d2f2a4a15bcd5f519`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:106000063dc01519dc90f5cdf3d1ef7093582dc6b204467dddf4b09ec7185e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:19fbb5f251793c735161f1a9276e565fb1f8bb166f477f96d42757eb581af76b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223989373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86c59def407a97fb1fe6a12b372873ab4bc3781cb0942a8e0d094a5a7b901a5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 31 Dec 2018 21:29:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6e34b2a5917a8b7cbb9ee98f94247e43b9cfdcb9f04b23c456279b7c1f5f7e`  
		Last Modified: Mon, 31 Dec 2018 21:36:12 GMT  
		Size: 140.1 MB (140102533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:c76574d5ac01829faa21b88e840a90a6c44bb9a527a8b66a7cb83a11a12a7f55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:38cc687bbbe6f48b245d2a7c790ce6ae422d2b24529b6c9c54ddf7e24d771740
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83886840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef28f72e30957a59541893d3779169afddb1a0862b20e1d2f2a4a15bcd5f519`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Mon, 31 Dec 2018 21:19:47 GMT
ENV MONO_VERSION=5.18.0.225
# Mon, 31 Dec 2018 21:19:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Mon, 31 Dec 2018 21:20:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cd7abdf58a11c2b85b4c6c610dfb7d5c825b1829162b0f99938aecc736ab46`  
		Last Modified: Mon, 31 Dec 2018 21:35:09 GMT  
		Size: 244.4 KB (244440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4720eb7d76dc07f11ffed25c898580f9a8c17b2d224c59a7c893d6c6052677`  
		Last Modified: Mon, 31 Dec 2018 21:35:21 GMT  
		Size: 61.1 MB (61149484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

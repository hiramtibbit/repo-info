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
$ docker pull mono@sha256:8fbc83a416cb4f9b684e6374269b05285da3e02091850b57601a57a314d85172
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
$ docker pull mono@sha256:e1bad5ba20ce774bf6c03da76f2dd852cd4518a62df446ad9c330d4904a7a0a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd059f132dcb95b58861612501ada74b15518b2ab4537300cee4a1a8f449e0f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:41:12 GMT
ADD file:3c653db51faa2568117b6077dcf18945db344868dc13507aa8a680d1e9c7fb07 in / 
# Fri, 16 Nov 2018 12:41:12 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:46:27 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 17 Nov 2018 12:46:27 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 17 Nov 2018 12:46:44 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:48:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f0d5412c133d7c088c460e2ef3bf665756e2dbbc6a398ce0ce3bcc2e94e757ab`  
		Last Modified: Thu, 15 Nov 2018 02:07:34 GMT  
		Size: 40.5 MB (40532790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e70e7f6cfb33a5a8ebd3fb20643c16720c3549d43eb1c1771f805f5a51baa70`  
		Last Modified: Sat, 17 Nov 2018 13:00:56 GMT  
		Size: 6.4 MB (6406281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ebcef50237297be1a9ace0eb65a9360253fa7b6a7671fccf2ae5da69db9f73`  
		Last Modified: Sat, 17 Nov 2018 13:00:53 GMT  
		Size: 29.9 KB (29920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf731bd5ae86e912336259df4b393493b3c1860fc4088480d61ae17ed53a5ae`  
		Last Modified: Sat, 17 Nov 2018 13:01:50 GMT  
		Size: 106.0 MB (106007765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:8fbc83a416cb4f9b684e6374269b05285da3e02091850b57601a57a314d85172
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
$ docker pull mono@sha256:e1bad5ba20ce774bf6c03da76f2dd852cd4518a62df446ad9c330d4904a7a0a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd059f132dcb95b58861612501ada74b15518b2ab4537300cee4a1a8f449e0f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:41:12 GMT
ADD file:3c653db51faa2568117b6077dcf18945db344868dc13507aa8a680d1e9c7fb07 in / 
# Fri, 16 Nov 2018 12:41:12 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:46:27 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 17 Nov 2018 12:46:27 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 17 Nov 2018 12:46:44 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:48:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f0d5412c133d7c088c460e2ef3bf665756e2dbbc6a398ce0ce3bcc2e94e757ab`  
		Last Modified: Thu, 15 Nov 2018 02:07:34 GMT  
		Size: 40.5 MB (40532790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e70e7f6cfb33a5a8ebd3fb20643c16720c3549d43eb1c1771f805f5a51baa70`  
		Last Modified: Sat, 17 Nov 2018 13:00:56 GMT  
		Size: 6.4 MB (6406281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ebcef50237297be1a9ace0eb65a9360253fa7b6a7671fccf2ae5da69db9f73`  
		Last Modified: Sat, 17 Nov 2018 13:00:53 GMT  
		Size: 29.9 KB (29920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf731bd5ae86e912336259df4b393493b3c1860fc4088480d61ae17ed53a5ae`  
		Last Modified: Sat, 17 Nov 2018 13:01:50 GMT  
		Size: 106.0 MB (106007765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:8fbc83a416cb4f9b684e6374269b05285da3e02091850b57601a57a314d85172
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
$ docker pull mono@sha256:e1bad5ba20ce774bf6c03da76f2dd852cd4518a62df446ad9c330d4904a7a0a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd059f132dcb95b58861612501ada74b15518b2ab4537300cee4a1a8f449e0f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:41:12 GMT
ADD file:3c653db51faa2568117b6077dcf18945db344868dc13507aa8a680d1e9c7fb07 in / 
# Fri, 16 Nov 2018 12:41:12 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:46:27 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 17 Nov 2018 12:46:27 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 17 Nov 2018 12:46:44 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:48:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f0d5412c133d7c088c460e2ef3bf665756e2dbbc6a398ce0ce3bcc2e94e757ab`  
		Last Modified: Thu, 15 Nov 2018 02:07:34 GMT  
		Size: 40.5 MB (40532790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e70e7f6cfb33a5a8ebd3fb20643c16720c3549d43eb1c1771f805f5a51baa70`  
		Last Modified: Sat, 17 Nov 2018 13:00:56 GMT  
		Size: 6.4 MB (6406281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ebcef50237297be1a9ace0eb65a9360253fa7b6a7671fccf2ae5da69db9f73`  
		Last Modified: Sat, 17 Nov 2018 13:00:53 GMT  
		Size: 29.9 KB (29920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf731bd5ae86e912336259df4b393493b3c1860fc4088480d61ae17ed53a5ae`  
		Last Modified: Sat, 17 Nov 2018 13:01:50 GMT  
		Size: 106.0 MB (106007765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:8fbc83a416cb4f9b684e6374269b05285da3e02091850b57601a57a314d85172
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
$ docker pull mono@sha256:e1bad5ba20ce774bf6c03da76f2dd852cd4518a62df446ad9c330d4904a7a0a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152976756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd059f132dcb95b58861612501ada74b15518b2ab4537300cee4a1a8f449e0f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:41:12 GMT
ADD file:3c653db51faa2568117b6077dcf18945db344868dc13507aa8a680d1e9c7fb07 in / 
# Fri, 16 Nov 2018 12:41:12 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:46:27 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 17 Nov 2018 12:46:27 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 17 Nov 2018 12:46:44 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:48:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f0d5412c133d7c088c460e2ef3bf665756e2dbbc6a398ce0ce3bcc2e94e757ab`  
		Last Modified: Thu, 15 Nov 2018 02:07:34 GMT  
		Size: 40.5 MB (40532790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e70e7f6cfb33a5a8ebd3fb20643c16720c3549d43eb1c1771f805f5a51baa70`  
		Last Modified: Sat, 17 Nov 2018 13:00:56 GMT  
		Size: 6.4 MB (6406281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ebcef50237297be1a9ace0eb65a9360253fa7b6a7671fccf2ae5da69db9f73`  
		Last Modified: Sat, 17 Nov 2018 13:00:53 GMT  
		Size: 29.9 KB (29920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf731bd5ae86e912336259df4b393493b3c1860fc4088480d61ae17ed53a5ae`  
		Last Modified: Sat, 17 Nov 2018 13:01:50 GMT  
		Size: 106.0 MB (106007765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:4109408ece47decc62a460290f7900bb5e54b4bc80ddcd0cb33d9662a1c7fb02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:80dad65328b411da939a97f1a65eeaa2cf85110416dfb67db6a585c6a50f8840
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196327797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b163438786ccb9fd0290cc492c984400e80afa2e4b4bb3b230c96a92c4dfa42`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 09:04:59 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543882081064e0a31b1eece3e11bb0d65cf3d50aebbe51ec6e5c86dbd58281df`  
		Last Modified: Sat, 29 Dec 2018 09:14:32 GMT  
		Size: 120.7 MB (120662144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:c3124ec2b4d3fd72cf1257e3b3e9ee96c6a978db47867d9e07f8b25812aba837
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169164909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb48cdd9464a27200110a14784dba2f76401b21fd15c8aced5d0a4a15fbefe3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 15:04:55 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5888ea9fdfb3df29d3fd1ff2cf2705a3a95fda71e092dd09f5d05a0f84b31cdb`  
		Last Modified: Sat, 29 Dec 2018 15:13:16 GMT  
		Size: 105.3 MB (105327125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:6c0975f9f485377db79acddb866a2158e7f66aa8ad8539932f77f7010fb6ccc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205167733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6621409848c8cba379d96e083658f000c03de8ce72da6ec414f0e2faf25ed331`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:41:45 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 17 Nov 2018 12:41:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:43:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 17 Nov 2018 12:52:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2161b8e0f13b9c9877d6d3ddf34ef3dd73787f202d389ec4bdffc8bff7c0f`  
		Last Modified: Sat, 17 Nov 2018 12:57:01 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eb469df426b15f3b82bd047afaf7c948fd572133d3f01ffb9f1fc7a0cf4503`  
		Last Modified: Sat, 17 Nov 2018 12:57:25 GMT  
		Size: 48.9 MB (48937020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163eafdcb6b051ba786a058018edc740a740254394d9761d4a4ee46c7c8c7458`  
		Last Modified: Sat, 17 Nov 2018 13:04:25 GMT  
		Size: 125.9 MB (125946453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14`

```console
$ docker pull mono@sha256:346606228dcd6a16196ce9a5fd75890efc683620213589468cfeab47d91b5933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14` - linux; amd64

```console
$ docker pull mono@sha256:04ded74ef7cf61ddb4b0eb8beb12372e881baf82a52e56c6c13351117693497b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199311798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f265a0805a1c4435df4a6344e3fe2a81ea83800764b21c015ef49b4be354dbc4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:53:05 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 08:53:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:56:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 09:12:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205b4fbb9b053fa421fa84fb857bdb5b8b11f772ab50d9630d07c6754d00f0ca`  
		Last Modified: Sat, 29 Dec 2018 09:13:20 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c50bbe4c75d75cd7e97733302aa8e7e9723ed96d5accddf1aa03371a8cb505`  
		Last Modified: Sat, 29 Dec 2018 09:13:32 GMT  
		Size: 50.6 MB (50620520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95922d756902f5b3de04a73bd39f81fc12407a1e168774dbd03762d814323cf9`  
		Last Modified: Sat, 29 Dec 2018 09:15:01 GMT  
		Size: 118.5 MB (118535260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14` - linux; arm variant v7

```console
$ docker pull mono@sha256:e65954ec7f7eab1c83973791191c065b83009ea3d478eb13ced360986b473aa8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176982830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd81c21d12dfa6db02f5602a821cbf35466e054427a5148b06deaaf64f582ba`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:49:43 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 14:50:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:51:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 15:10:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bdcb67846267f8535bb4e8a62c72a75d43c1f3e17dc9b1a225abb91e9d2b32`  
		Last Modified: Sat, 29 Dec 2018 15:11:30 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a28990a038a0a23701fc8b0475672618425144cc14a0c149e22cd120e407c4c`  
		Last Modified: Sat, 29 Dec 2018 15:11:43 GMT  
		Size: 41.8 MB (41839387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8ff93a0faebbfd8992d55685ff28aed46f02596d8ed300f5e32f88bec78069`  
		Last Modified: Sat, 29 Dec 2018 15:14:08 GMT  
		Size: 108.8 MB (108830996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14` - linux; 386

```console
$ docker pull mono@sha256:3a16dde503236e23a888c8fa616d99dc8e3280d8a6954d8f09d46034a66a8e2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208589820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3206a427c175e831992351d90c3c793a6a00ea2857d60f3c8d4aca5460212bcf`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:44:07 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 17 Nov 2018 12:44:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:45:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 17 Nov 2018 12:56:20 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb62708b2eb24372be6bda4776cec29a3bb53323cd3c83ad85bb4fbaab7925`  
		Last Modified: Sat, 17 Nov 2018 12:59:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdafc6e21a2c5678999708949bf2fe51bb512955a1aa8ae456ad55add37a9bc`  
		Last Modified: Sat, 17 Nov 2018 12:59:46 GMT  
		Size: 54.5 MB (54460612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8009fb8222f2fe7e295bdfe78024e27db7ce3923a590b89b270fe326a76162a`  
		Last Modified: Sat, 17 Nov 2018 13:07:16 GMT  
		Size: 123.8 MB (123844952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0`

```console
$ docker pull mono@sha256:346606228dcd6a16196ce9a5fd75890efc683620213589468cfeab47d91b5933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0` - linux; amd64

```console
$ docker pull mono@sha256:04ded74ef7cf61ddb4b0eb8beb12372e881baf82a52e56c6c13351117693497b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199311798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f265a0805a1c4435df4a6344e3fe2a81ea83800764b21c015ef49b4be354dbc4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:53:05 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 08:53:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:56:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 09:12:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205b4fbb9b053fa421fa84fb857bdb5b8b11f772ab50d9630d07c6754d00f0ca`  
		Last Modified: Sat, 29 Dec 2018 09:13:20 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c50bbe4c75d75cd7e97733302aa8e7e9723ed96d5accddf1aa03371a8cb505`  
		Last Modified: Sat, 29 Dec 2018 09:13:32 GMT  
		Size: 50.6 MB (50620520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95922d756902f5b3de04a73bd39f81fc12407a1e168774dbd03762d814323cf9`  
		Last Modified: Sat, 29 Dec 2018 09:15:01 GMT  
		Size: 118.5 MB (118535260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:e65954ec7f7eab1c83973791191c065b83009ea3d478eb13ced360986b473aa8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176982830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd81c21d12dfa6db02f5602a821cbf35466e054427a5148b06deaaf64f582ba`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:49:43 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 14:50:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:51:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 15:10:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bdcb67846267f8535bb4e8a62c72a75d43c1f3e17dc9b1a225abb91e9d2b32`  
		Last Modified: Sat, 29 Dec 2018 15:11:30 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a28990a038a0a23701fc8b0475672618425144cc14a0c149e22cd120e407c4c`  
		Last Modified: Sat, 29 Dec 2018 15:11:43 GMT  
		Size: 41.8 MB (41839387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8ff93a0faebbfd8992d55685ff28aed46f02596d8ed300f5e32f88bec78069`  
		Last Modified: Sat, 29 Dec 2018 15:14:08 GMT  
		Size: 108.8 MB (108830996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0` - linux; 386

```console
$ docker pull mono@sha256:3a16dde503236e23a888c8fa616d99dc8e3280d8a6954d8f09d46034a66a8e2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208589820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3206a427c175e831992351d90c3c793a6a00ea2857d60f3c8d4aca5460212bcf`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:44:07 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 17 Nov 2018 12:44:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:45:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 17 Nov 2018 12:56:20 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb62708b2eb24372be6bda4776cec29a3bb53323cd3c83ad85bb4fbaab7925`  
		Last Modified: Sat, 17 Nov 2018 12:59:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdafc6e21a2c5678999708949bf2fe51bb512955a1aa8ae456ad55add37a9bc`  
		Last Modified: Sat, 17 Nov 2018 12:59:46 GMT  
		Size: 54.5 MB (54460612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8009fb8222f2fe7e295bdfe78024e27db7ce3923a590b89b270fe326a76162a`  
		Last Modified: Sat, 17 Nov 2018 13:07:16 GMT  
		Size: 123.8 MB (123844952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0.177`

```console
$ docker pull mono@sha256:346606228dcd6a16196ce9a5fd75890efc683620213589468cfeab47d91b5933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0.177` - linux; amd64

```console
$ docker pull mono@sha256:04ded74ef7cf61ddb4b0eb8beb12372e881baf82a52e56c6c13351117693497b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199311798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f265a0805a1c4435df4a6344e3fe2a81ea83800764b21c015ef49b4be354dbc4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:53:05 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 08:53:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:56:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 09:12:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205b4fbb9b053fa421fa84fb857bdb5b8b11f772ab50d9630d07c6754d00f0ca`  
		Last Modified: Sat, 29 Dec 2018 09:13:20 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c50bbe4c75d75cd7e97733302aa8e7e9723ed96d5accddf1aa03371a8cb505`  
		Last Modified: Sat, 29 Dec 2018 09:13:32 GMT  
		Size: 50.6 MB (50620520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95922d756902f5b3de04a73bd39f81fc12407a1e168774dbd03762d814323cf9`  
		Last Modified: Sat, 29 Dec 2018 09:15:01 GMT  
		Size: 118.5 MB (118535260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177` - linux; arm variant v7

```console
$ docker pull mono@sha256:e65954ec7f7eab1c83973791191c065b83009ea3d478eb13ced360986b473aa8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176982830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd81c21d12dfa6db02f5602a821cbf35466e054427a5148b06deaaf64f582ba`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:49:43 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 14:50:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:51:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 15:10:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bdcb67846267f8535bb4e8a62c72a75d43c1f3e17dc9b1a225abb91e9d2b32`  
		Last Modified: Sat, 29 Dec 2018 15:11:30 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a28990a038a0a23701fc8b0475672618425144cc14a0c149e22cd120e407c4c`  
		Last Modified: Sat, 29 Dec 2018 15:11:43 GMT  
		Size: 41.8 MB (41839387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8ff93a0faebbfd8992d55685ff28aed46f02596d8ed300f5e32f88bec78069`  
		Last Modified: Sat, 29 Dec 2018 15:14:08 GMT  
		Size: 108.8 MB (108830996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177` - linux; 386

```console
$ docker pull mono@sha256:3a16dde503236e23a888c8fa616d99dc8e3280d8a6954d8f09d46034a66a8e2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208589820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3206a427c175e831992351d90c3c793a6a00ea2857d60f3c8d4aca5460212bcf`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:44:07 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 17 Nov 2018 12:44:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:45:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 17 Nov 2018 12:56:20 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb62708b2eb24372be6bda4776cec29a3bb53323cd3c83ad85bb4fbaab7925`  
		Last Modified: Sat, 17 Nov 2018 12:59:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdafc6e21a2c5678999708949bf2fe51bb512955a1aa8ae456ad55add37a9bc`  
		Last Modified: Sat, 17 Nov 2018 12:59:46 GMT  
		Size: 54.5 MB (54460612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8009fb8222f2fe7e295bdfe78024e27db7ce3923a590b89b270fe326a76162a`  
		Last Modified: Sat, 17 Nov 2018 13:07:16 GMT  
		Size: 123.8 MB (123844952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0.177-slim`

```console
$ docker pull mono@sha256:e47d155ad8a79dd533320a9b3ebb0f95431f6b67803130bd37099bf6a339e834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0.177-slim` - linux; amd64

```console
$ docker pull mono@sha256:9006e93eb6ba88d6454ec6479298b4f2869db25f162664982efab5bba77f57df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80776538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eabfeb56f03fae30fefb7b7f559ffe1ce8b76b164fe3807921fbbd1e350ed7ab`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:53:05 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 08:53:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:56:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205b4fbb9b053fa421fa84fb857bdb5b8b11f772ab50d9630d07c6754d00f0ca`  
		Last Modified: Sat, 29 Dec 2018 09:13:20 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c50bbe4c75d75cd7e97733302aa8e7e9723ed96d5accddf1aa03371a8cb505`  
		Last Modified: Sat, 29 Dec 2018 09:13:32 GMT  
		Size: 50.6 MB (50620520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:d853c37e9cd5c724c45e99f6d03add1b4e8d6273b40ef9f99c663b3092c09bc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68151834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f153c72fabc39565588b28cca3b782fa1985af98342d6acff41afcbf52647db`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:49:43 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 14:50:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:51:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bdcb67846267f8535bb4e8a62c72a75d43c1f3e17dc9b1a225abb91e9d2b32`  
		Last Modified: Sat, 29 Dec 2018 15:11:30 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a28990a038a0a23701fc8b0475672618425144cc14a0c149e22cd120e407c4c`  
		Last Modified: Sat, 29 Dec 2018 15:11:43 GMT  
		Size: 41.8 MB (41839387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177-slim` - linux; 386

```console
$ docker pull mono@sha256:83adcc6c3c5d3cd2b72eb5086eee589060a03dbd88de5beab91bd14e62ca5470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84744868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2faf216411ed288494ca558945a7f8b2e21869ef2f9cae6e5c43e4a6f72d8c8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:44:07 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 17 Nov 2018 12:44:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:45:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb62708b2eb24372be6bda4776cec29a3bb53323cd3c83ad85bb4fbaab7925`  
		Last Modified: Sat, 17 Nov 2018 12:59:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdafc6e21a2c5678999708949bf2fe51bb512955a1aa8ae456ad55add37a9bc`  
		Last Modified: Sat, 17 Nov 2018 12:59:46 GMT  
		Size: 54.5 MB (54460612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14.0-slim`

```console
$ docker pull mono@sha256:e47d155ad8a79dd533320a9b3ebb0f95431f6b67803130bd37099bf6a339e834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:9006e93eb6ba88d6454ec6479298b4f2869db25f162664982efab5bba77f57df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80776538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eabfeb56f03fae30fefb7b7f559ffe1ce8b76b164fe3807921fbbd1e350ed7ab`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:53:05 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 08:53:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:56:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205b4fbb9b053fa421fa84fb857bdb5b8b11f772ab50d9630d07c6754d00f0ca`  
		Last Modified: Sat, 29 Dec 2018 09:13:20 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c50bbe4c75d75cd7e97733302aa8e7e9723ed96d5accddf1aa03371a8cb505`  
		Last Modified: Sat, 29 Dec 2018 09:13:32 GMT  
		Size: 50.6 MB (50620520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:d853c37e9cd5c724c45e99f6d03add1b4e8d6273b40ef9f99c663b3092c09bc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68151834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f153c72fabc39565588b28cca3b782fa1985af98342d6acff41afcbf52647db`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:49:43 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 14:50:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:51:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bdcb67846267f8535bb4e8a62c72a75d43c1f3e17dc9b1a225abb91e9d2b32`  
		Last Modified: Sat, 29 Dec 2018 15:11:30 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a28990a038a0a23701fc8b0475672618425144cc14a0c149e22cd120e407c4c`  
		Last Modified: Sat, 29 Dec 2018 15:11:43 GMT  
		Size: 41.8 MB (41839387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0-slim` - linux; 386

```console
$ docker pull mono@sha256:83adcc6c3c5d3cd2b72eb5086eee589060a03dbd88de5beab91bd14e62ca5470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84744868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2faf216411ed288494ca558945a7f8b2e21869ef2f9cae6e5c43e4a6f72d8c8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:44:07 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 17 Nov 2018 12:44:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:45:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb62708b2eb24372be6bda4776cec29a3bb53323cd3c83ad85bb4fbaab7925`  
		Last Modified: Sat, 17 Nov 2018 12:59:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdafc6e21a2c5678999708949bf2fe51bb512955a1aa8ae456ad55add37a9bc`  
		Last Modified: Sat, 17 Nov 2018 12:59:46 GMT  
		Size: 54.5 MB (54460612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.14-slim`

```console
$ docker pull mono@sha256:e47d155ad8a79dd533320a9b3ebb0f95431f6b67803130bd37099bf6a339e834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14-slim` - linux; amd64

```console
$ docker pull mono@sha256:9006e93eb6ba88d6454ec6479298b4f2869db25f162664982efab5bba77f57df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80776538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eabfeb56f03fae30fefb7b7f559ffe1ce8b76b164fe3807921fbbd1e350ed7ab`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:53:05 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 08:53:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:56:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205b4fbb9b053fa421fa84fb857bdb5b8b11f772ab50d9630d07c6754d00f0ca`  
		Last Modified: Sat, 29 Dec 2018 09:13:20 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c50bbe4c75d75cd7e97733302aa8e7e9723ed96d5accddf1aa03371a8cb505`  
		Last Modified: Sat, 29 Dec 2018 09:13:32 GMT  
		Size: 50.6 MB (50620520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:d853c37e9cd5c724c45e99f6d03add1b4e8d6273b40ef9f99c663b3092c09bc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68151834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f153c72fabc39565588b28cca3b782fa1985af98342d6acff41afcbf52647db`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:49:43 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 29 Dec 2018 14:50:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:51:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bdcb67846267f8535bb4e8a62c72a75d43c1f3e17dc9b1a225abb91e9d2b32`  
		Last Modified: Sat, 29 Dec 2018 15:11:30 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a28990a038a0a23701fc8b0475672618425144cc14a0c149e22cd120e407c4c`  
		Last Modified: Sat, 29 Dec 2018 15:11:43 GMT  
		Size: 41.8 MB (41839387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14-slim` - linux; 386

```console
$ docker pull mono@sha256:83adcc6c3c5d3cd2b72eb5086eee589060a03dbd88de5beab91bd14e62ca5470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84744868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2faf216411ed288494ca558945a7f8b2e21869ef2f9cae6e5c43e4a6f72d8c8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:44:07 GMT
ENV MONO_VERSION=5.14.0.177
# Sat, 17 Nov 2018 12:44:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:45:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb62708b2eb24372be6bda4776cec29a3bb53323cd3c83ad85bb4fbaab7925`  
		Last Modified: Sat, 17 Nov 2018 12:59:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdafc6e21a2c5678999708949bf2fe51bb512955a1aa8ae456ad55add37a9bc`  
		Last Modified: Sat, 17 Nov 2018 12:59:46 GMT  
		Size: 54.5 MB (54460612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16`

```console
$ docker pull mono@sha256:4109408ece47decc62a460290f7900bb5e54b4bc80ddcd0cb33d9662a1c7fb02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16` - linux; amd64

```console
$ docker pull mono@sha256:80dad65328b411da939a97f1a65eeaa2cf85110416dfb67db6a585c6a50f8840
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196327797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b163438786ccb9fd0290cc492c984400e80afa2e4b4bb3b230c96a92c4dfa42`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 09:04:59 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543882081064e0a31b1eece3e11bb0d65cf3d50aebbe51ec6e5c86dbd58281df`  
		Last Modified: Sat, 29 Dec 2018 09:14:32 GMT  
		Size: 120.7 MB (120662144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v7

```console
$ docker pull mono@sha256:c3124ec2b4d3fd72cf1257e3b3e9ee96c6a978db47867d9e07f8b25812aba837
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169164909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb48cdd9464a27200110a14784dba2f76401b21fd15c8aced5d0a4a15fbefe3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 15:04:55 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5888ea9fdfb3df29d3fd1ff2cf2705a3a95fda71e092dd09f5d05a0f84b31cdb`  
		Last Modified: Sat, 29 Dec 2018 15:13:16 GMT  
		Size: 105.3 MB (105327125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; 386

```console
$ docker pull mono@sha256:6c0975f9f485377db79acddb866a2158e7f66aa8ad8539932f77f7010fb6ccc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205167733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6621409848c8cba379d96e083658f000c03de8ce72da6ec414f0e2faf25ed331`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:41:45 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 17 Nov 2018 12:41:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:43:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 17 Nov 2018 12:52:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2161b8e0f13b9c9877d6d3ddf34ef3dd73787f202d389ec4bdffc8bff7c0f`  
		Last Modified: Sat, 17 Nov 2018 12:57:01 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eb469df426b15f3b82bd047afaf7c948fd572133d3f01ffb9f1fc7a0cf4503`  
		Last Modified: Sat, 17 Nov 2018 12:57:25 GMT  
		Size: 48.9 MB (48937020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163eafdcb6b051ba786a058018edc740a740254394d9761d4a4ee46c7c8c7458`  
		Last Modified: Sat, 17 Nov 2018 13:04:25 GMT  
		Size: 125.9 MB (125946453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0`

```console
$ docker pull mono@sha256:4109408ece47decc62a460290f7900bb5e54b4bc80ddcd0cb33d9662a1c7fb02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0` - linux; amd64

```console
$ docker pull mono@sha256:80dad65328b411da939a97f1a65eeaa2cf85110416dfb67db6a585c6a50f8840
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196327797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b163438786ccb9fd0290cc492c984400e80afa2e4b4bb3b230c96a92c4dfa42`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 09:04:59 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543882081064e0a31b1eece3e11bb0d65cf3d50aebbe51ec6e5c86dbd58281df`  
		Last Modified: Sat, 29 Dec 2018 09:14:32 GMT  
		Size: 120.7 MB (120662144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:c3124ec2b4d3fd72cf1257e3b3e9ee96c6a978db47867d9e07f8b25812aba837
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169164909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb48cdd9464a27200110a14784dba2f76401b21fd15c8aced5d0a4a15fbefe3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 15:04:55 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5888ea9fdfb3df29d3fd1ff2cf2705a3a95fda71e092dd09f5d05a0f84b31cdb`  
		Last Modified: Sat, 29 Dec 2018 15:13:16 GMT  
		Size: 105.3 MB (105327125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; 386

```console
$ docker pull mono@sha256:6c0975f9f485377db79acddb866a2158e7f66aa8ad8539932f77f7010fb6ccc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205167733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6621409848c8cba379d96e083658f000c03de8ce72da6ec414f0e2faf25ed331`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:41:45 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 17 Nov 2018 12:41:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:43:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 17 Nov 2018 12:52:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2161b8e0f13b9c9877d6d3ddf34ef3dd73787f202d389ec4bdffc8bff7c0f`  
		Last Modified: Sat, 17 Nov 2018 12:57:01 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eb469df426b15f3b82bd047afaf7c948fd572133d3f01ffb9f1fc7a0cf4503`  
		Last Modified: Sat, 17 Nov 2018 12:57:25 GMT  
		Size: 48.9 MB (48937020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163eafdcb6b051ba786a058018edc740a740254394d9761d4a4ee46c7c8c7458`  
		Last Modified: Sat, 17 Nov 2018 13:04:25 GMT  
		Size: 125.9 MB (125946453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.179`

```console
$ docker pull mono@sha256:4109408ece47decc62a460290f7900bb5e54b4bc80ddcd0cb33d9662a1c7fb02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0.179` - linux; amd64

```console
$ docker pull mono@sha256:80dad65328b411da939a97f1a65eeaa2cf85110416dfb67db6a585c6a50f8840
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196327797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b163438786ccb9fd0290cc492c984400e80afa2e4b4bb3b230c96a92c4dfa42`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 09:04:59 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543882081064e0a31b1eece3e11bb0d65cf3d50aebbe51ec6e5c86dbd58281df`  
		Last Modified: Sat, 29 Dec 2018 09:14:32 GMT  
		Size: 120.7 MB (120662144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.179` - linux; arm variant v7

```console
$ docker pull mono@sha256:c3124ec2b4d3fd72cf1257e3b3e9ee96c6a978db47867d9e07f8b25812aba837
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169164909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb48cdd9464a27200110a14784dba2f76401b21fd15c8aced5d0a4a15fbefe3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 15:04:55 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5888ea9fdfb3df29d3fd1ff2cf2705a3a95fda71e092dd09f5d05a0f84b31cdb`  
		Last Modified: Sat, 29 Dec 2018 15:13:16 GMT  
		Size: 105.3 MB (105327125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.179` - linux; 386

```console
$ docker pull mono@sha256:6c0975f9f485377db79acddb866a2158e7f66aa8ad8539932f77f7010fb6ccc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205167733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6621409848c8cba379d96e083658f000c03de8ce72da6ec414f0e2faf25ed331`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:41:45 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 17 Nov 2018 12:41:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:43:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 17 Nov 2018 12:52:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2161b8e0f13b9c9877d6d3ddf34ef3dd73787f202d389ec4bdffc8bff7c0f`  
		Last Modified: Sat, 17 Nov 2018 12:57:01 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eb469df426b15f3b82bd047afaf7c948fd572133d3f01ffb9f1fc7a0cf4503`  
		Last Modified: Sat, 17 Nov 2018 12:57:25 GMT  
		Size: 48.9 MB (48937020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163eafdcb6b051ba786a058018edc740a740254394d9761d4a4ee46c7c8c7458`  
		Last Modified: Sat, 17 Nov 2018 13:04:25 GMT  
		Size: 125.9 MB (125946453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.179-slim`

```console
$ docker pull mono@sha256:ddec437ef842c2e11aee1ffde041fd7421c8886b602c51cd107961c59dccf1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0.179-slim` - linux; amd64

```console
$ docker pull mono@sha256:462a4c4aed6557bf6434b88e0f9eb6173be5f7ba137fd3352639082ab997f09d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75665653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176bc82bf3c7e528cb78156d12a54e8fd0f47b7ee561b2c4ea29cd239f4bd6f8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.179-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:1b061ff1afdae470e846747b00b0ac9d1fd9450db047722212614e4e8e4b89be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63837784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70997998169e148f1adb6700441c3a7d90c07d47d8d0b6de1508e50cf055496a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.179-slim` - linux; 386

```console
$ docker pull mono@sha256:3af624b5940275ff20a75830dd40c26c3a5d8fbfed51918a071d754a5587ba8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79221280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41e0ea6d77ec7b0e44482a5322b3d5a7e772ed197d24ef629ab8f469d4ce90d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:41:45 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 17 Nov 2018 12:41:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:43:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2161b8e0f13b9c9877d6d3ddf34ef3dd73787f202d389ec4bdffc8bff7c0f`  
		Last Modified: Sat, 17 Nov 2018 12:57:01 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eb469df426b15f3b82bd047afaf7c948fd572133d3f01ffb9f1fc7a0cf4503`  
		Last Modified: Sat, 17 Nov 2018 12:57:25 GMT  
		Size: 48.9 MB (48937020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0-slim`

```console
$ docker pull mono@sha256:ddec437ef842c2e11aee1ffde041fd7421c8886b602c51cd107961c59dccf1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:462a4c4aed6557bf6434b88e0f9eb6173be5f7ba137fd3352639082ab997f09d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75665653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176bc82bf3c7e528cb78156d12a54e8fd0f47b7ee561b2c4ea29cd239f4bd6f8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:1b061ff1afdae470e846747b00b0ac9d1fd9450db047722212614e4e8e4b89be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63837784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70997998169e148f1adb6700441c3a7d90c07d47d8d0b6de1508e50cf055496a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; 386

```console
$ docker pull mono@sha256:3af624b5940275ff20a75830dd40c26c3a5d8fbfed51918a071d754a5587ba8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79221280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41e0ea6d77ec7b0e44482a5322b3d5a7e772ed197d24ef629ab8f469d4ce90d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:41:45 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 17 Nov 2018 12:41:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:43:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2161b8e0f13b9c9877d6d3ddf34ef3dd73787f202d389ec4bdffc8bff7c0f`  
		Last Modified: Sat, 17 Nov 2018 12:57:01 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eb469df426b15f3b82bd047afaf7c948fd572133d3f01ffb9f1fc7a0cf4503`  
		Last Modified: Sat, 17 Nov 2018 12:57:25 GMT  
		Size: 48.9 MB (48937020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16-slim`

```console
$ docker pull mono@sha256:ddec437ef842c2e11aee1ffde041fd7421c8886b602c51cd107961c59dccf1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16-slim` - linux; amd64

```console
$ docker pull mono@sha256:462a4c4aed6557bf6434b88e0f9eb6173be5f7ba137fd3352639082ab997f09d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75665653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176bc82bf3c7e528cb78156d12a54e8fd0f47b7ee561b2c4ea29cd239f4bd6f8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:1b061ff1afdae470e846747b00b0ac9d1fd9450db047722212614e4e8e4b89be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63837784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70997998169e148f1adb6700441c3a7d90c07d47d8d0b6de1508e50cf055496a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; 386

```console
$ docker pull mono@sha256:3af624b5940275ff20a75830dd40c26c3a5d8fbfed51918a071d754a5587ba8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79221280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41e0ea6d77ec7b0e44482a5322b3d5a7e772ed197d24ef629ab8f469d4ce90d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:41:45 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 17 Nov 2018 12:41:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:43:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2161b8e0f13b9c9877d6d3ddf34ef3dd73787f202d389ec4bdffc8bff7c0f`  
		Last Modified: Sat, 17 Nov 2018 12:57:01 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eb469df426b15f3b82bd047afaf7c948fd572133d3f01ffb9f1fc7a0cf4503`  
		Last Modified: Sat, 17 Nov 2018 12:57:25 GMT  
		Size: 48.9 MB (48937020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:ddec437ef842c2e11aee1ffde041fd7421c8886b602c51cd107961c59dccf1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:462a4c4aed6557bf6434b88e0f9eb6173be5f7ba137fd3352639082ab997f09d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75665653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176bc82bf3c7e528cb78156d12a54e8fd0f47b7ee561b2c4ea29cd239f4bd6f8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:1b061ff1afdae470e846747b00b0ac9d1fd9450db047722212614e4e8e4b89be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63837784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70997998169e148f1adb6700441c3a7d90c07d47d8d0b6de1508e50cf055496a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:3af624b5940275ff20a75830dd40c26c3a5d8fbfed51918a071d754a5587ba8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79221280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41e0ea6d77ec7b0e44482a5322b3d5a7e772ed197d24ef629ab8f469d4ce90d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:41:45 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 17 Nov 2018 12:41:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:43:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2161b8e0f13b9c9877d6d3ddf34ef3dd73787f202d389ec4bdffc8bff7c0f`  
		Last Modified: Sat, 17 Nov 2018 12:57:01 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eb469df426b15f3b82bd047afaf7c948fd572133d3f01ffb9f1fc7a0cf4503`  
		Last Modified: Sat, 17 Nov 2018 12:57:25 GMT  
		Size: 48.9 MB (48937020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:4109408ece47decc62a460290f7900bb5e54b4bc80ddcd0cb33d9662a1c7fb02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:80dad65328b411da939a97f1a65eeaa2cf85110416dfb67db6a585c6a50f8840
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196327797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b163438786ccb9fd0290cc492c984400e80afa2e4b4bb3b230c96a92c4dfa42`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 09:04:59 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543882081064e0a31b1eece3e11bb0d65cf3d50aebbe51ec6e5c86dbd58281df`  
		Last Modified: Sat, 29 Dec 2018 09:14:32 GMT  
		Size: 120.7 MB (120662144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:c3124ec2b4d3fd72cf1257e3b3e9ee96c6a978db47867d9e07f8b25812aba837
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169164909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb48cdd9464a27200110a14784dba2f76401b21fd15c8aced5d0a4a15fbefe3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 15:04:55 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5888ea9fdfb3df29d3fd1ff2cf2705a3a95fda71e092dd09f5d05a0f84b31cdb`  
		Last Modified: Sat, 29 Dec 2018 15:13:16 GMT  
		Size: 105.3 MB (105327125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:6c0975f9f485377db79acddb866a2158e7f66aa8ad8539932f77f7010fb6ccc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205167733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6621409848c8cba379d96e083658f000c03de8ce72da6ec414f0e2faf25ed331`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:41:45 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 17 Nov 2018 12:41:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:43:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 17 Nov 2018 12:52:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2161b8e0f13b9c9877d6d3ddf34ef3dd73787f202d389ec4bdffc8bff7c0f`  
		Last Modified: Sat, 17 Nov 2018 12:57:01 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eb469df426b15f3b82bd047afaf7c948fd572133d3f01ffb9f1fc7a0cf4503`  
		Last Modified: Sat, 17 Nov 2018 12:57:25 GMT  
		Size: 48.9 MB (48937020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163eafdcb6b051ba786a058018edc740a740254394d9761d4a4ee46c7c8c7458`  
		Last Modified: Sat, 17 Nov 2018 13:04:25 GMT  
		Size: 125.9 MB (125946453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:ddec437ef842c2e11aee1ffde041fd7421c8886b602c51cd107961c59dccf1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:462a4c4aed6557bf6434b88e0f9eb6173be5f7ba137fd3352639082ab997f09d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75665653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:176bc82bf3c7e528cb78156d12a54e8fd0f47b7ee561b2c4ea29cd239f4bd6f8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:1b061ff1afdae470e846747b00b0ac9d1fd9450db047722212614e4e8e4b89be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63837784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70997998169e148f1adb6700441c3a7d90c07d47d8d0b6de1508e50cf055496a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:3af624b5940275ff20a75830dd40c26c3a5d8fbfed51918a071d754a5587ba8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79221280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41e0ea6d77ec7b0e44482a5322b3d5a7e772ed197d24ef629ab8f469d4ce90d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 12:41:45 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 17 Nov 2018 12:41:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 17 Nov 2018 12:43:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2161b8e0f13b9c9877d6d3ddf34ef3dd73787f202d389ec4bdffc8bff7c0f`  
		Last Modified: Sat, 17 Nov 2018 12:57:01 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eb469df426b15f3b82bd047afaf7c948fd572133d3f01ffb9f1fc7a0cf4503`  
		Last Modified: Sat, 17 Nov 2018 12:57:25 GMT  
		Size: 48.9 MB (48937020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

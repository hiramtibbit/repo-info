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
$ docker pull mono@sha256:f2c6981652ff4f7766997960e8f0fc85c5822cc40bfbf52f0106255590ac20ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:d5c7c6847a6d05257c65685d7db3000d4c846c82ef3456f9805c8de91f1b93fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152978690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97877c48e77509255a20e6c5d3ddf8f4a659ab286dab40a24330cc5badb2e96b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:48:51 GMT
ADD file:8699192301f1ef9f9128a50c6fbb453bf22dd5451d822d05a034a99c53d93921 in / 
# Thu, 15 Nov 2018 22:49:00 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:36:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Nov 2018 12:36:49 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Nov 2018 12:37:09 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:37:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:38:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:75eb993070b83359932a9837d457b21b19952ea305d45fc39f2974e9c174022d`  
		Last Modified: Thu, 15 Nov 2018 23:23:05 GMT  
		Size: 39.3 MB (39339731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d507bfa5dcae3e6541cfb36d72b35eac2438a05494d477ecca26210e53b7c75f`  
		Last Modified: Fri, 16 Nov 2018 13:01:42 GMT  
		Size: 6.4 MB (6419029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f3b8567eaf49dec6ee924e08d12b313c140de9953172a71be97966c47d4ab1`  
		Last Modified: Fri, 16 Nov 2018 13:01:40 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a36ca05bb8976b367f5c7de3415457ad305f6918d6bdbd9dd48c5aa0014d614`  
		Last Modified: Fri, 16 Nov 2018 13:02:12 GMT  
		Size: 107.2 MB (107190027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v7

```console
$ docker pull mono@sha256:5662bc6c4e00b354f7307eae7c93b20d5ee3accc59411f91755abfa987db6ad4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138904189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a73b23c0d13a8734a4caaf15334a7821751aa9f8420d383e1813eb9b031a39d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:12:20 GMT
ADD file:dfb9a1807e0b40371535a3989eaae9fa4919d4de1416b9c2cdcec3adaf13e53e in / 
# Fri, 16 Nov 2018 13:12:21 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:23:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Nov 2018 18:23:28 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Nov 2018 18:23:43 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:23:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:25:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:294971fb9750100ae6e2fc4bc1c804489beb76ade829b844b445e8d52d095655`  
		Last Modified: Fri, 16 Nov 2018 13:24:45 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c330173756425f6ead3784ccaa76db551d23c8e0f926752f99f3b0d513c4d8`  
		Last Modified: Fri, 16 Nov 2018 18:44:43 GMT  
		Size: 6.1 MB (6116682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc8285f8f511e531d398127d65d56aa5390b4ee4544272cc99c81e1e5443c6b`  
		Last Modified: Fri, 16 Nov 2018 18:44:42 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3099d35a8868061ec3a8d315c53691a3b3bffcefd2cec44671e06fc216212802`  
		Last Modified: Fri, 16 Nov 2018 18:45:15 GMT  
		Size: 96.1 MB (96137256 bytes)  
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
$ docker pull mono@sha256:f2c6981652ff4f7766997960e8f0fc85c5822cc40bfbf52f0106255590ac20ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:d5c7c6847a6d05257c65685d7db3000d4c846c82ef3456f9805c8de91f1b93fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152978690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97877c48e77509255a20e6c5d3ddf8f4a659ab286dab40a24330cc5badb2e96b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:48:51 GMT
ADD file:8699192301f1ef9f9128a50c6fbb453bf22dd5451d822d05a034a99c53d93921 in / 
# Thu, 15 Nov 2018 22:49:00 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:36:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Nov 2018 12:36:49 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Nov 2018 12:37:09 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:37:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:38:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:75eb993070b83359932a9837d457b21b19952ea305d45fc39f2974e9c174022d`  
		Last Modified: Thu, 15 Nov 2018 23:23:05 GMT  
		Size: 39.3 MB (39339731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d507bfa5dcae3e6541cfb36d72b35eac2438a05494d477ecca26210e53b7c75f`  
		Last Modified: Fri, 16 Nov 2018 13:01:42 GMT  
		Size: 6.4 MB (6419029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f3b8567eaf49dec6ee924e08d12b313c140de9953172a71be97966c47d4ab1`  
		Last Modified: Fri, 16 Nov 2018 13:01:40 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a36ca05bb8976b367f5c7de3415457ad305f6918d6bdbd9dd48c5aa0014d614`  
		Last Modified: Fri, 16 Nov 2018 13:02:12 GMT  
		Size: 107.2 MB (107190027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v7

```console
$ docker pull mono@sha256:5662bc6c4e00b354f7307eae7c93b20d5ee3accc59411f91755abfa987db6ad4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138904189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a73b23c0d13a8734a4caaf15334a7821751aa9f8420d383e1813eb9b031a39d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:12:20 GMT
ADD file:dfb9a1807e0b40371535a3989eaae9fa4919d4de1416b9c2cdcec3adaf13e53e in / 
# Fri, 16 Nov 2018 13:12:21 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:23:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Nov 2018 18:23:28 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Nov 2018 18:23:43 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:23:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:25:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:294971fb9750100ae6e2fc4bc1c804489beb76ade829b844b445e8d52d095655`  
		Last Modified: Fri, 16 Nov 2018 13:24:45 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c330173756425f6ead3784ccaa76db551d23c8e0f926752f99f3b0d513c4d8`  
		Last Modified: Fri, 16 Nov 2018 18:44:43 GMT  
		Size: 6.1 MB (6116682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc8285f8f511e531d398127d65d56aa5390b4ee4544272cc99c81e1e5443c6b`  
		Last Modified: Fri, 16 Nov 2018 18:44:42 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3099d35a8868061ec3a8d315c53691a3b3bffcefd2cec44671e06fc216212802`  
		Last Modified: Fri, 16 Nov 2018 18:45:15 GMT  
		Size: 96.1 MB (96137256 bytes)  
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
$ docker pull mono@sha256:f2c6981652ff4f7766997960e8f0fc85c5822cc40bfbf52f0106255590ac20ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:d5c7c6847a6d05257c65685d7db3000d4c846c82ef3456f9805c8de91f1b93fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152978690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97877c48e77509255a20e6c5d3ddf8f4a659ab286dab40a24330cc5badb2e96b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:48:51 GMT
ADD file:8699192301f1ef9f9128a50c6fbb453bf22dd5451d822d05a034a99c53d93921 in / 
# Thu, 15 Nov 2018 22:49:00 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:36:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Nov 2018 12:36:49 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Nov 2018 12:37:09 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:37:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:38:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:75eb993070b83359932a9837d457b21b19952ea305d45fc39f2974e9c174022d`  
		Last Modified: Thu, 15 Nov 2018 23:23:05 GMT  
		Size: 39.3 MB (39339731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d507bfa5dcae3e6541cfb36d72b35eac2438a05494d477ecca26210e53b7c75f`  
		Last Modified: Fri, 16 Nov 2018 13:01:42 GMT  
		Size: 6.4 MB (6419029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f3b8567eaf49dec6ee924e08d12b313c140de9953172a71be97966c47d4ab1`  
		Last Modified: Fri, 16 Nov 2018 13:01:40 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a36ca05bb8976b367f5c7de3415457ad305f6918d6bdbd9dd48c5aa0014d614`  
		Last Modified: Fri, 16 Nov 2018 13:02:12 GMT  
		Size: 107.2 MB (107190027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:5662bc6c4e00b354f7307eae7c93b20d5ee3accc59411f91755abfa987db6ad4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138904189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a73b23c0d13a8734a4caaf15334a7821751aa9f8420d383e1813eb9b031a39d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:12:20 GMT
ADD file:dfb9a1807e0b40371535a3989eaae9fa4919d4de1416b9c2cdcec3adaf13e53e in / 
# Fri, 16 Nov 2018 13:12:21 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:23:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Nov 2018 18:23:28 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Nov 2018 18:23:43 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:23:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:25:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:294971fb9750100ae6e2fc4bc1c804489beb76ade829b844b445e8d52d095655`  
		Last Modified: Fri, 16 Nov 2018 13:24:45 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c330173756425f6ead3784ccaa76db551d23c8e0f926752f99f3b0d513c4d8`  
		Last Modified: Fri, 16 Nov 2018 18:44:43 GMT  
		Size: 6.1 MB (6116682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc8285f8f511e531d398127d65d56aa5390b4ee4544272cc99c81e1e5443c6b`  
		Last Modified: Fri, 16 Nov 2018 18:44:42 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3099d35a8868061ec3a8d315c53691a3b3bffcefd2cec44671e06fc216212802`  
		Last Modified: Fri, 16 Nov 2018 18:45:15 GMT  
		Size: 96.1 MB (96137256 bytes)  
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
$ docker pull mono@sha256:f2c6981652ff4f7766997960e8f0fc85c5822cc40bfbf52f0106255590ac20ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:d5c7c6847a6d05257c65685d7db3000d4c846c82ef3456f9805c8de91f1b93fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152978690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97877c48e77509255a20e6c5d3ddf8f4a659ab286dab40a24330cc5badb2e96b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:48:51 GMT
ADD file:8699192301f1ef9f9128a50c6fbb453bf22dd5451d822d05a034a99c53d93921 in / 
# Thu, 15 Nov 2018 22:49:00 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:36:49 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Nov 2018 12:36:49 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Nov 2018 12:37:09 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 12:37:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:38:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:75eb993070b83359932a9837d457b21b19952ea305d45fc39f2974e9c174022d`  
		Last Modified: Thu, 15 Nov 2018 23:23:05 GMT  
		Size: 39.3 MB (39339731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d507bfa5dcae3e6541cfb36d72b35eac2438a05494d477ecca26210e53b7c75f`  
		Last Modified: Fri, 16 Nov 2018 13:01:42 GMT  
		Size: 6.4 MB (6419029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f3b8567eaf49dec6ee924e08d12b313c140de9953172a71be97966c47d4ab1`  
		Last Modified: Fri, 16 Nov 2018 13:01:40 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a36ca05bb8976b367f5c7de3415457ad305f6918d6bdbd9dd48c5aa0014d614`  
		Last Modified: Fri, 16 Nov 2018 13:02:12 GMT  
		Size: 107.2 MB (107190027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v7

```console
$ docker pull mono@sha256:5662bc6c4e00b354f7307eae7c93b20d5ee3accc59411f91755abfa987db6ad4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138904189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a73b23c0d13a8734a4caaf15334a7821751aa9f8420d383e1813eb9b031a39d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:12:20 GMT
ADD file:dfb9a1807e0b40371535a3989eaae9fa4919d4de1416b9c2cdcec3adaf13e53e in / 
# Fri, 16 Nov 2018 13:12:21 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:23:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 16 Nov 2018 18:23:28 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 16 Nov 2018 18:23:43 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:23:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:25:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:294971fb9750100ae6e2fc4bc1c804489beb76ade829b844b445e8d52d095655`  
		Last Modified: Fri, 16 Nov 2018 13:24:45 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c330173756425f6ead3784ccaa76db551d23c8e0f926752f99f3b0d513c4d8`  
		Last Modified: Fri, 16 Nov 2018 18:44:43 GMT  
		Size: 6.1 MB (6116682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc8285f8f511e531d398127d65d56aa5390b4ee4544272cc99c81e1e5443c6b`  
		Last Modified: Fri, 16 Nov 2018 18:44:42 GMT  
		Size: 29.9 KB (29908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3099d35a8868061ec3a8d315c53691a3b3bffcefd2cec44671e06fc216212802`  
		Last Modified: Fri, 16 Nov 2018 18:45:15 GMT  
		Size: 96.1 MB (96137256 bytes)  
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
$ docker pull mono@sha256:dbca1757266c101aecec6ad9733220edcac5abbda88a1402be8d755008bac7ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:44bffb14276369e2290c5bc4d99733b80e56a06f9047ac900ff7d12a11f2e51a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196339047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b7ab8e1f34281028c5cf58c7c006935431e84b1cab59c78af6782c5b8d1d8f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:32:48 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 12:32:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 12:47:42 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21db4f64f28e4458186ecaba06081df3de2dbce22d8d31f19bc3df91e9a049a4`  
		Last Modified: Fri, 16 Nov 2018 12:58:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258fa5c4bee5a3730322cc3b7c05efdebeed4a65922a219663dc850ed762048`  
		Last Modified: Fri, 16 Nov 2018 12:58:32 GMT  
		Size: 45.5 MB (45510995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03be3c09505a8c475f094d634c7a11cd563fab37b088b94f5f0fb47ab0f709`  
		Last Modified: Fri, 16 Nov 2018 13:04:32 GMT  
		Size: 120.7 MB (120696530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:32b3d0c725037704bc79b89f198e6fdb5bd1b468642be290c7f861311d03c31c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169181005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:987526c78e462520dcc562b047c562069aee620ce97a46c8e6e963b5a8970187`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:11 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 18:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:20:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 18:36:35 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd624cae61f754a18ff3bd7a066c4eef6e3b2753a995ef6aea9ad4cb9c2e0e6`  
		Last Modified: Fri, 16 Nov 2018 18:42:53 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba4e3a0ac42aa1480b8f630076c035c07352760eaf7458229a47c84c705ae22`  
		Last Modified: Fri, 16 Nov 2018 18:43:04 GMT  
		Size: 37.5 MB (37524312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf85d9ecb676fc38927b17c4d7ef03c1ce4a9960c7f458a4d112d8ab327ae66`  
		Last Modified: Fri, 16 Nov 2018 18:46:36 GMT  
		Size: 105.4 MB (105356910 bytes)  
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
$ docker pull mono@sha256:908863ac71cbf5520f372764c5eb27b6d34e173c6e9b33da5160f9745dcd34ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14` - linux; amd64

```console
$ docker pull mono@sha256:f287ba3d6ca5fadff5aa3f3cca0f42f92dd66c2dac116025ca8023df23d44e5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199319896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66435f3b5846ea16a83978862b1c06e26dc0e34818cedbd5a5633c4aafa5bee8`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:34:56 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 12:35:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:36:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 12:57:33 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a00ecca3072bdf054a8fc36a2a81e35f64c2f0255ef482357d35fd6a6cda787`  
		Last Modified: Fri, 16 Nov 2018 13:00:21 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60781f44b1fa600223f6a31977a854b3eaf724c4f55ac1b603d08d5752889db`  
		Last Modified: Fri, 16 Nov 2018 13:00:36 GMT  
		Size: 50.6 MB (50622198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c94a4d4ded4688127c8b2abcdf91dd7beb81e8b0d0f5cf436e3c778d7eb3d88`  
		Last Modified: Fri, 16 Nov 2018 13:07:00 GMT  
		Size: 118.6 MB (118566177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14` - linux; arm variant v7

```console
$ docker pull mono@sha256:cd2fab17c09078465d83a18b1ffe66e2aa0299424d6a61edb1642bca323047fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176981343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722599a49273ada611f882838823c53d8ee8c0c59a352a8f15f36fe41f8abc50`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:21:25 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 18:21:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:23:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 18:42:18 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e2390d4dcd3635a1a4e1a65d465132ad1c258b6332c11f6362cdd9d47ccb41`  
		Last Modified: Fri, 16 Nov 2018 18:43:56 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636c305ee9777e3ec8b08ba14fdae3b7072d522d4137c20dae03086a70d8aca3`  
		Last Modified: Fri, 16 Nov 2018 18:44:07 GMT  
		Size: 41.8 MB (41842689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09d6f60adabae7d85157554b8888b910cd7ac55941ce846e7a05e62f0c68d7c`  
		Last Modified: Fri, 16 Nov 2018 18:48:00 GMT  
		Size: 108.8 MB (108838870 bytes)  
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
$ docker pull mono@sha256:908863ac71cbf5520f372764c5eb27b6d34e173c6e9b33da5160f9745dcd34ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0` - linux; amd64

```console
$ docker pull mono@sha256:f287ba3d6ca5fadff5aa3f3cca0f42f92dd66c2dac116025ca8023df23d44e5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199319896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66435f3b5846ea16a83978862b1c06e26dc0e34818cedbd5a5633c4aafa5bee8`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:34:56 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 12:35:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:36:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 12:57:33 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a00ecca3072bdf054a8fc36a2a81e35f64c2f0255ef482357d35fd6a6cda787`  
		Last Modified: Fri, 16 Nov 2018 13:00:21 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60781f44b1fa600223f6a31977a854b3eaf724c4f55ac1b603d08d5752889db`  
		Last Modified: Fri, 16 Nov 2018 13:00:36 GMT  
		Size: 50.6 MB (50622198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c94a4d4ded4688127c8b2abcdf91dd7beb81e8b0d0f5cf436e3c778d7eb3d88`  
		Last Modified: Fri, 16 Nov 2018 13:07:00 GMT  
		Size: 118.6 MB (118566177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:cd2fab17c09078465d83a18b1ffe66e2aa0299424d6a61edb1642bca323047fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176981343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722599a49273ada611f882838823c53d8ee8c0c59a352a8f15f36fe41f8abc50`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:21:25 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 18:21:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:23:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 18:42:18 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e2390d4dcd3635a1a4e1a65d465132ad1c258b6332c11f6362cdd9d47ccb41`  
		Last Modified: Fri, 16 Nov 2018 18:43:56 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636c305ee9777e3ec8b08ba14fdae3b7072d522d4137c20dae03086a70d8aca3`  
		Last Modified: Fri, 16 Nov 2018 18:44:07 GMT  
		Size: 41.8 MB (41842689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09d6f60adabae7d85157554b8888b910cd7ac55941ce846e7a05e62f0c68d7c`  
		Last Modified: Fri, 16 Nov 2018 18:48:00 GMT  
		Size: 108.8 MB (108838870 bytes)  
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
$ docker pull mono@sha256:908863ac71cbf5520f372764c5eb27b6d34e173c6e9b33da5160f9745dcd34ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0.177` - linux; amd64

```console
$ docker pull mono@sha256:f287ba3d6ca5fadff5aa3f3cca0f42f92dd66c2dac116025ca8023df23d44e5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199319896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66435f3b5846ea16a83978862b1c06e26dc0e34818cedbd5a5633c4aafa5bee8`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:34:56 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 12:35:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:36:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 12:57:33 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a00ecca3072bdf054a8fc36a2a81e35f64c2f0255ef482357d35fd6a6cda787`  
		Last Modified: Fri, 16 Nov 2018 13:00:21 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60781f44b1fa600223f6a31977a854b3eaf724c4f55ac1b603d08d5752889db`  
		Last Modified: Fri, 16 Nov 2018 13:00:36 GMT  
		Size: 50.6 MB (50622198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c94a4d4ded4688127c8b2abcdf91dd7beb81e8b0d0f5cf436e3c778d7eb3d88`  
		Last Modified: Fri, 16 Nov 2018 13:07:00 GMT  
		Size: 118.6 MB (118566177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177` - linux; arm variant v7

```console
$ docker pull mono@sha256:cd2fab17c09078465d83a18b1ffe66e2aa0299424d6a61edb1642bca323047fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176981343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722599a49273ada611f882838823c53d8ee8c0c59a352a8f15f36fe41f8abc50`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:21:25 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 18:21:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:23:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 18:42:18 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e2390d4dcd3635a1a4e1a65d465132ad1c258b6332c11f6362cdd9d47ccb41`  
		Last Modified: Fri, 16 Nov 2018 18:43:56 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636c305ee9777e3ec8b08ba14fdae3b7072d522d4137c20dae03086a70d8aca3`  
		Last Modified: Fri, 16 Nov 2018 18:44:07 GMT  
		Size: 41.8 MB (41842689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09d6f60adabae7d85157554b8888b910cd7ac55941ce846e7a05e62f0c68d7c`  
		Last Modified: Fri, 16 Nov 2018 18:48:00 GMT  
		Size: 108.8 MB (108838870 bytes)  
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
$ docker pull mono@sha256:b46d0122bc18c3a305ae3f92e5a722c2336ce06e6e919307b5c6c088b4199a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0.177-slim` - linux; amd64

```console
$ docker pull mono@sha256:e8eeeeac87debc3df23fa57b622aba320aaf2cbcf79e3e8455185711da230d49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80753719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8874e09f4d05aedace81053696455bf69c3e09863dd0397219ab9299aad03274`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:34:56 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 12:35:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:36:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a00ecca3072bdf054a8fc36a2a81e35f64c2f0255ef482357d35fd6a6cda787`  
		Last Modified: Fri, 16 Nov 2018 13:00:21 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60781f44b1fa600223f6a31977a854b3eaf724c4f55ac1b603d08d5752889db`  
		Last Modified: Fri, 16 Nov 2018 13:00:36 GMT  
		Size: 50.6 MB (50622198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0.177-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:a7ee02c526d2fcf40935ecbe3e6b69faa3119cdb82fc6ac9c7d1f89fc581474c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68142473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adcd59d204fc65f7b51660ca4cb9e4624b720c73941025ce81f2859ff55d3bf5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:21:25 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 18:21:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:23:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e2390d4dcd3635a1a4e1a65d465132ad1c258b6332c11f6362cdd9d47ccb41`  
		Last Modified: Fri, 16 Nov 2018 18:43:56 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636c305ee9777e3ec8b08ba14fdae3b7072d522d4137c20dae03086a70d8aca3`  
		Last Modified: Fri, 16 Nov 2018 18:44:07 GMT  
		Size: 41.8 MB (41842689 bytes)  
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
$ docker pull mono@sha256:b46d0122bc18c3a305ae3f92e5a722c2336ce06e6e919307b5c6c088b4199a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:e8eeeeac87debc3df23fa57b622aba320aaf2cbcf79e3e8455185711da230d49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80753719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8874e09f4d05aedace81053696455bf69c3e09863dd0397219ab9299aad03274`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:34:56 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 12:35:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:36:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a00ecca3072bdf054a8fc36a2a81e35f64c2f0255ef482357d35fd6a6cda787`  
		Last Modified: Fri, 16 Nov 2018 13:00:21 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60781f44b1fa600223f6a31977a854b3eaf724c4f55ac1b603d08d5752889db`  
		Last Modified: Fri, 16 Nov 2018 13:00:36 GMT  
		Size: 50.6 MB (50622198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:a7ee02c526d2fcf40935ecbe3e6b69faa3119cdb82fc6ac9c7d1f89fc581474c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68142473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adcd59d204fc65f7b51660ca4cb9e4624b720c73941025ce81f2859ff55d3bf5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:21:25 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 18:21:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:23:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e2390d4dcd3635a1a4e1a65d465132ad1c258b6332c11f6362cdd9d47ccb41`  
		Last Modified: Fri, 16 Nov 2018 18:43:56 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636c305ee9777e3ec8b08ba14fdae3b7072d522d4137c20dae03086a70d8aca3`  
		Last Modified: Fri, 16 Nov 2018 18:44:07 GMT  
		Size: 41.8 MB (41842689 bytes)  
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
$ docker pull mono@sha256:b46d0122bc18c3a305ae3f92e5a722c2336ce06e6e919307b5c6c088b4199a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.14-slim` - linux; amd64

```console
$ docker pull mono@sha256:e8eeeeac87debc3df23fa57b622aba320aaf2cbcf79e3e8455185711da230d49
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80753719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8874e09f4d05aedace81053696455bf69c3e09863dd0397219ab9299aad03274`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:34:56 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 12:35:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:36:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a00ecca3072bdf054a8fc36a2a81e35f64c2f0255ef482357d35fd6a6cda787`  
		Last Modified: Fri, 16 Nov 2018 13:00:21 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60781f44b1fa600223f6a31977a854b3eaf724c4f55ac1b603d08d5752889db`  
		Last Modified: Fri, 16 Nov 2018 13:00:36 GMT  
		Size: 50.6 MB (50622198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.14-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:a7ee02c526d2fcf40935ecbe3e6b69faa3119cdb82fc6ac9c7d1f89fc581474c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68142473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adcd59d204fc65f7b51660ca4cb9e4624b720c73941025ce81f2859ff55d3bf5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:21:25 GMT
ENV MONO_VERSION=5.14.0.177
# Fri, 16 Nov 2018 18:21:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:23:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e2390d4dcd3635a1a4e1a65d465132ad1c258b6332c11f6362cdd9d47ccb41`  
		Last Modified: Fri, 16 Nov 2018 18:43:56 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636c305ee9777e3ec8b08ba14fdae3b7072d522d4137c20dae03086a70d8aca3`  
		Last Modified: Fri, 16 Nov 2018 18:44:07 GMT  
		Size: 41.8 MB (41842689 bytes)  
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
$ docker pull mono@sha256:dbca1757266c101aecec6ad9733220edcac5abbda88a1402be8d755008bac7ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16` - linux; amd64

```console
$ docker pull mono@sha256:44bffb14276369e2290c5bc4d99733b80e56a06f9047ac900ff7d12a11f2e51a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196339047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b7ab8e1f34281028c5cf58c7c006935431e84b1cab59c78af6782c5b8d1d8f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:32:48 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 12:32:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 12:47:42 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21db4f64f28e4458186ecaba06081df3de2dbce22d8d31f19bc3df91e9a049a4`  
		Last Modified: Fri, 16 Nov 2018 12:58:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258fa5c4bee5a3730322cc3b7c05efdebeed4a65922a219663dc850ed762048`  
		Last Modified: Fri, 16 Nov 2018 12:58:32 GMT  
		Size: 45.5 MB (45510995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03be3c09505a8c475f094d634c7a11cd563fab37b088b94f5f0fb47ab0f709`  
		Last Modified: Fri, 16 Nov 2018 13:04:32 GMT  
		Size: 120.7 MB (120696530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v7

```console
$ docker pull mono@sha256:32b3d0c725037704bc79b89f198e6fdb5bd1b468642be290c7f861311d03c31c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169181005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:987526c78e462520dcc562b047c562069aee620ce97a46c8e6e963b5a8970187`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:11 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 18:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:20:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 18:36:35 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd624cae61f754a18ff3bd7a066c4eef6e3b2753a995ef6aea9ad4cb9c2e0e6`  
		Last Modified: Fri, 16 Nov 2018 18:42:53 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba4e3a0ac42aa1480b8f630076c035c07352760eaf7458229a47c84c705ae22`  
		Last Modified: Fri, 16 Nov 2018 18:43:04 GMT  
		Size: 37.5 MB (37524312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf85d9ecb676fc38927b17c4d7ef03c1ce4a9960c7f458a4d112d8ab327ae66`  
		Last Modified: Fri, 16 Nov 2018 18:46:36 GMT  
		Size: 105.4 MB (105356910 bytes)  
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
$ docker pull mono@sha256:dbca1757266c101aecec6ad9733220edcac5abbda88a1402be8d755008bac7ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0` - linux; amd64

```console
$ docker pull mono@sha256:44bffb14276369e2290c5bc4d99733b80e56a06f9047ac900ff7d12a11f2e51a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196339047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b7ab8e1f34281028c5cf58c7c006935431e84b1cab59c78af6782c5b8d1d8f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:32:48 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 12:32:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 12:47:42 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21db4f64f28e4458186ecaba06081df3de2dbce22d8d31f19bc3df91e9a049a4`  
		Last Modified: Fri, 16 Nov 2018 12:58:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258fa5c4bee5a3730322cc3b7c05efdebeed4a65922a219663dc850ed762048`  
		Last Modified: Fri, 16 Nov 2018 12:58:32 GMT  
		Size: 45.5 MB (45510995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03be3c09505a8c475f094d634c7a11cd563fab37b088b94f5f0fb47ab0f709`  
		Last Modified: Fri, 16 Nov 2018 13:04:32 GMT  
		Size: 120.7 MB (120696530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:32b3d0c725037704bc79b89f198e6fdb5bd1b468642be290c7f861311d03c31c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169181005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:987526c78e462520dcc562b047c562069aee620ce97a46c8e6e963b5a8970187`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:11 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 18:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:20:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 18:36:35 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd624cae61f754a18ff3bd7a066c4eef6e3b2753a995ef6aea9ad4cb9c2e0e6`  
		Last Modified: Fri, 16 Nov 2018 18:42:53 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba4e3a0ac42aa1480b8f630076c035c07352760eaf7458229a47c84c705ae22`  
		Last Modified: Fri, 16 Nov 2018 18:43:04 GMT  
		Size: 37.5 MB (37524312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf85d9ecb676fc38927b17c4d7ef03c1ce4a9960c7f458a4d112d8ab327ae66`  
		Last Modified: Fri, 16 Nov 2018 18:46:36 GMT  
		Size: 105.4 MB (105356910 bytes)  
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
$ docker pull mono@sha256:dbca1757266c101aecec6ad9733220edcac5abbda88a1402be8d755008bac7ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0.179` - linux; amd64

```console
$ docker pull mono@sha256:44bffb14276369e2290c5bc4d99733b80e56a06f9047ac900ff7d12a11f2e51a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196339047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b7ab8e1f34281028c5cf58c7c006935431e84b1cab59c78af6782c5b8d1d8f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:32:48 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 12:32:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 12:47:42 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21db4f64f28e4458186ecaba06081df3de2dbce22d8d31f19bc3df91e9a049a4`  
		Last Modified: Fri, 16 Nov 2018 12:58:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258fa5c4bee5a3730322cc3b7c05efdebeed4a65922a219663dc850ed762048`  
		Last Modified: Fri, 16 Nov 2018 12:58:32 GMT  
		Size: 45.5 MB (45510995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03be3c09505a8c475f094d634c7a11cd563fab37b088b94f5f0fb47ab0f709`  
		Last Modified: Fri, 16 Nov 2018 13:04:32 GMT  
		Size: 120.7 MB (120696530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.179` - linux; arm variant v7

```console
$ docker pull mono@sha256:32b3d0c725037704bc79b89f198e6fdb5bd1b468642be290c7f861311d03c31c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169181005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:987526c78e462520dcc562b047c562069aee620ce97a46c8e6e963b5a8970187`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:11 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 18:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:20:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 18:36:35 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd624cae61f754a18ff3bd7a066c4eef6e3b2753a995ef6aea9ad4cb9c2e0e6`  
		Last Modified: Fri, 16 Nov 2018 18:42:53 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba4e3a0ac42aa1480b8f630076c035c07352760eaf7458229a47c84c705ae22`  
		Last Modified: Fri, 16 Nov 2018 18:43:04 GMT  
		Size: 37.5 MB (37524312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf85d9ecb676fc38927b17c4d7ef03c1ce4a9960c7f458a4d112d8ab327ae66`  
		Last Modified: Fri, 16 Nov 2018 18:46:36 GMT  
		Size: 105.4 MB (105356910 bytes)  
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
$ docker pull mono@sha256:51261b5a72f960d6b7349e74c386db2061909c8c3c6aecc1b8e32ce66513ce51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0.179-slim` - linux; amd64

```console
$ docker pull mono@sha256:036ae967ccc6a2dcf297890e0f80cde95474ed697bca50d69d2c33828c1a5eca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75642517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304daaefe9ea822745b64c75d117b8ef40b5567c267e2e0a5f4fc48bf182c807`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:32:48 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 12:32:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21db4f64f28e4458186ecaba06081df3de2dbce22d8d31f19bc3df91e9a049a4`  
		Last Modified: Fri, 16 Nov 2018 12:58:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258fa5c4bee5a3730322cc3b7c05efdebeed4a65922a219663dc850ed762048`  
		Last Modified: Fri, 16 Nov 2018 12:58:32 GMT  
		Size: 45.5 MB (45510995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.179-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:0d22ae29c08b268e9afad756e70b27f5d35eaa75ab26d88c1d2b8c93abfcce1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63824095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84df48f306771eac660d9ba5df0cfb3a30ea7f65b2d5491735ff49f7018a475`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:11 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 18:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:20:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd624cae61f754a18ff3bd7a066c4eef6e3b2753a995ef6aea9ad4cb9c2e0e6`  
		Last Modified: Fri, 16 Nov 2018 18:42:53 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba4e3a0ac42aa1480b8f630076c035c07352760eaf7458229a47c84c705ae22`  
		Last Modified: Fri, 16 Nov 2018 18:43:04 GMT  
		Size: 37.5 MB (37524312 bytes)  
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
$ docker pull mono@sha256:51261b5a72f960d6b7349e74c386db2061909c8c3c6aecc1b8e32ce66513ce51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:036ae967ccc6a2dcf297890e0f80cde95474ed697bca50d69d2c33828c1a5eca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75642517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304daaefe9ea822745b64c75d117b8ef40b5567c267e2e0a5f4fc48bf182c807`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:32:48 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 12:32:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21db4f64f28e4458186ecaba06081df3de2dbce22d8d31f19bc3df91e9a049a4`  
		Last Modified: Fri, 16 Nov 2018 12:58:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258fa5c4bee5a3730322cc3b7c05efdebeed4a65922a219663dc850ed762048`  
		Last Modified: Fri, 16 Nov 2018 12:58:32 GMT  
		Size: 45.5 MB (45510995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:0d22ae29c08b268e9afad756e70b27f5d35eaa75ab26d88c1d2b8c93abfcce1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63824095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84df48f306771eac660d9ba5df0cfb3a30ea7f65b2d5491735ff49f7018a475`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:11 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 18:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:20:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd624cae61f754a18ff3bd7a066c4eef6e3b2753a995ef6aea9ad4cb9c2e0e6`  
		Last Modified: Fri, 16 Nov 2018 18:42:53 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba4e3a0ac42aa1480b8f630076c035c07352760eaf7458229a47c84c705ae22`  
		Last Modified: Fri, 16 Nov 2018 18:43:04 GMT  
		Size: 37.5 MB (37524312 bytes)  
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
$ docker pull mono@sha256:51261b5a72f960d6b7349e74c386db2061909c8c3c6aecc1b8e32ce66513ce51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5.16-slim` - linux; amd64

```console
$ docker pull mono@sha256:036ae967ccc6a2dcf297890e0f80cde95474ed697bca50d69d2c33828c1a5eca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75642517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304daaefe9ea822745b64c75d117b8ef40b5567c267e2e0a5f4fc48bf182c807`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:32:48 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 12:32:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21db4f64f28e4458186ecaba06081df3de2dbce22d8d31f19bc3df91e9a049a4`  
		Last Modified: Fri, 16 Nov 2018 12:58:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258fa5c4bee5a3730322cc3b7c05efdebeed4a65922a219663dc850ed762048`  
		Last Modified: Fri, 16 Nov 2018 12:58:32 GMT  
		Size: 45.5 MB (45510995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:0d22ae29c08b268e9afad756e70b27f5d35eaa75ab26d88c1d2b8c93abfcce1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63824095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84df48f306771eac660d9ba5df0cfb3a30ea7f65b2d5491735ff49f7018a475`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:11 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 18:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:20:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd624cae61f754a18ff3bd7a066c4eef6e3b2753a995ef6aea9ad4cb9c2e0e6`  
		Last Modified: Fri, 16 Nov 2018 18:42:53 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba4e3a0ac42aa1480b8f630076c035c07352760eaf7458229a47c84c705ae22`  
		Last Modified: Fri, 16 Nov 2018 18:43:04 GMT  
		Size: 37.5 MB (37524312 bytes)  
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
$ docker pull mono@sha256:51261b5a72f960d6b7349e74c386db2061909c8c3c6aecc1b8e32ce66513ce51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:036ae967ccc6a2dcf297890e0f80cde95474ed697bca50d69d2c33828c1a5eca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75642517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304daaefe9ea822745b64c75d117b8ef40b5567c267e2e0a5f4fc48bf182c807`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:32:48 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 12:32:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21db4f64f28e4458186ecaba06081df3de2dbce22d8d31f19bc3df91e9a049a4`  
		Last Modified: Fri, 16 Nov 2018 12:58:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258fa5c4bee5a3730322cc3b7c05efdebeed4a65922a219663dc850ed762048`  
		Last Modified: Fri, 16 Nov 2018 12:58:32 GMT  
		Size: 45.5 MB (45510995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:0d22ae29c08b268e9afad756e70b27f5d35eaa75ab26d88c1d2b8c93abfcce1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63824095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84df48f306771eac660d9ba5df0cfb3a30ea7f65b2d5491735ff49f7018a475`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:11 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 18:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:20:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd624cae61f754a18ff3bd7a066c4eef6e3b2753a995ef6aea9ad4cb9c2e0e6`  
		Last Modified: Fri, 16 Nov 2018 18:42:53 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba4e3a0ac42aa1480b8f630076c035c07352760eaf7458229a47c84c705ae22`  
		Last Modified: Fri, 16 Nov 2018 18:43:04 GMT  
		Size: 37.5 MB (37524312 bytes)  
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
$ docker pull mono@sha256:dbca1757266c101aecec6ad9733220edcac5abbda88a1402be8d755008bac7ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:44bffb14276369e2290c5bc4d99733b80e56a06f9047ac900ff7d12a11f2e51a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196339047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b7ab8e1f34281028c5cf58c7c006935431e84b1cab59c78af6782c5b8d1d8f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:32:48 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 12:32:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 12:47:42 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21db4f64f28e4458186ecaba06081df3de2dbce22d8d31f19bc3df91e9a049a4`  
		Last Modified: Fri, 16 Nov 2018 12:58:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258fa5c4bee5a3730322cc3b7c05efdebeed4a65922a219663dc850ed762048`  
		Last Modified: Fri, 16 Nov 2018 12:58:32 GMT  
		Size: 45.5 MB (45510995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03be3c09505a8c475f094d634c7a11cd563fab37b088b94f5f0fb47ab0f709`  
		Last Modified: Fri, 16 Nov 2018 13:04:32 GMT  
		Size: 120.7 MB (120696530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:32b3d0c725037704bc79b89f198e6fdb5bd1b468642be290c7f861311d03c31c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169181005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:987526c78e462520dcc562b047c562069aee620ce97a46c8e6e963b5a8970187`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:11 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 18:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:20:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 16 Nov 2018 18:36:35 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd624cae61f754a18ff3bd7a066c4eef6e3b2753a995ef6aea9ad4cb9c2e0e6`  
		Last Modified: Fri, 16 Nov 2018 18:42:53 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba4e3a0ac42aa1480b8f630076c035c07352760eaf7458229a47c84c705ae22`  
		Last Modified: Fri, 16 Nov 2018 18:43:04 GMT  
		Size: 37.5 MB (37524312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf85d9ecb676fc38927b17c4d7ef03c1ce4a9960c7f458a4d112d8ab327ae66`  
		Last Modified: Fri, 16 Nov 2018 18:46:36 GMT  
		Size: 105.4 MB (105356910 bytes)  
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
$ docker pull mono@sha256:51261b5a72f960d6b7349e74c386db2061909c8c3c6aecc1b8e32ce66513ce51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:036ae967ccc6a2dcf297890e0f80cde95474ed697bca50d69d2c33828c1a5eca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75642517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304daaefe9ea822745b64c75d117b8ef40b5567c267e2e0a5f4fc48bf182c807`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:32:48 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 12:32:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 12:34:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21db4f64f28e4458186ecaba06081df3de2dbce22d8d31f19bc3df91e9a049a4`  
		Last Modified: Fri, 16 Nov 2018 12:58:17 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258fa5c4bee5a3730322cc3b7c05efdebeed4a65922a219663dc850ed762048`  
		Last Modified: Fri, 16 Nov 2018 12:58:32 GMT  
		Size: 45.5 MB (45510995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:0d22ae29c08b268e9afad756e70b27f5d35eaa75ab26d88c1d2b8c93abfcce1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63824095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84df48f306771eac660d9ba5df0cfb3a30ea7f65b2d5491735ff49f7018a475`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:19:11 GMT
ENV MONO_VERSION=5.16.0.179
# Fri, 16 Nov 2018 18:19:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 16 Nov 2018 18:20:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd624cae61f754a18ff3bd7a066c4eef6e3b2753a995ef6aea9ad4cb9c2e0e6`  
		Last Modified: Fri, 16 Nov 2018 18:42:53 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba4e3a0ac42aa1480b8f630076c035c07352760eaf7458229a47c84c705ae22`  
		Last Modified: Fri, 16 Nov 2018 18:43:04 GMT  
		Size: 37.5 MB (37524312 bytes)  
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

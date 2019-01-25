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
$ docker pull mono@sha256:c280daba08520c2592f3fe78df94ff37dcd705b8af141c0b0a9fa1cd661414bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:0c3827205989dca07ee1d4270da4053bed414a0c4e8c37ad925b674a7ddc1315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12527a986dfcd61f06ab8f57e760637264d8d6f947bdeb440d4d04029e41918`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:32:58 GMT
ADD file:ec03145d2cf8c637e8733ce03701058ddfe1076a93bef99b70b01962b089cdd0 in / 
# Tue, 22 Jan 2019 19:32:58 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:37:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 22 Jan 2019 20:37:44 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 22 Jan 2019 20:37:53 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:37:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 22 Jan 2019 20:38:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8f07b832660bdbddf1cb2b72bf063629d3fe541abfe3fb0d89248c478acdb242`  
		Last Modified: Tue, 22 Jan 2019 19:38:04 GMT  
		Size: 39.3 MB (39339901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6d735451be2ffa234fc409d7f013fce069de6186ddbe0c2b5d6eac00877c86`  
		Last Modified: Tue, 22 Jan 2019 20:59:28 GMT  
		Size: 6.4 MB (6419026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1f7ea2611d3a9eccc80f9336e811a3acc211e89bbe00e5e590e04e204d7f0c`  
		Last Modified: Tue, 22 Jan 2019 20:59:27 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e735ff6c4a227db8abe9b75f00d4414082ba3e244faa3321af421cb4b6d86e4c`  
		Last Modified: Tue, 22 Jan 2019 20:59:56 GMT  
		Size: 107.2 MB (107180300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v5

```console
$ docker pull mono@sha256:c995e85d35ad88d5b84778a2744d8ffa34e67839878cd8ca9aceb04038ac34c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b0398c2c3246ad0af4f65c67676185164d61254883d31b9859e4f1d04db3cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:57:04 GMT
ADD file:5db8265128cc6f9de34a940ba6318ea3567aae52b29fe6c0c5941ed6e43adfd1 in / 
# Wed, 23 Jan 2019 09:57:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:28:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 10:28:22 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 10:28:49 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:28:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 10:30:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b9282fffe21aff109811dbcca73fb778b30eaac4a389b4cfbfe8c02b1ac5202d`  
		Last Modified: Wed, 23 Jan 2019 10:03:42 GMT  
		Size: 38.0 MB (37992343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5b268440fe862aeb7db8ea44013a7ca0d47394a44f4ce85b430b0e40d8799e`  
		Last Modified: Wed, 23 Jan 2019 10:45:52 GMT  
		Size: 6.3 MB (6264688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f088de9259bfd645c2f9e87bff9d165e0efb2ba802e5cbd08d49c036dcc304b`  
		Last Modified: Wed, 23 Jan 2019 10:45:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b47145f3dec7b89b7f09d8079fb5183366b923a9ab002792c94b7e004b9cea`  
		Last Modified: Wed, 23 Jan 2019 10:46:28 GMT  
		Size: 97.1 MB (97061689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v7

```console
$ docker pull mono@sha256:407c51f06bc5d1ba7265eef9363efc6166f034162ebefd8877102e6750db7eff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc369fa072e294db3f0754eb334bcde66c9b98b46bece4ca24313b6d5b119d2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:07:15 GMT
ADD file:7d9aad6f799a97cd501266efa4ab42054317783776b828b81c34db3db1e5e1bb in / 
# Wed, 23 Jan 2019 13:07:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:48:20 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 13:48:21 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 13:48:43 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:48:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 13:50:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c65553b75dbe6d4ce3a95ea4c52c0cfe2e8c6ef00067b6527b4efece00329f55`  
		Last Modified: Wed, 23 Jan 2019 13:13:43 GMT  
		Size: 36.6 MB (36620004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912a1d025139fde1031dabe1a0e60ae682f31fae9612a6e3297ac779e0530b6e`  
		Last Modified: Wed, 23 Jan 2019 14:04:30 GMT  
		Size: 6.1 MB (6116758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c22eacad5f027173b6b712e0eea9210b2a64eb912cd25c27e7f79d89654f751`  
		Last Modified: Wed, 23 Jan 2019 14:04:28 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8949afe01ed424fd805c888e3c0343217118c204a99c11e96bacf332bf46e9`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 96.1 MB (96121732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; 386

```console
$ docker pull mono@sha256:616c3d5886b1a22451e0a6a9e8eda61afe076a2114981cecd13ba3167a2decd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d47095e2689594016ee42b5167ca7cba77c5abe26ecfc2c98427bf3a46afbe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:56:51 GMT
ADD file:6fb64a330e16c04281ff0d182cd3a933035277c01665b4dd09df1edb0e717c6f in / 
# Wed, 23 Jan 2019 11:56:52 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:42:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 17:42:15 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 17:42:26 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:42:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 17:43:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ee259baed8684a3f7be46aeb2b4e464f70718300b1769fd30c56196bc0ce3050`  
		Last Modified: Wed, 23 Jan 2019 12:04:09 GMT  
		Size: 40.5 MB (40533275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4346edec7d9ac5827901274ca389636a665c70d064abb76a6270514eb08bfeed`  
		Last Modified: Wed, 23 Jan 2019 17:48:16 GMT  
		Size: 6.4 MB (6406238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e11005da9368e09db74ba7d19ff656a581b9d514e63c578178bfec298de3822`  
		Last Modified: Wed, 23 Jan 2019 17:48:15 GMT  
		Size: 29.9 KB (29909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce12a1b89493413a065f7f396e43a6d654e087c60f8074bdce0eb28257340a90`  
		Last Modified: Wed, 23 Jan 2019 17:48:42 GMT  
		Size: 106.0 MB (105992367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:c280daba08520c2592f3fe78df94ff37dcd705b8af141c0b0a9fa1cd661414bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:0c3827205989dca07ee1d4270da4053bed414a0c4e8c37ad925b674a7ddc1315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12527a986dfcd61f06ab8f57e760637264d8d6f947bdeb440d4d04029e41918`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:32:58 GMT
ADD file:ec03145d2cf8c637e8733ce03701058ddfe1076a93bef99b70b01962b089cdd0 in / 
# Tue, 22 Jan 2019 19:32:58 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:37:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 22 Jan 2019 20:37:44 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 22 Jan 2019 20:37:53 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:37:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 22 Jan 2019 20:38:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8f07b832660bdbddf1cb2b72bf063629d3fe541abfe3fb0d89248c478acdb242`  
		Last Modified: Tue, 22 Jan 2019 19:38:04 GMT  
		Size: 39.3 MB (39339901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6d735451be2ffa234fc409d7f013fce069de6186ddbe0c2b5d6eac00877c86`  
		Last Modified: Tue, 22 Jan 2019 20:59:28 GMT  
		Size: 6.4 MB (6419026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1f7ea2611d3a9eccc80f9336e811a3acc211e89bbe00e5e590e04e204d7f0c`  
		Last Modified: Tue, 22 Jan 2019 20:59:27 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e735ff6c4a227db8abe9b75f00d4414082ba3e244faa3321af421cb4b6d86e4c`  
		Last Modified: Tue, 22 Jan 2019 20:59:56 GMT  
		Size: 107.2 MB (107180300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v5

```console
$ docker pull mono@sha256:c995e85d35ad88d5b84778a2744d8ffa34e67839878cd8ca9aceb04038ac34c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b0398c2c3246ad0af4f65c67676185164d61254883d31b9859e4f1d04db3cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:57:04 GMT
ADD file:5db8265128cc6f9de34a940ba6318ea3567aae52b29fe6c0c5941ed6e43adfd1 in / 
# Wed, 23 Jan 2019 09:57:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:28:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 10:28:22 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 10:28:49 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:28:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 10:30:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b9282fffe21aff109811dbcca73fb778b30eaac4a389b4cfbfe8c02b1ac5202d`  
		Last Modified: Wed, 23 Jan 2019 10:03:42 GMT  
		Size: 38.0 MB (37992343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5b268440fe862aeb7db8ea44013a7ca0d47394a44f4ce85b430b0e40d8799e`  
		Last Modified: Wed, 23 Jan 2019 10:45:52 GMT  
		Size: 6.3 MB (6264688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f088de9259bfd645c2f9e87bff9d165e0efb2ba802e5cbd08d49c036dcc304b`  
		Last Modified: Wed, 23 Jan 2019 10:45:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b47145f3dec7b89b7f09d8079fb5183366b923a9ab002792c94b7e004b9cea`  
		Last Modified: Wed, 23 Jan 2019 10:46:28 GMT  
		Size: 97.1 MB (97061689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v7

```console
$ docker pull mono@sha256:407c51f06bc5d1ba7265eef9363efc6166f034162ebefd8877102e6750db7eff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc369fa072e294db3f0754eb334bcde66c9b98b46bece4ca24313b6d5b119d2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:07:15 GMT
ADD file:7d9aad6f799a97cd501266efa4ab42054317783776b828b81c34db3db1e5e1bb in / 
# Wed, 23 Jan 2019 13:07:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:48:20 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 13:48:21 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 13:48:43 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:48:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 13:50:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c65553b75dbe6d4ce3a95ea4c52c0cfe2e8c6ef00067b6527b4efece00329f55`  
		Last Modified: Wed, 23 Jan 2019 13:13:43 GMT  
		Size: 36.6 MB (36620004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912a1d025139fde1031dabe1a0e60ae682f31fae9612a6e3297ac779e0530b6e`  
		Last Modified: Wed, 23 Jan 2019 14:04:30 GMT  
		Size: 6.1 MB (6116758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c22eacad5f027173b6b712e0eea9210b2a64eb912cd25c27e7f79d89654f751`  
		Last Modified: Wed, 23 Jan 2019 14:04:28 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8949afe01ed424fd805c888e3c0343217118c204a99c11e96bacf332bf46e9`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 96.1 MB (96121732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; 386

```console
$ docker pull mono@sha256:616c3d5886b1a22451e0a6a9e8eda61afe076a2114981cecd13ba3167a2decd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d47095e2689594016ee42b5167ca7cba77c5abe26ecfc2c98427bf3a46afbe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:56:51 GMT
ADD file:6fb64a330e16c04281ff0d182cd3a933035277c01665b4dd09df1edb0e717c6f in / 
# Wed, 23 Jan 2019 11:56:52 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:42:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 17:42:15 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 17:42:26 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:42:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 17:43:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ee259baed8684a3f7be46aeb2b4e464f70718300b1769fd30c56196bc0ce3050`  
		Last Modified: Wed, 23 Jan 2019 12:04:09 GMT  
		Size: 40.5 MB (40533275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4346edec7d9ac5827901274ca389636a665c70d064abb76a6270514eb08bfeed`  
		Last Modified: Wed, 23 Jan 2019 17:48:16 GMT  
		Size: 6.4 MB (6406238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e11005da9368e09db74ba7d19ff656a581b9d514e63c578178bfec298de3822`  
		Last Modified: Wed, 23 Jan 2019 17:48:15 GMT  
		Size: 29.9 KB (29909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce12a1b89493413a065f7f396e43a6d654e087c60f8074bdce0eb28257340a90`  
		Last Modified: Wed, 23 Jan 2019 17:48:42 GMT  
		Size: 106.0 MB (105992367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:c280daba08520c2592f3fe78df94ff37dcd705b8af141c0b0a9fa1cd661414bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:0c3827205989dca07ee1d4270da4053bed414a0c4e8c37ad925b674a7ddc1315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12527a986dfcd61f06ab8f57e760637264d8d6f947bdeb440d4d04029e41918`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:32:58 GMT
ADD file:ec03145d2cf8c637e8733ce03701058ddfe1076a93bef99b70b01962b089cdd0 in / 
# Tue, 22 Jan 2019 19:32:58 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:37:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 22 Jan 2019 20:37:44 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 22 Jan 2019 20:37:53 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:37:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 22 Jan 2019 20:38:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8f07b832660bdbddf1cb2b72bf063629d3fe541abfe3fb0d89248c478acdb242`  
		Last Modified: Tue, 22 Jan 2019 19:38:04 GMT  
		Size: 39.3 MB (39339901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6d735451be2ffa234fc409d7f013fce069de6186ddbe0c2b5d6eac00877c86`  
		Last Modified: Tue, 22 Jan 2019 20:59:28 GMT  
		Size: 6.4 MB (6419026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1f7ea2611d3a9eccc80f9336e811a3acc211e89bbe00e5e590e04e204d7f0c`  
		Last Modified: Tue, 22 Jan 2019 20:59:27 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e735ff6c4a227db8abe9b75f00d4414082ba3e244faa3321af421cb4b6d86e4c`  
		Last Modified: Tue, 22 Jan 2019 20:59:56 GMT  
		Size: 107.2 MB (107180300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v5

```console
$ docker pull mono@sha256:c995e85d35ad88d5b84778a2744d8ffa34e67839878cd8ca9aceb04038ac34c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b0398c2c3246ad0af4f65c67676185164d61254883d31b9859e4f1d04db3cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:57:04 GMT
ADD file:5db8265128cc6f9de34a940ba6318ea3567aae52b29fe6c0c5941ed6e43adfd1 in / 
# Wed, 23 Jan 2019 09:57:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:28:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 10:28:22 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 10:28:49 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:28:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 10:30:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b9282fffe21aff109811dbcca73fb778b30eaac4a389b4cfbfe8c02b1ac5202d`  
		Last Modified: Wed, 23 Jan 2019 10:03:42 GMT  
		Size: 38.0 MB (37992343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5b268440fe862aeb7db8ea44013a7ca0d47394a44f4ce85b430b0e40d8799e`  
		Last Modified: Wed, 23 Jan 2019 10:45:52 GMT  
		Size: 6.3 MB (6264688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f088de9259bfd645c2f9e87bff9d165e0efb2ba802e5cbd08d49c036dcc304b`  
		Last Modified: Wed, 23 Jan 2019 10:45:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b47145f3dec7b89b7f09d8079fb5183366b923a9ab002792c94b7e004b9cea`  
		Last Modified: Wed, 23 Jan 2019 10:46:28 GMT  
		Size: 97.1 MB (97061689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:407c51f06bc5d1ba7265eef9363efc6166f034162ebefd8877102e6750db7eff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc369fa072e294db3f0754eb334bcde66c9b98b46bece4ca24313b6d5b119d2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:07:15 GMT
ADD file:7d9aad6f799a97cd501266efa4ab42054317783776b828b81c34db3db1e5e1bb in / 
# Wed, 23 Jan 2019 13:07:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:48:20 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 13:48:21 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 13:48:43 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:48:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 13:50:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c65553b75dbe6d4ce3a95ea4c52c0cfe2e8c6ef00067b6527b4efece00329f55`  
		Last Modified: Wed, 23 Jan 2019 13:13:43 GMT  
		Size: 36.6 MB (36620004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912a1d025139fde1031dabe1a0e60ae682f31fae9612a6e3297ac779e0530b6e`  
		Last Modified: Wed, 23 Jan 2019 14:04:30 GMT  
		Size: 6.1 MB (6116758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c22eacad5f027173b6b712e0eea9210b2a64eb912cd25c27e7f79d89654f751`  
		Last Modified: Wed, 23 Jan 2019 14:04:28 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8949afe01ed424fd805c888e3c0343217118c204a99c11e96bacf332bf46e9`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 96.1 MB (96121732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; 386

```console
$ docker pull mono@sha256:616c3d5886b1a22451e0a6a9e8eda61afe076a2114981cecd13ba3167a2decd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d47095e2689594016ee42b5167ca7cba77c5abe26ecfc2c98427bf3a46afbe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:56:51 GMT
ADD file:6fb64a330e16c04281ff0d182cd3a933035277c01665b4dd09df1edb0e717c6f in / 
# Wed, 23 Jan 2019 11:56:52 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:42:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 17:42:15 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 17:42:26 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:42:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 17:43:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ee259baed8684a3f7be46aeb2b4e464f70718300b1769fd30c56196bc0ce3050`  
		Last Modified: Wed, 23 Jan 2019 12:04:09 GMT  
		Size: 40.5 MB (40533275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4346edec7d9ac5827901274ca389636a665c70d064abb76a6270514eb08bfeed`  
		Last Modified: Wed, 23 Jan 2019 17:48:16 GMT  
		Size: 6.4 MB (6406238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e11005da9368e09db74ba7d19ff656a581b9d514e63c578178bfec298de3822`  
		Last Modified: Wed, 23 Jan 2019 17:48:15 GMT  
		Size: 29.9 KB (29909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce12a1b89493413a065f7f396e43a6d654e087c60f8074bdce0eb28257340a90`  
		Last Modified: Wed, 23 Jan 2019 17:48:42 GMT  
		Size: 106.0 MB (105992367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:c280daba08520c2592f3fe78df94ff37dcd705b8af141c0b0a9fa1cd661414bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:0c3827205989dca07ee1d4270da4053bed414a0c4e8c37ad925b674a7ddc1315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12527a986dfcd61f06ab8f57e760637264d8d6f947bdeb440d4d04029e41918`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:32:58 GMT
ADD file:ec03145d2cf8c637e8733ce03701058ddfe1076a93bef99b70b01962b089cdd0 in / 
# Tue, 22 Jan 2019 19:32:58 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:37:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 22 Jan 2019 20:37:44 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 22 Jan 2019 20:37:53 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:37:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 22 Jan 2019 20:38:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8f07b832660bdbddf1cb2b72bf063629d3fe541abfe3fb0d89248c478acdb242`  
		Last Modified: Tue, 22 Jan 2019 19:38:04 GMT  
		Size: 39.3 MB (39339901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6d735451be2ffa234fc409d7f013fce069de6186ddbe0c2b5d6eac00877c86`  
		Last Modified: Tue, 22 Jan 2019 20:59:28 GMT  
		Size: 6.4 MB (6419026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1f7ea2611d3a9eccc80f9336e811a3acc211e89bbe00e5e590e04e204d7f0c`  
		Last Modified: Tue, 22 Jan 2019 20:59:27 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e735ff6c4a227db8abe9b75f00d4414082ba3e244faa3321af421cb4b6d86e4c`  
		Last Modified: Tue, 22 Jan 2019 20:59:56 GMT  
		Size: 107.2 MB (107180300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v5

```console
$ docker pull mono@sha256:c995e85d35ad88d5b84778a2744d8ffa34e67839878cd8ca9aceb04038ac34c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b0398c2c3246ad0af4f65c67676185164d61254883d31b9859e4f1d04db3cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:57:04 GMT
ADD file:5db8265128cc6f9de34a940ba6318ea3567aae52b29fe6c0c5941ed6e43adfd1 in / 
# Wed, 23 Jan 2019 09:57:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:28:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 10:28:22 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 10:28:49 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:28:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 10:30:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:b9282fffe21aff109811dbcca73fb778b30eaac4a389b4cfbfe8c02b1ac5202d`  
		Last Modified: Wed, 23 Jan 2019 10:03:42 GMT  
		Size: 38.0 MB (37992343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5b268440fe862aeb7db8ea44013a7ca0d47394a44f4ce85b430b0e40d8799e`  
		Last Modified: Wed, 23 Jan 2019 10:45:52 GMT  
		Size: 6.3 MB (6264688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f088de9259bfd645c2f9e87bff9d165e0efb2ba802e5cbd08d49c036dcc304b`  
		Last Modified: Wed, 23 Jan 2019 10:45:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b47145f3dec7b89b7f09d8079fb5183366b923a9ab002792c94b7e004b9cea`  
		Last Modified: Wed, 23 Jan 2019 10:46:28 GMT  
		Size: 97.1 MB (97061689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v7

```console
$ docker pull mono@sha256:407c51f06bc5d1ba7265eef9363efc6166f034162ebefd8877102e6750db7eff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc369fa072e294db3f0754eb334bcde66c9b98b46bece4ca24313b6d5b119d2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:07:15 GMT
ADD file:7d9aad6f799a97cd501266efa4ab42054317783776b828b81c34db3db1e5e1bb in / 
# Wed, 23 Jan 2019 13:07:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:48:20 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 13:48:21 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 13:48:43 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:48:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 13:50:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c65553b75dbe6d4ce3a95ea4c52c0cfe2e8c6ef00067b6527b4efece00329f55`  
		Last Modified: Wed, 23 Jan 2019 13:13:43 GMT  
		Size: 36.6 MB (36620004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912a1d025139fde1031dabe1a0e60ae682f31fae9612a6e3297ac779e0530b6e`  
		Last Modified: Wed, 23 Jan 2019 14:04:30 GMT  
		Size: 6.1 MB (6116758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c22eacad5f027173b6b712e0eea9210b2a64eb912cd25c27e7f79d89654f751`  
		Last Modified: Wed, 23 Jan 2019 14:04:28 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8949afe01ed424fd805c888e3c0343217118c204a99c11e96bacf332bf46e9`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 96.1 MB (96121732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; 386

```console
$ docker pull mono@sha256:616c3d5886b1a22451e0a6a9e8eda61afe076a2114981cecd13ba3167a2decd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d47095e2689594016ee42b5167ca7cba77c5abe26ecfc2c98427bf3a46afbe`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:56:51 GMT
ADD file:6fb64a330e16c04281ff0d182cd3a933035277c01665b4dd09df1edb0e717c6f in / 
# Wed, 23 Jan 2019 11:56:52 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:42:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 23 Jan 2019 17:42:15 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 23 Jan 2019 17:42:26 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:42:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 23 Jan 2019 17:43:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ee259baed8684a3f7be46aeb2b4e464f70718300b1769fd30c56196bc0ce3050`  
		Last Modified: Wed, 23 Jan 2019 12:04:09 GMT  
		Size: 40.5 MB (40533275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4346edec7d9ac5827901274ca389636a665c70d064abb76a6270514eb08bfeed`  
		Last Modified: Wed, 23 Jan 2019 17:48:16 GMT  
		Size: 6.4 MB (6406238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e11005da9368e09db74ba7d19ff656a581b9d514e63c578178bfec298de3822`  
		Last Modified: Wed, 23 Jan 2019 17:48:15 GMT  
		Size: 29.9 KB (29909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce12a1b89493413a065f7f396e43a6d654e087c60f8074bdce0eb28257340a90`  
		Last Modified: Wed, 23 Jan 2019 17:48:42 GMT  
		Size: 106.0 MB (105992367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:1302cdabdfcad5bdb1313f1e47abea7eb90fd1589c3ac11bf8f646f64d4140ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:dfc4fd1132091749ffab7ad6a90ec09ef459844a11c219e8d1b75c12200b5ed1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223998272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac51168797db670102ae5e6840fc85c05a845341db2f002107e59951d833a857`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:35:49 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 22 Jan 2019 20:36:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:36:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 22 Jan 2019 20:51:11 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda76c4a4c729d53261e833daa12e8c36172ffb3d4ba0e9519f21c681449113`  
		Last Modified: Tue, 22 Jan 2019 20:58:41 GMT  
		Size: 244.4 KB (244430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dc12963f0b7c1268aa279543ea81fece926dd7316dc7be28cfc2ee464bb1a2`  
		Last Modified: Tue, 22 Jan 2019 20:59:00 GMT  
		Size: 61.2 MB (61150280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74c576f235a45bcf258b70d81a15a18790bcf154dd4de52b73f43ff90cd5bd4`  
		Last Modified: Tue, 22 Jan 2019 21:00:39 GMT  
		Size: 140.1 MB (140102855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v5

```console
$ docker pull mono@sha256:5bd61ad31fc82803ecb546e86b5c197d70604d9e841523459177ba63d8d965e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171271749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1110e3fa46e6bab8f886a51e167e2cdcb5616942f5b19e7683b3c370a22e4459`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 10:33:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d06888de1b3bd405015c86a54ebdb91deed28326a7c475280a37b8a7752f5`  
		Last Modified: Wed, 23 Jan 2019 10:47:25 GMT  
		Size: 125.6 MB (125571328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:4c118112e8b6a1f82a4a1d2285f2bc5f6884c4fb30dcaf697357b3ba0aedb8f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167333668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b831296ef577dc470f36967762d996737c149b141e011397416cd986c636a70`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:46:01 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 13:46:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:46:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 13:53:16 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65857bb126a32d599e8e4fd9be32a6fca0e9e41281a0a1f81e1c2d028876f44b`  
		Last Modified: Wed, 23 Jan 2019 14:03:41 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6215cb271f67dece70a24ba9fb4c97a1376e71bae64132a4569a922c2356d12c`  
		Last Modified: Wed, 23 Jan 2019 14:03:52 GMT  
		Size: 23.6 MB (23566733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9e9462aeb21d5a18a9f55be6d0354048da9b3e877b325496507287dd8796af`  
		Last Modified: Wed, 23 Jan 2019 14:06:06 GMT  
		Size: 124.2 MB (124232175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1cbdbe5721bb585925a18a2e2eed61b20c8f8b7efa18120118892c66b1de1858
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188160269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288e3199c7e2c9e118d3a3a461490e10b473d477fb9f5ba8673a1d632672589b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:36:30 GMT
ENV MONO_VERSION=5.18.0.225
# Fri, 25 Jan 2019 03:39:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:42:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 25 Jan 2019 03:57:32 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9b821b98a81087ece50fff5cbb99779f55094eb7b10f7d69231b47a005a4df`  
		Last Modified: Fri, 25 Jan 2019 04:21:15 GMT  
		Size: 244.7 KB (244667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941859599e217f451e3bd0c9d2e65f774bcf753bc97856f6f7432412026a1c05`  
		Last Modified: Fri, 25 Jan 2019 04:21:58 GMT  
		Size: 28.2 MB (28223698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7964f20edceb46b663549cd9d68fddb353d026dbe0df512aa58f336eb57d2107`  
		Last Modified: Fri, 25 Jan 2019 04:26:07 GMT  
		Size: 139.3 MB (139341724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:09f3ba6cf7c099d94085bd5c1f840441dd495ecf0e6b456411ceddec980dfead
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dc636229fb81deddf7a07a6686df9c220e86552baf3f6f022891179f7bf24e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:40:46 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 17:40:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:41:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 17:45:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f186c27a2a2ca912562d47b7d81421e305c00d4dc2ebd45d6803f4cdf3922f`  
		Last Modified: Wed, 23 Jan 2019 17:47:34 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc559f81d5dc70537221ae06b7f300036be6f0efd17a0343ed9fabbc0f12fdd7`  
		Last Modified: Wed, 23 Jan 2019 17:47:51 GMT  
		Size: 64.0 MB (63955137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba892e4637dde479ff27b7a0c721fc85f2ecc53301ef018e5f13d3f9e437ac4`  
		Last Modified: Wed, 23 Jan 2019 17:49:25 GMT  
		Size: 145.7 MB (145691580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; ppc64le

```console
$ docker pull mono@sha256:804af23691af8f5ab8fcf4e21857d9b8473a2a8c6a4cea35c3cd8d919bd535bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173624153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4415b3f85bef6a7498ba5c6a9e51353c188ce60daab6c3970d79bc6ef21db07`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:24:47 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 11:25:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:26:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 11:35:29 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cad4630b7daaa35c48dfbffb81ba87f9f5d8b282e28411c2d786003c376267`  
		Last Modified: Wed, 23 Jan 2019 11:40:56 GMT  
		Size: 244.5 KB (244484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e07b1cd8d2f00c3f7c387b7d95d22e3a964946ee7334748f37ac2f39a53f5b`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 24.6 MB (24636765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34319ac54ff78e3b8310ab081f5befc28f5fc0ceb24492bf3b1412b75d2752fb`  
		Last Modified: Wed, 23 Jan 2019 11:42:12 GMT  
		Size: 126.0 MB (125987573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16`

```console
$ docker pull mono@sha256:618d3b9d56bd6f59640a1ee5a9af3185a94bfcef416fae7158bdf99a0ddbf506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16` - linux; amd64

```console
$ docker pull mono@sha256:3f8c405f981dfc24f65d54beb3eb240b64d67a59cccb9f3d06e237544eb8bcd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205203276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5574ee864209770836f650b60c854f625cd5f50a26e880c6df88d86eda7cc29d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:36:52 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 22 Jan 2019 20:37:04 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:37:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 22 Jan 2019 20:58:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474644764f23cfa63d678630995e211cb2efc37d610155c318b112a6d0540414`  
		Last Modified: Tue, 22 Jan 2019 20:59:08 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7160ef53a9f84f5a1b861f23584caa1a7a0d0a6ea635a985c23d45c8eedd5685`  
		Last Modified: Tue, 22 Jan 2019 20:59:22 GMT  
		Size: 45.7 MB (45721352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008c92f129cca3e2050afc0d9fe37f909380a1c6c59ec05c65075dbce62a1f79`  
		Last Modified: Tue, 22 Jan 2019 21:01:15 GMT  
		Size: 136.7 MB (136736776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v5

```console
$ docker pull mono@sha256:7e923ed46b1225fb7dab4df4299c3b763d540874bf121070f57a3589560a8c74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184084803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93401163e0e571ae4badd1160feda828f5c1c134814c1102f9aa8a30e1b08399`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:27:07 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 10:27:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:28:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 10:44:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd9788e540f5d5f3820794e2bf7a5162aca03b9b4eef84fbba0f905c7dbb212`  
		Last Modified: Wed, 23 Jan 2019 10:45:29 GMT  
		Size: 244.5 KB (244479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125b0c82d49be7d2758aca94caef2e9e2c58dbf70e857a1ce4389d432d9f5387`  
		Last Modified: Wed, 23 Jan 2019 10:45:44 GMT  
		Size: 40.3 MB (40277380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89533d428393f2e0736571d13736132c9a1d0a4cdecc8c5b99190cf9710e72bb`  
		Last Modified: Wed, 23 Jan 2019 10:48:20 GMT  
		Size: 122.4 MB (122381118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v7

```console
$ docker pull mono@sha256:0fb50bb246c742ecd78a9b9340cb78d185201e803a7ec924ba9bb758b0f664da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178638266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744117abab16c28c6650343b02759ac7be1d01720fa5fe6ad8c9b79486f39ffd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:47:05 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 13:47:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 14:03:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52103c4ddf64265b087d1e47be4a763312171e3fe06d5cde3cf6f9921a10c16`  
		Last Modified: Wed, 23 Jan 2019 14:04:05 GMT  
		Size: 244.5 KB (244488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e275bc92f45472597383375ef7dfcd18a58e204704f9e764139a6939878750`  
		Last Modified: Wed, 23 Jan 2019 14:04:20 GMT  
		Size: 38.1 MB (38077282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d66dafc5bace60cf3655df583f31183dec3cf691a436899c257b21505fb8c`  
		Last Modified: Wed, 23 Jan 2019 14:07:07 GMT  
		Size: 121.0 MB (121026210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2fc5877c78fe72d412ef878c19ee9e027b4f85480b124bd971fab007c44e4811
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197398488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da450366d4c40658dde117e03f3b6d9ef725009a9dd47df540b75acbcd31ca39`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:42:56 GMT
ENV MONO_VERSION=5.16.0.220
# Fri, 25 Jan 2019 03:44:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:46:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 25 Jan 2019 04:19:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e02d2ecfdfcdf3e98640df7e1499bf7e0177fd3e92dfce1194595b7ab09c1`  
		Last Modified: Fri, 25 Jan 2019 04:22:27 GMT  
		Size: 244.5 KB (244504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b37118409ce84fa2819e2430ee5d0759cd5a6a0f82e9763755de7d49a71e5e`  
		Last Modified: Fri, 25 Jan 2019 04:22:43 GMT  
		Size: 42.3 MB (42280554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c93a207aa02ca2fbfbcf73ce060939ed193aeb94f85474755eebfedcfaf2f`  
		Last Modified: Fri, 25 Jan 2019 04:28:52 GMT  
		Size: 134.5 MB (134523250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; 386

```console
$ docker pull mono@sha256:6510ca1bf41970479be7a1522b6a863ffe956c330c377db82a2b4fb45913916b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213005742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7959216aca48d6789d317bdc1c0e867c0c13f0dd392cf1480944a38e120ae4e2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:41:30 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 17:41:40 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:42:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 17:47:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11085e0f63c415e7605f5fd17b8e7b08fe0f77f3906cebfe808bb766d1679ded`  
		Last Modified: Wed, 23 Jan 2019 17:47:57 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b852715d4656973b071c1844ec56fcb1a21e8806ef7ec85073b9f2c13ffa4be`  
		Last Modified: Wed, 23 Jan 2019 17:48:10 GMT  
		Size: 47.2 MB (47157210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20d5285649886417f406087ccae8388e0efa6b7fd07207810c2265ce7d2eec7`  
		Last Modified: Wed, 23 Jan 2019 17:50:08 GMT  
		Size: 142.5 MB (142456965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; ppc64le

```console
$ docker pull mono@sha256:627975aeee298921bfefc42ad7f4badd229d909edcfff40dfa72cb15b4a3d4b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170435820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dca0749716385e17bf523e9f471770f4741fe3c13ce4415435b76c0a643861`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:26:58 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 11:27:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:28:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 11:40:28 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192906d6c41511c0cc2a2f9e99ccf832bfe133ee11192a7dc3d8d93b95b360b9`  
		Last Modified: Wed, 23 Jan 2019 11:41:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603e2b030207490cf9a91329e2d4739e5883962de0796cfc0e92786da209ab0d`  
		Last Modified: Wed, 23 Jan 2019 11:41:29 GMT  
		Size: 24.7 MB (24656748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b095ed90b6d98c7a533107949d6bc66929715d2f1d26b05f2165a8e8ef18a2c`  
		Last Modified: Wed, 23 Jan 2019 11:42:58 GMT  
		Size: 122.8 MB (122779283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0`

```console
$ docker pull mono@sha256:618d3b9d56bd6f59640a1ee5a9af3185a94bfcef416fae7158bdf99a0ddbf506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.0` - linux; amd64

```console
$ docker pull mono@sha256:3f8c405f981dfc24f65d54beb3eb240b64d67a59cccb9f3d06e237544eb8bcd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205203276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5574ee864209770836f650b60c854f625cd5f50a26e880c6df88d86eda7cc29d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:36:52 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 22 Jan 2019 20:37:04 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:37:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 22 Jan 2019 20:58:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474644764f23cfa63d678630995e211cb2efc37d610155c318b112a6d0540414`  
		Last Modified: Tue, 22 Jan 2019 20:59:08 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7160ef53a9f84f5a1b861f23584caa1a7a0d0a6ea635a985c23d45c8eedd5685`  
		Last Modified: Tue, 22 Jan 2019 20:59:22 GMT  
		Size: 45.7 MB (45721352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008c92f129cca3e2050afc0d9fe37f909380a1c6c59ec05c65075dbce62a1f79`  
		Last Modified: Tue, 22 Jan 2019 21:01:15 GMT  
		Size: 136.7 MB (136736776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; arm variant v5

```console
$ docker pull mono@sha256:7e923ed46b1225fb7dab4df4299c3b763d540874bf121070f57a3589560a8c74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184084803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93401163e0e571ae4badd1160feda828f5c1c134814c1102f9aa8a30e1b08399`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:27:07 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 10:27:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:28:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 10:44:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd9788e540f5d5f3820794e2bf7a5162aca03b9b4eef84fbba0f905c7dbb212`  
		Last Modified: Wed, 23 Jan 2019 10:45:29 GMT  
		Size: 244.5 KB (244479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125b0c82d49be7d2758aca94caef2e9e2c58dbf70e857a1ce4389d432d9f5387`  
		Last Modified: Wed, 23 Jan 2019 10:45:44 GMT  
		Size: 40.3 MB (40277380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89533d428393f2e0736571d13736132c9a1d0a4cdecc8c5b99190cf9710e72bb`  
		Last Modified: Wed, 23 Jan 2019 10:48:20 GMT  
		Size: 122.4 MB (122381118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:0fb50bb246c742ecd78a9b9340cb78d185201e803a7ec924ba9bb758b0f664da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178638266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744117abab16c28c6650343b02759ac7be1d01720fa5fe6ad8c9b79486f39ffd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:47:05 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 13:47:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 14:03:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52103c4ddf64265b087d1e47be4a763312171e3fe06d5cde3cf6f9921a10c16`  
		Last Modified: Wed, 23 Jan 2019 14:04:05 GMT  
		Size: 244.5 KB (244488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e275bc92f45472597383375ef7dfcd18a58e204704f9e764139a6939878750`  
		Last Modified: Wed, 23 Jan 2019 14:04:20 GMT  
		Size: 38.1 MB (38077282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d66dafc5bace60cf3655df583f31183dec3cf691a436899c257b21505fb8c`  
		Last Modified: Wed, 23 Jan 2019 14:07:07 GMT  
		Size: 121.0 MB (121026210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2fc5877c78fe72d412ef878c19ee9e027b4f85480b124bd971fab007c44e4811
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197398488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da450366d4c40658dde117e03f3b6d9ef725009a9dd47df540b75acbcd31ca39`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:42:56 GMT
ENV MONO_VERSION=5.16.0.220
# Fri, 25 Jan 2019 03:44:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:46:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 25 Jan 2019 04:19:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e02d2ecfdfcdf3e98640df7e1499bf7e0177fd3e92dfce1194595b7ab09c1`  
		Last Modified: Fri, 25 Jan 2019 04:22:27 GMT  
		Size: 244.5 KB (244504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b37118409ce84fa2819e2430ee5d0759cd5a6a0f82e9763755de7d49a71e5e`  
		Last Modified: Fri, 25 Jan 2019 04:22:43 GMT  
		Size: 42.3 MB (42280554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c93a207aa02ca2fbfbcf73ce060939ed193aeb94f85474755eebfedcfaf2f`  
		Last Modified: Fri, 25 Jan 2019 04:28:52 GMT  
		Size: 134.5 MB (134523250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; 386

```console
$ docker pull mono@sha256:6510ca1bf41970479be7a1522b6a863ffe956c330c377db82a2b4fb45913916b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213005742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7959216aca48d6789d317bdc1c0e867c0c13f0dd392cf1480944a38e120ae4e2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:41:30 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 17:41:40 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:42:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 17:47:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11085e0f63c415e7605f5fd17b8e7b08fe0f77f3906cebfe808bb766d1679ded`  
		Last Modified: Wed, 23 Jan 2019 17:47:57 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b852715d4656973b071c1844ec56fcb1a21e8806ef7ec85073b9f2c13ffa4be`  
		Last Modified: Wed, 23 Jan 2019 17:48:10 GMT  
		Size: 47.2 MB (47157210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20d5285649886417f406087ccae8388e0efa6b7fd07207810c2265ce7d2eec7`  
		Last Modified: Wed, 23 Jan 2019 17:50:08 GMT  
		Size: 142.5 MB (142456965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; ppc64le

```console
$ docker pull mono@sha256:627975aeee298921bfefc42ad7f4badd229d909edcfff40dfa72cb15b4a3d4b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170435820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dca0749716385e17bf523e9f471770f4741fe3c13ce4415435b76c0a643861`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:26:58 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 11:27:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:28:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 11:40:28 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192906d6c41511c0cc2a2f9e99ccf832bfe133ee11192a7dc3d8d93b95b360b9`  
		Last Modified: Wed, 23 Jan 2019 11:41:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603e2b030207490cf9a91329e2d4739e5883962de0796cfc0e92786da209ab0d`  
		Last Modified: Wed, 23 Jan 2019 11:41:29 GMT  
		Size: 24.7 MB (24656748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b095ed90b6d98c7a533107949d6bc66929715d2f1d26b05f2165a8e8ef18a2c`  
		Last Modified: Wed, 23 Jan 2019 11:42:58 GMT  
		Size: 122.8 MB (122779283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.220`

```console
$ docker pull mono@sha256:618d3b9d56bd6f59640a1ee5a9af3185a94bfcef416fae7158bdf99a0ddbf506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.0.220` - linux; amd64

```console
$ docker pull mono@sha256:3f8c405f981dfc24f65d54beb3eb240b64d67a59cccb9f3d06e237544eb8bcd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205203276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5574ee864209770836f650b60c854f625cd5f50a26e880c6df88d86eda7cc29d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:36:52 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 22 Jan 2019 20:37:04 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:37:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 22 Jan 2019 20:58:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474644764f23cfa63d678630995e211cb2efc37d610155c318b112a6d0540414`  
		Last Modified: Tue, 22 Jan 2019 20:59:08 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7160ef53a9f84f5a1b861f23584caa1a7a0d0a6ea635a985c23d45c8eedd5685`  
		Last Modified: Tue, 22 Jan 2019 20:59:22 GMT  
		Size: 45.7 MB (45721352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008c92f129cca3e2050afc0d9fe37f909380a1c6c59ec05c65075dbce62a1f79`  
		Last Modified: Tue, 22 Jan 2019 21:01:15 GMT  
		Size: 136.7 MB (136736776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; arm variant v5

```console
$ docker pull mono@sha256:7e923ed46b1225fb7dab4df4299c3b763d540874bf121070f57a3589560a8c74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184084803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93401163e0e571ae4badd1160feda828f5c1c134814c1102f9aa8a30e1b08399`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:27:07 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 10:27:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:28:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 10:44:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd9788e540f5d5f3820794e2bf7a5162aca03b9b4eef84fbba0f905c7dbb212`  
		Last Modified: Wed, 23 Jan 2019 10:45:29 GMT  
		Size: 244.5 KB (244479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125b0c82d49be7d2758aca94caef2e9e2c58dbf70e857a1ce4389d432d9f5387`  
		Last Modified: Wed, 23 Jan 2019 10:45:44 GMT  
		Size: 40.3 MB (40277380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89533d428393f2e0736571d13736132c9a1d0a4cdecc8c5b99190cf9710e72bb`  
		Last Modified: Wed, 23 Jan 2019 10:48:20 GMT  
		Size: 122.4 MB (122381118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; arm variant v7

```console
$ docker pull mono@sha256:0fb50bb246c742ecd78a9b9340cb78d185201e803a7ec924ba9bb758b0f664da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178638266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744117abab16c28c6650343b02759ac7be1d01720fa5fe6ad8c9b79486f39ffd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:47:05 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 13:47:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 14:03:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52103c4ddf64265b087d1e47be4a763312171e3fe06d5cde3cf6f9921a10c16`  
		Last Modified: Wed, 23 Jan 2019 14:04:05 GMT  
		Size: 244.5 KB (244488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e275bc92f45472597383375ef7dfcd18a58e204704f9e764139a6939878750`  
		Last Modified: Wed, 23 Jan 2019 14:04:20 GMT  
		Size: 38.1 MB (38077282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d66dafc5bace60cf3655df583f31183dec3cf691a436899c257b21505fb8c`  
		Last Modified: Wed, 23 Jan 2019 14:07:07 GMT  
		Size: 121.0 MB (121026210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2fc5877c78fe72d412ef878c19ee9e027b4f85480b124bd971fab007c44e4811
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197398488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da450366d4c40658dde117e03f3b6d9ef725009a9dd47df540b75acbcd31ca39`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:42:56 GMT
ENV MONO_VERSION=5.16.0.220
# Fri, 25 Jan 2019 03:44:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:46:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 25 Jan 2019 04:19:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e02d2ecfdfcdf3e98640df7e1499bf7e0177fd3e92dfce1194595b7ab09c1`  
		Last Modified: Fri, 25 Jan 2019 04:22:27 GMT  
		Size: 244.5 KB (244504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b37118409ce84fa2819e2430ee5d0759cd5a6a0f82e9763755de7d49a71e5e`  
		Last Modified: Fri, 25 Jan 2019 04:22:43 GMT  
		Size: 42.3 MB (42280554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587c93a207aa02ca2fbfbcf73ce060939ed193aeb94f85474755eebfedcfaf2f`  
		Last Modified: Fri, 25 Jan 2019 04:28:52 GMT  
		Size: 134.5 MB (134523250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; 386

```console
$ docker pull mono@sha256:6510ca1bf41970479be7a1522b6a863ffe956c330c377db82a2b4fb45913916b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213005742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7959216aca48d6789d317bdc1c0e867c0c13f0dd392cf1480944a38e120ae4e2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:41:30 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 17:41:40 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:42:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 17:47:08 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11085e0f63c415e7605f5fd17b8e7b08fe0f77f3906cebfe808bb766d1679ded`  
		Last Modified: Wed, 23 Jan 2019 17:47:57 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b852715d4656973b071c1844ec56fcb1a21e8806ef7ec85073b9f2c13ffa4be`  
		Last Modified: Wed, 23 Jan 2019 17:48:10 GMT  
		Size: 47.2 MB (47157210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20d5285649886417f406087ccae8388e0efa6b7fd07207810c2265ce7d2eec7`  
		Last Modified: Wed, 23 Jan 2019 17:50:08 GMT  
		Size: 142.5 MB (142456965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; ppc64le

```console
$ docker pull mono@sha256:627975aeee298921bfefc42ad7f4badd229d909edcfff40dfa72cb15b4a3d4b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170435820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dca0749716385e17bf523e9f471770f4741fe3c13ce4415435b76c0a643861`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:26:58 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 11:27:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:28:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 11:40:28 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192906d6c41511c0cc2a2f9e99ccf832bfe133ee11192a7dc3d8d93b95b360b9`  
		Last Modified: Wed, 23 Jan 2019 11:41:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603e2b030207490cf9a91329e2d4739e5883962de0796cfc0e92786da209ab0d`  
		Last Modified: Wed, 23 Jan 2019 11:41:29 GMT  
		Size: 24.7 MB (24656748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b095ed90b6d98c7a533107949d6bc66929715d2f1d26b05f2165a8e8ef18a2c`  
		Last Modified: Wed, 23 Jan 2019 11:42:58 GMT  
		Size: 122.8 MB (122779283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.220-slim`

```console
$ docker pull mono@sha256:be56c7c5cd35eeb9812194407c85cb3e21921e606abddda654ce7c06cc261e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.0.220-slim` - linux; amd64

```console
$ docker pull mono@sha256:0c6874f03276bf43986577034b17d570c4505972156a186a93724f314446f4db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68466500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:580ebb01142fc076a4be790c3e9e30177f681b9bd12623e51afc276347dfedaa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:36:52 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 22 Jan 2019 20:37:04 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:37:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474644764f23cfa63d678630995e211cb2efc37d610155c318b112a6d0540414`  
		Last Modified: Tue, 22 Jan 2019 20:59:08 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7160ef53a9f84f5a1b861f23584caa1a7a0d0a6ea635a985c23d45c8eedd5685`  
		Last Modified: Tue, 22 Jan 2019 20:59:22 GMT  
		Size: 45.7 MB (45721352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:4f211fa1e2dab00695feed1f0017ad964cfc173f5bcf2599128937b2b1188670
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61703685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c1145c2a83ad32ef77e3edba18e954ce514189fbb81507fc84ab0d58601edf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:27:07 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 10:27:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:28:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd9788e540f5d5f3820794e2bf7a5162aca03b9b4eef84fbba0f905c7dbb212`  
		Last Modified: Wed, 23 Jan 2019 10:45:29 GMT  
		Size: 244.5 KB (244479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125b0c82d49be7d2758aca94caef2e9e2c58dbf70e857a1ce4389d432d9f5387`  
		Last Modified: Wed, 23 Jan 2019 10:45:44 GMT  
		Size: 40.3 MB (40277380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:f364ab886d172987797873f0e5e11b1b25b31ff983507afcbd0291bc35490529
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57612056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3488867c6e3bdb4c51f0449fbb2ab44fd69714c32ab22a4e6d29561fd34ab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:47:05 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 13:47:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52103c4ddf64265b087d1e47be4a763312171e3fe06d5cde3cf6f9921a10c16`  
		Last Modified: Wed, 23 Jan 2019 14:04:05 GMT  
		Size: 244.5 KB (244488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e275bc92f45472597383375ef7dfcd18a58e204704f9e764139a6939878750`  
		Last Modified: Wed, 23 Jan 2019 14:04:20 GMT  
		Size: 38.1 MB (38077282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:cc6b9c564ab30ff51f7228ea2f9dc43e0fea3bbdafbe095d16fa5051fe39aed2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62875238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3f4415e3389a40af2e40fc4de7bcd0b0bb6155f59bbe10f0d7ce66a12d8570`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:42:56 GMT
ENV MONO_VERSION=5.16.0.220
# Fri, 25 Jan 2019 03:44:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:46:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e02d2ecfdfcdf3e98640df7e1499bf7e0177fd3e92dfce1194595b7ab09c1`  
		Last Modified: Fri, 25 Jan 2019 04:22:27 GMT  
		Size: 244.5 KB (244504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b37118409ce84fa2819e2430ee5d0759cd5a6a0f82e9763755de7d49a71e5e`  
		Last Modified: Fri, 25 Jan 2019 04:22:43 GMT  
		Size: 42.3 MB (42280554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; 386

```console
$ docker pull mono@sha256:e9041f922fc70f0f003d6e84ccfda8048d6f7b3b02ee7ea9a207622e0f3f5de0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70548777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7136cf3ae4df5538ac295497570f722539aa359707ab957d59455a020d6436`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:41:30 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 17:41:40 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:42:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11085e0f63c415e7605f5fd17b8e7b08fe0f77f3906cebfe808bb766d1679ded`  
		Last Modified: Wed, 23 Jan 2019 17:47:57 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b852715d4656973b071c1844ec56fcb1a21e8806ef7ec85073b9f2c13ffa4be`  
		Last Modified: Wed, 23 Jan 2019 17:48:10 GMT  
		Size: 47.2 MB (47157210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:212f032e8c35c3d483441422de48cfa223c7fda864d441783b8f25866ee11629
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47656537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f3136f93dadf35bbc5a4c07cfc98293b23cec732ac6f276fc34d6cc5d11593`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:26:58 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 11:27:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:28:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192906d6c41511c0cc2a2f9e99ccf832bfe133ee11192a7dc3d8d93b95b360b9`  
		Last Modified: Wed, 23 Jan 2019 11:41:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603e2b030207490cf9a91329e2d4739e5883962de0796cfc0e92786da209ab0d`  
		Last Modified: Wed, 23 Jan 2019 11:41:29 GMT  
		Size: 24.7 MB (24656748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0-slim`

```console
$ docker pull mono@sha256:be56c7c5cd35eeb9812194407c85cb3e21921e606abddda654ce7c06cc261e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:0c6874f03276bf43986577034b17d570c4505972156a186a93724f314446f4db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68466500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:580ebb01142fc076a4be790c3e9e30177f681b9bd12623e51afc276347dfedaa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:36:52 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 22 Jan 2019 20:37:04 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:37:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474644764f23cfa63d678630995e211cb2efc37d610155c318b112a6d0540414`  
		Last Modified: Tue, 22 Jan 2019 20:59:08 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7160ef53a9f84f5a1b861f23584caa1a7a0d0a6ea635a985c23d45c8eedd5685`  
		Last Modified: Tue, 22 Jan 2019 20:59:22 GMT  
		Size: 45.7 MB (45721352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:4f211fa1e2dab00695feed1f0017ad964cfc173f5bcf2599128937b2b1188670
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61703685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c1145c2a83ad32ef77e3edba18e954ce514189fbb81507fc84ab0d58601edf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:27:07 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 10:27:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:28:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd9788e540f5d5f3820794e2bf7a5162aca03b9b4eef84fbba0f905c7dbb212`  
		Last Modified: Wed, 23 Jan 2019 10:45:29 GMT  
		Size: 244.5 KB (244479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125b0c82d49be7d2758aca94caef2e9e2c58dbf70e857a1ce4389d432d9f5387`  
		Last Modified: Wed, 23 Jan 2019 10:45:44 GMT  
		Size: 40.3 MB (40277380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:f364ab886d172987797873f0e5e11b1b25b31ff983507afcbd0291bc35490529
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57612056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3488867c6e3bdb4c51f0449fbb2ab44fd69714c32ab22a4e6d29561fd34ab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:47:05 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 13:47:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52103c4ddf64265b087d1e47be4a763312171e3fe06d5cde3cf6f9921a10c16`  
		Last Modified: Wed, 23 Jan 2019 14:04:05 GMT  
		Size: 244.5 KB (244488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e275bc92f45472597383375ef7dfcd18a58e204704f9e764139a6939878750`  
		Last Modified: Wed, 23 Jan 2019 14:04:20 GMT  
		Size: 38.1 MB (38077282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:cc6b9c564ab30ff51f7228ea2f9dc43e0fea3bbdafbe095d16fa5051fe39aed2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62875238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3f4415e3389a40af2e40fc4de7bcd0b0bb6155f59bbe10f0d7ce66a12d8570`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:42:56 GMT
ENV MONO_VERSION=5.16.0.220
# Fri, 25 Jan 2019 03:44:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:46:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e02d2ecfdfcdf3e98640df7e1499bf7e0177fd3e92dfce1194595b7ab09c1`  
		Last Modified: Fri, 25 Jan 2019 04:22:27 GMT  
		Size: 244.5 KB (244504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b37118409ce84fa2819e2430ee5d0759cd5a6a0f82e9763755de7d49a71e5e`  
		Last Modified: Fri, 25 Jan 2019 04:22:43 GMT  
		Size: 42.3 MB (42280554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; 386

```console
$ docker pull mono@sha256:e9041f922fc70f0f003d6e84ccfda8048d6f7b3b02ee7ea9a207622e0f3f5de0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70548777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7136cf3ae4df5538ac295497570f722539aa359707ab957d59455a020d6436`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:41:30 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 17:41:40 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:42:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11085e0f63c415e7605f5fd17b8e7b08fe0f77f3906cebfe808bb766d1679ded`  
		Last Modified: Wed, 23 Jan 2019 17:47:57 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b852715d4656973b071c1844ec56fcb1a21e8806ef7ec85073b9f2c13ffa4be`  
		Last Modified: Wed, 23 Jan 2019 17:48:10 GMT  
		Size: 47.2 MB (47157210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:212f032e8c35c3d483441422de48cfa223c7fda864d441783b8f25866ee11629
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47656537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f3136f93dadf35bbc5a4c07cfc98293b23cec732ac6f276fc34d6cc5d11593`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:26:58 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 11:27:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:28:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192906d6c41511c0cc2a2f9e99ccf832bfe133ee11192a7dc3d8d93b95b360b9`  
		Last Modified: Wed, 23 Jan 2019 11:41:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603e2b030207490cf9a91329e2d4739e5883962de0796cfc0e92786da209ab0d`  
		Last Modified: Wed, 23 Jan 2019 11:41:29 GMT  
		Size: 24.7 MB (24656748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16-slim`

```console
$ docker pull mono@sha256:be56c7c5cd35eeb9812194407c85cb3e21921e606abddda654ce7c06cc261e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.16-slim` - linux; amd64

```console
$ docker pull mono@sha256:0c6874f03276bf43986577034b17d570c4505972156a186a93724f314446f4db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68466500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:580ebb01142fc076a4be790c3e9e30177f681b9bd12623e51afc276347dfedaa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:36:52 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 22 Jan 2019 20:37:04 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:37:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474644764f23cfa63d678630995e211cb2efc37d610155c318b112a6d0540414`  
		Last Modified: Tue, 22 Jan 2019 20:59:08 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7160ef53a9f84f5a1b861f23584caa1a7a0d0a6ea635a985c23d45c8eedd5685`  
		Last Modified: Tue, 22 Jan 2019 20:59:22 GMT  
		Size: 45.7 MB (45721352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:4f211fa1e2dab00695feed1f0017ad964cfc173f5bcf2599128937b2b1188670
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61703685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c1145c2a83ad32ef77e3edba18e954ce514189fbb81507fc84ab0d58601edf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:27:07 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 10:27:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:28:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd9788e540f5d5f3820794e2bf7a5162aca03b9b4eef84fbba0f905c7dbb212`  
		Last Modified: Wed, 23 Jan 2019 10:45:29 GMT  
		Size: 244.5 KB (244479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125b0c82d49be7d2758aca94caef2e9e2c58dbf70e857a1ce4389d432d9f5387`  
		Last Modified: Wed, 23 Jan 2019 10:45:44 GMT  
		Size: 40.3 MB (40277380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:f364ab886d172987797873f0e5e11b1b25b31ff983507afcbd0291bc35490529
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57612056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b3488867c6e3bdb4c51f0449fbb2ab44fd69714c32ab22a4e6d29561fd34ab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:47:05 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 13:47:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52103c4ddf64265b087d1e47be4a763312171e3fe06d5cde3cf6f9921a10c16`  
		Last Modified: Wed, 23 Jan 2019 14:04:05 GMT  
		Size: 244.5 KB (244488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e275bc92f45472597383375ef7dfcd18a58e204704f9e764139a6939878750`  
		Last Modified: Wed, 23 Jan 2019 14:04:20 GMT  
		Size: 38.1 MB (38077282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:cc6b9c564ab30ff51f7228ea2f9dc43e0fea3bbdafbe095d16fa5051fe39aed2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62875238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3f4415e3389a40af2e40fc4de7bcd0b0bb6155f59bbe10f0d7ce66a12d8570`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:42:56 GMT
ENV MONO_VERSION=5.16.0.220
# Fri, 25 Jan 2019 03:44:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:46:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e02d2ecfdfcdf3e98640df7e1499bf7e0177fd3e92dfce1194595b7ab09c1`  
		Last Modified: Fri, 25 Jan 2019 04:22:27 GMT  
		Size: 244.5 KB (244504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b37118409ce84fa2819e2430ee5d0759cd5a6a0f82e9763755de7d49a71e5e`  
		Last Modified: Fri, 25 Jan 2019 04:22:43 GMT  
		Size: 42.3 MB (42280554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; 386

```console
$ docker pull mono@sha256:e9041f922fc70f0f003d6e84ccfda8048d6f7b3b02ee7ea9a207622e0f3f5de0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70548777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7136cf3ae4df5538ac295497570f722539aa359707ab957d59455a020d6436`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:41:30 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 17:41:40 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:42:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11085e0f63c415e7605f5fd17b8e7b08fe0f77f3906cebfe808bb766d1679ded`  
		Last Modified: Wed, 23 Jan 2019 17:47:57 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b852715d4656973b071c1844ec56fcb1a21e8806ef7ec85073b9f2c13ffa4be`  
		Last Modified: Wed, 23 Jan 2019 17:48:10 GMT  
		Size: 47.2 MB (47157210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:212f032e8c35c3d483441422de48cfa223c7fda864d441783b8f25866ee11629
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47656537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21f3136f93dadf35bbc5a4c07cfc98293b23cec732ac6f276fc34d6cc5d11593`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:26:58 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 23 Jan 2019 11:27:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:28:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192906d6c41511c0cc2a2f9e99ccf832bfe133ee11192a7dc3d8d93b95b360b9`  
		Last Modified: Wed, 23 Jan 2019 11:41:21 GMT  
		Size: 244.5 KB (244458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603e2b030207490cf9a91329e2d4739e5883962de0796cfc0e92786da209ab0d`  
		Last Modified: Wed, 23 Jan 2019 11:41:29 GMT  
		Size: 24.7 MB (24656748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18`

```console
$ docker pull mono@sha256:1302cdabdfcad5bdb1313f1e47abea7eb90fd1589c3ac11bf8f646f64d4140ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18` - linux; amd64

```console
$ docker pull mono@sha256:dfc4fd1132091749ffab7ad6a90ec09ef459844a11c219e8d1b75c12200b5ed1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223998272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac51168797db670102ae5e6840fc85c05a845341db2f002107e59951d833a857`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:35:49 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 22 Jan 2019 20:36:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:36:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 22 Jan 2019 20:51:11 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda76c4a4c729d53261e833daa12e8c36172ffb3d4ba0e9519f21c681449113`  
		Last Modified: Tue, 22 Jan 2019 20:58:41 GMT  
		Size: 244.4 KB (244430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dc12963f0b7c1268aa279543ea81fece926dd7316dc7be28cfc2ee464bb1a2`  
		Last Modified: Tue, 22 Jan 2019 20:59:00 GMT  
		Size: 61.2 MB (61150280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74c576f235a45bcf258b70d81a15a18790bcf154dd4de52b73f43ff90cd5bd4`  
		Last Modified: Tue, 22 Jan 2019 21:00:39 GMT  
		Size: 140.1 MB (140102855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm variant v5

```console
$ docker pull mono@sha256:5bd61ad31fc82803ecb546e86b5c197d70604d9e841523459177ba63d8d965e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171271749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1110e3fa46e6bab8f886a51e167e2cdcb5616942f5b19e7683b3c370a22e4459`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 10:33:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d06888de1b3bd405015c86a54ebdb91deed28326a7c475280a37b8a7752f5`  
		Last Modified: Wed, 23 Jan 2019 10:47:25 GMT  
		Size: 125.6 MB (125571328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm variant v7

```console
$ docker pull mono@sha256:4c118112e8b6a1f82a4a1d2285f2bc5f6884c4fb30dcaf697357b3ba0aedb8f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167333668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b831296ef577dc470f36967762d996737c149b141e011397416cd986c636a70`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:46:01 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 13:46:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:46:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 13:53:16 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65857bb126a32d599e8e4fd9be32a6fca0e9e41281a0a1f81e1c2d028876f44b`  
		Last Modified: Wed, 23 Jan 2019 14:03:41 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6215cb271f67dece70a24ba9fb4c97a1376e71bae64132a4569a922c2356d12c`  
		Last Modified: Wed, 23 Jan 2019 14:03:52 GMT  
		Size: 23.6 MB (23566733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9e9462aeb21d5a18a9f55be6d0354048da9b3e877b325496507287dd8796af`  
		Last Modified: Wed, 23 Jan 2019 14:06:06 GMT  
		Size: 124.2 MB (124232175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1cbdbe5721bb585925a18a2e2eed61b20c8f8b7efa18120118892c66b1de1858
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188160269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288e3199c7e2c9e118d3a3a461490e10b473d477fb9f5ba8673a1d632672589b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:36:30 GMT
ENV MONO_VERSION=5.18.0.225
# Fri, 25 Jan 2019 03:39:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:42:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 25 Jan 2019 03:57:32 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9b821b98a81087ece50fff5cbb99779f55094eb7b10f7d69231b47a005a4df`  
		Last Modified: Fri, 25 Jan 2019 04:21:15 GMT  
		Size: 244.7 KB (244667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941859599e217f451e3bd0c9d2e65f774bcf753bc97856f6f7432412026a1c05`  
		Last Modified: Fri, 25 Jan 2019 04:21:58 GMT  
		Size: 28.2 MB (28223698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7964f20edceb46b663549cd9d68fddb353d026dbe0df512aa58f336eb57d2107`  
		Last Modified: Fri, 25 Jan 2019 04:26:07 GMT  
		Size: 139.3 MB (139341724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; 386

```console
$ docker pull mono@sha256:09f3ba6cf7c099d94085bd5c1f840441dd495ecf0e6b456411ceddec980dfead
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dc636229fb81deddf7a07a6686df9c220e86552baf3f6f022891179f7bf24e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:40:46 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 17:40:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:41:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 17:45:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f186c27a2a2ca912562d47b7d81421e305c00d4dc2ebd45d6803f4cdf3922f`  
		Last Modified: Wed, 23 Jan 2019 17:47:34 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc559f81d5dc70537221ae06b7f300036be6f0efd17a0343ed9fabbc0f12fdd7`  
		Last Modified: Wed, 23 Jan 2019 17:47:51 GMT  
		Size: 64.0 MB (63955137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba892e4637dde479ff27b7a0c721fc85f2ecc53301ef018e5f13d3f9e437ac4`  
		Last Modified: Wed, 23 Jan 2019 17:49:25 GMT  
		Size: 145.7 MB (145691580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; ppc64le

```console
$ docker pull mono@sha256:804af23691af8f5ab8fcf4e21857d9b8473a2a8c6a4cea35c3cd8d919bd535bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173624153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4415b3f85bef6a7498ba5c6a9e51353c188ce60daab6c3970d79bc6ef21db07`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:24:47 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 11:25:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:26:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 11:35:29 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cad4630b7daaa35c48dfbffb81ba87f9f5d8b282e28411c2d786003c376267`  
		Last Modified: Wed, 23 Jan 2019 11:40:56 GMT  
		Size: 244.5 KB (244484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e07b1cd8d2f00c3f7c387b7d95d22e3a964946ee7334748f37ac2f39a53f5b`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 24.6 MB (24636765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34319ac54ff78e3b8310ab081f5befc28f5fc0ceb24492bf3b1412b75d2752fb`  
		Last Modified: Wed, 23 Jan 2019 11:42:12 GMT  
		Size: 126.0 MB (125987573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0`

```console
$ docker pull mono@sha256:1302cdabdfcad5bdb1313f1e47abea7eb90fd1589c3ac11bf8f646f64d4140ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.0` - linux; amd64

```console
$ docker pull mono@sha256:dfc4fd1132091749ffab7ad6a90ec09ef459844a11c219e8d1b75c12200b5ed1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223998272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac51168797db670102ae5e6840fc85c05a845341db2f002107e59951d833a857`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:35:49 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 22 Jan 2019 20:36:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:36:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 22 Jan 2019 20:51:11 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda76c4a4c729d53261e833daa12e8c36172ffb3d4ba0e9519f21c681449113`  
		Last Modified: Tue, 22 Jan 2019 20:58:41 GMT  
		Size: 244.4 KB (244430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dc12963f0b7c1268aa279543ea81fece926dd7316dc7be28cfc2ee464bb1a2`  
		Last Modified: Tue, 22 Jan 2019 20:59:00 GMT  
		Size: 61.2 MB (61150280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74c576f235a45bcf258b70d81a15a18790bcf154dd4de52b73f43ff90cd5bd4`  
		Last Modified: Tue, 22 Jan 2019 21:00:39 GMT  
		Size: 140.1 MB (140102855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; arm variant v5

```console
$ docker pull mono@sha256:5bd61ad31fc82803ecb546e86b5c197d70604d9e841523459177ba63d8d965e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171271749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1110e3fa46e6bab8f886a51e167e2cdcb5616942f5b19e7683b3c370a22e4459`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 10:33:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d06888de1b3bd405015c86a54ebdb91deed28326a7c475280a37b8a7752f5`  
		Last Modified: Wed, 23 Jan 2019 10:47:25 GMT  
		Size: 125.6 MB (125571328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:4c118112e8b6a1f82a4a1d2285f2bc5f6884c4fb30dcaf697357b3ba0aedb8f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167333668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b831296ef577dc470f36967762d996737c149b141e011397416cd986c636a70`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:46:01 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 13:46:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:46:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 13:53:16 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65857bb126a32d599e8e4fd9be32a6fca0e9e41281a0a1f81e1c2d028876f44b`  
		Last Modified: Wed, 23 Jan 2019 14:03:41 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6215cb271f67dece70a24ba9fb4c97a1376e71bae64132a4569a922c2356d12c`  
		Last Modified: Wed, 23 Jan 2019 14:03:52 GMT  
		Size: 23.6 MB (23566733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9e9462aeb21d5a18a9f55be6d0354048da9b3e877b325496507287dd8796af`  
		Last Modified: Wed, 23 Jan 2019 14:06:06 GMT  
		Size: 124.2 MB (124232175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1cbdbe5721bb585925a18a2e2eed61b20c8f8b7efa18120118892c66b1de1858
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188160269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288e3199c7e2c9e118d3a3a461490e10b473d477fb9f5ba8673a1d632672589b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:36:30 GMT
ENV MONO_VERSION=5.18.0.225
# Fri, 25 Jan 2019 03:39:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:42:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 25 Jan 2019 03:57:32 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9b821b98a81087ece50fff5cbb99779f55094eb7b10f7d69231b47a005a4df`  
		Last Modified: Fri, 25 Jan 2019 04:21:15 GMT  
		Size: 244.7 KB (244667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941859599e217f451e3bd0c9d2e65f774bcf753bc97856f6f7432412026a1c05`  
		Last Modified: Fri, 25 Jan 2019 04:21:58 GMT  
		Size: 28.2 MB (28223698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7964f20edceb46b663549cd9d68fddb353d026dbe0df512aa58f336eb57d2107`  
		Last Modified: Fri, 25 Jan 2019 04:26:07 GMT  
		Size: 139.3 MB (139341724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; 386

```console
$ docker pull mono@sha256:09f3ba6cf7c099d94085bd5c1f840441dd495ecf0e6b456411ceddec980dfead
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dc636229fb81deddf7a07a6686df9c220e86552baf3f6f022891179f7bf24e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:40:46 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 17:40:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:41:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 17:45:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f186c27a2a2ca912562d47b7d81421e305c00d4dc2ebd45d6803f4cdf3922f`  
		Last Modified: Wed, 23 Jan 2019 17:47:34 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc559f81d5dc70537221ae06b7f300036be6f0efd17a0343ed9fabbc0f12fdd7`  
		Last Modified: Wed, 23 Jan 2019 17:47:51 GMT  
		Size: 64.0 MB (63955137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba892e4637dde479ff27b7a0c721fc85f2ecc53301ef018e5f13d3f9e437ac4`  
		Last Modified: Wed, 23 Jan 2019 17:49:25 GMT  
		Size: 145.7 MB (145691580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; ppc64le

```console
$ docker pull mono@sha256:804af23691af8f5ab8fcf4e21857d9b8473a2a8c6a4cea35c3cd8d919bd535bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173624153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4415b3f85bef6a7498ba5c6a9e51353c188ce60daab6c3970d79bc6ef21db07`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:24:47 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 11:25:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:26:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 11:35:29 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cad4630b7daaa35c48dfbffb81ba87f9f5d8b282e28411c2d786003c376267`  
		Last Modified: Wed, 23 Jan 2019 11:40:56 GMT  
		Size: 244.5 KB (244484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e07b1cd8d2f00c3f7c387b7d95d22e3a964946ee7334748f37ac2f39a53f5b`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 24.6 MB (24636765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34319ac54ff78e3b8310ab081f5befc28f5fc0ceb24492bf3b1412b75d2752fb`  
		Last Modified: Wed, 23 Jan 2019 11:42:12 GMT  
		Size: 126.0 MB (125987573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0.225`

```console
$ docker pull mono@sha256:1302cdabdfcad5bdb1313f1e47abea7eb90fd1589c3ac11bf8f646f64d4140ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.0.225` - linux; amd64

```console
$ docker pull mono@sha256:dfc4fd1132091749ffab7ad6a90ec09ef459844a11c219e8d1b75c12200b5ed1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223998272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac51168797db670102ae5e6840fc85c05a845341db2f002107e59951d833a857`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:35:49 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 22 Jan 2019 20:36:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:36:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 22 Jan 2019 20:51:11 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda76c4a4c729d53261e833daa12e8c36172ffb3d4ba0e9519f21c681449113`  
		Last Modified: Tue, 22 Jan 2019 20:58:41 GMT  
		Size: 244.4 KB (244430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dc12963f0b7c1268aa279543ea81fece926dd7316dc7be28cfc2ee464bb1a2`  
		Last Modified: Tue, 22 Jan 2019 20:59:00 GMT  
		Size: 61.2 MB (61150280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74c576f235a45bcf258b70d81a15a18790bcf154dd4de52b73f43ff90cd5bd4`  
		Last Modified: Tue, 22 Jan 2019 21:00:39 GMT  
		Size: 140.1 MB (140102855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; arm variant v5

```console
$ docker pull mono@sha256:5bd61ad31fc82803ecb546e86b5c197d70604d9e841523459177ba63d8d965e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171271749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1110e3fa46e6bab8f886a51e167e2cdcb5616942f5b19e7683b3c370a22e4459`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 10:33:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d06888de1b3bd405015c86a54ebdb91deed28326a7c475280a37b8a7752f5`  
		Last Modified: Wed, 23 Jan 2019 10:47:25 GMT  
		Size: 125.6 MB (125571328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; arm variant v7

```console
$ docker pull mono@sha256:4c118112e8b6a1f82a4a1d2285f2bc5f6884c4fb30dcaf697357b3ba0aedb8f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167333668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b831296ef577dc470f36967762d996737c149b141e011397416cd986c636a70`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:46:01 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 13:46:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:46:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 13:53:16 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65857bb126a32d599e8e4fd9be32a6fca0e9e41281a0a1f81e1c2d028876f44b`  
		Last Modified: Wed, 23 Jan 2019 14:03:41 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6215cb271f67dece70a24ba9fb4c97a1376e71bae64132a4569a922c2356d12c`  
		Last Modified: Wed, 23 Jan 2019 14:03:52 GMT  
		Size: 23.6 MB (23566733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9e9462aeb21d5a18a9f55be6d0354048da9b3e877b325496507287dd8796af`  
		Last Modified: Wed, 23 Jan 2019 14:06:06 GMT  
		Size: 124.2 MB (124232175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1cbdbe5721bb585925a18a2e2eed61b20c8f8b7efa18120118892c66b1de1858
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188160269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288e3199c7e2c9e118d3a3a461490e10b473d477fb9f5ba8673a1d632672589b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:36:30 GMT
ENV MONO_VERSION=5.18.0.225
# Fri, 25 Jan 2019 03:39:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:42:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 25 Jan 2019 03:57:32 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9b821b98a81087ece50fff5cbb99779f55094eb7b10f7d69231b47a005a4df`  
		Last Modified: Fri, 25 Jan 2019 04:21:15 GMT  
		Size: 244.7 KB (244667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941859599e217f451e3bd0c9d2e65f774bcf753bc97856f6f7432412026a1c05`  
		Last Modified: Fri, 25 Jan 2019 04:21:58 GMT  
		Size: 28.2 MB (28223698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7964f20edceb46b663549cd9d68fddb353d026dbe0df512aa58f336eb57d2107`  
		Last Modified: Fri, 25 Jan 2019 04:26:07 GMT  
		Size: 139.3 MB (139341724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; 386

```console
$ docker pull mono@sha256:09f3ba6cf7c099d94085bd5c1f840441dd495ecf0e6b456411ceddec980dfead
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dc636229fb81deddf7a07a6686df9c220e86552baf3f6f022891179f7bf24e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:40:46 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 17:40:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:41:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 17:45:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f186c27a2a2ca912562d47b7d81421e305c00d4dc2ebd45d6803f4cdf3922f`  
		Last Modified: Wed, 23 Jan 2019 17:47:34 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc559f81d5dc70537221ae06b7f300036be6f0efd17a0343ed9fabbc0f12fdd7`  
		Last Modified: Wed, 23 Jan 2019 17:47:51 GMT  
		Size: 64.0 MB (63955137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba892e4637dde479ff27b7a0c721fc85f2ecc53301ef018e5f13d3f9e437ac4`  
		Last Modified: Wed, 23 Jan 2019 17:49:25 GMT  
		Size: 145.7 MB (145691580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; ppc64le

```console
$ docker pull mono@sha256:804af23691af8f5ab8fcf4e21857d9b8473a2a8c6a4cea35c3cd8d919bd535bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173624153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4415b3f85bef6a7498ba5c6a9e51353c188ce60daab6c3970d79bc6ef21db07`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:24:47 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 11:25:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:26:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 11:35:29 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cad4630b7daaa35c48dfbffb81ba87f9f5d8b282e28411c2d786003c376267`  
		Last Modified: Wed, 23 Jan 2019 11:40:56 GMT  
		Size: 244.5 KB (244484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e07b1cd8d2f00c3f7c387b7d95d22e3a964946ee7334748f37ac2f39a53f5b`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 24.6 MB (24636765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34319ac54ff78e3b8310ab081f5befc28f5fc0ceb24492bf3b1412b75d2752fb`  
		Last Modified: Wed, 23 Jan 2019 11:42:12 GMT  
		Size: 126.0 MB (125987573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0.225-slim`

```console
$ docker pull mono@sha256:9505ef92f290b3c55f9b72e2ad51b16198d88088ce8ec9d854e7c69ff3a0da2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.0.225-slim` - linux; amd64

```console
$ docker pull mono@sha256:49e5f075a409face37757e81a47b909554f44b2d54fcc83efa6f318ed68b2e4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83895417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d4be513cb31ba95002ab00b6153d992bf0e63add5c58b4b34d10704c2c6538`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:35:49 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 22 Jan 2019 20:36:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:36:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda76c4a4c729d53261e833daa12e8c36172ffb3d4ba0e9519f21c681449113`  
		Last Modified: Tue, 22 Jan 2019 20:58:41 GMT  
		Size: 244.4 KB (244430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dc12963f0b7c1268aa279543ea81fece926dd7316dc7be28cfc2ee464bb1a2`  
		Last Modified: Tue, 22 Jan 2019 20:59:00 GMT  
		Size: 61.2 MB (61150280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:02b08319ca7f1a3dd1011a7e67186ea4ca73f20e16126e288a5617e9e34a6c47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45700421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c749f7e3bf363ee8973fbcecf9bcba24cb4fab70d32a3e5fadce895b45ccf0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:ea442b82de82628fbe91d1baa7048c4cb84083ccb87da9a9ff2887bbb340a646
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d2adf411ca92babcc05d75baa7d39f6c614be9de3cf5e62b8bba9892764967`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:46:01 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 13:46:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:46:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65857bb126a32d599e8e4fd9be32a6fca0e9e41281a0a1f81e1c2d028876f44b`  
		Last Modified: Wed, 23 Jan 2019 14:03:41 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6215cb271f67dece70a24ba9fb4c97a1376e71bae64132a4569a922c2356d12c`  
		Last Modified: Wed, 23 Jan 2019 14:03:52 GMT  
		Size: 23.6 MB (23566733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:58bf86b5f25c877a51b0330db2c37d4e5c1fea696bb57ac4f61bcb4ab580e5ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48818545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674f142cf2fc899dfac13bdaf88a651c4d411c823d71ef439c0ba34d3f459123`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:36:30 GMT
ENV MONO_VERSION=5.18.0.225
# Fri, 25 Jan 2019 03:39:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:42:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9b821b98a81087ece50fff5cbb99779f55094eb7b10f7d69231b47a005a4df`  
		Last Modified: Fri, 25 Jan 2019 04:21:15 GMT  
		Size: 244.7 KB (244667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941859599e217f451e3bd0c9d2e65f774bcf753bc97856f6f7432412026a1c05`  
		Last Modified: Fri, 25 Jan 2019 04:21:58 GMT  
		Size: 28.2 MB (28223698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; 386

```console
$ docker pull mono@sha256:77eee9e4853c61f7dcac1634f88ac699cf72b0f066f80bbace72a5ceda8a44bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4052999e5b4e2dcb27d24e469019a6e874c6b277ccb90183157127f391bb834`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:40:46 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 17:40:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:41:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f186c27a2a2ca912562d47b7d81421e305c00d4dc2ebd45d6803f4cdf3922f`  
		Last Modified: Wed, 23 Jan 2019 17:47:34 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc559f81d5dc70537221ae06b7f300036be6f0efd17a0343ed9fabbc0f12fdd7`  
		Last Modified: Wed, 23 Jan 2019 17:47:51 GMT  
		Size: 64.0 MB (63955137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:178200818cd83bcf6a080c731d5b75b4f70f4088bca473da9c0f4b02d02b1bf9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957e0cbe6058090123bc552dcf9c4ed77eb566308cc072217181d09234f61fe8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:24:47 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 11:25:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:26:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cad4630b7daaa35c48dfbffb81ba87f9f5d8b282e28411c2d786003c376267`  
		Last Modified: Wed, 23 Jan 2019 11:40:56 GMT  
		Size: 244.5 KB (244484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e07b1cd8d2f00c3f7c387b7d95d22e3a964946ee7334748f37ac2f39a53f5b`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 24.6 MB (24636765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0-slim`

```console
$ docker pull mono@sha256:9505ef92f290b3c55f9b72e2ad51b16198d88088ce8ec9d854e7c69ff3a0da2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:49e5f075a409face37757e81a47b909554f44b2d54fcc83efa6f318ed68b2e4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83895417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d4be513cb31ba95002ab00b6153d992bf0e63add5c58b4b34d10704c2c6538`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:35:49 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 22 Jan 2019 20:36:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:36:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda76c4a4c729d53261e833daa12e8c36172ffb3d4ba0e9519f21c681449113`  
		Last Modified: Tue, 22 Jan 2019 20:58:41 GMT  
		Size: 244.4 KB (244430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dc12963f0b7c1268aa279543ea81fece926dd7316dc7be28cfc2ee464bb1a2`  
		Last Modified: Tue, 22 Jan 2019 20:59:00 GMT  
		Size: 61.2 MB (61150280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:02b08319ca7f1a3dd1011a7e67186ea4ca73f20e16126e288a5617e9e34a6c47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45700421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c749f7e3bf363ee8973fbcecf9bcba24cb4fab70d32a3e5fadce895b45ccf0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:ea442b82de82628fbe91d1baa7048c4cb84083ccb87da9a9ff2887bbb340a646
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d2adf411ca92babcc05d75baa7d39f6c614be9de3cf5e62b8bba9892764967`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:46:01 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 13:46:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:46:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65857bb126a32d599e8e4fd9be32a6fca0e9e41281a0a1f81e1c2d028876f44b`  
		Last Modified: Wed, 23 Jan 2019 14:03:41 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6215cb271f67dece70a24ba9fb4c97a1376e71bae64132a4569a922c2356d12c`  
		Last Modified: Wed, 23 Jan 2019 14:03:52 GMT  
		Size: 23.6 MB (23566733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:58bf86b5f25c877a51b0330db2c37d4e5c1fea696bb57ac4f61bcb4ab580e5ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48818545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674f142cf2fc899dfac13bdaf88a651c4d411c823d71ef439c0ba34d3f459123`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:36:30 GMT
ENV MONO_VERSION=5.18.0.225
# Fri, 25 Jan 2019 03:39:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:42:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9b821b98a81087ece50fff5cbb99779f55094eb7b10f7d69231b47a005a4df`  
		Last Modified: Fri, 25 Jan 2019 04:21:15 GMT  
		Size: 244.7 KB (244667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941859599e217f451e3bd0c9d2e65f774bcf753bc97856f6f7432412026a1c05`  
		Last Modified: Fri, 25 Jan 2019 04:21:58 GMT  
		Size: 28.2 MB (28223698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; 386

```console
$ docker pull mono@sha256:77eee9e4853c61f7dcac1634f88ac699cf72b0f066f80bbace72a5ceda8a44bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4052999e5b4e2dcb27d24e469019a6e874c6b277ccb90183157127f391bb834`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:40:46 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 17:40:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:41:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f186c27a2a2ca912562d47b7d81421e305c00d4dc2ebd45d6803f4cdf3922f`  
		Last Modified: Wed, 23 Jan 2019 17:47:34 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc559f81d5dc70537221ae06b7f300036be6f0efd17a0343ed9fabbc0f12fdd7`  
		Last Modified: Wed, 23 Jan 2019 17:47:51 GMT  
		Size: 64.0 MB (63955137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:178200818cd83bcf6a080c731d5b75b4f70f4088bca473da9c0f4b02d02b1bf9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957e0cbe6058090123bc552dcf9c4ed77eb566308cc072217181d09234f61fe8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:24:47 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 11:25:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:26:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cad4630b7daaa35c48dfbffb81ba87f9f5d8b282e28411c2d786003c376267`  
		Last Modified: Wed, 23 Jan 2019 11:40:56 GMT  
		Size: 244.5 KB (244484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e07b1cd8d2f00c3f7c387b7d95d22e3a964946ee7334748f37ac2f39a53f5b`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 24.6 MB (24636765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18-slim`

```console
$ docker pull mono@sha256:9505ef92f290b3c55f9b72e2ad51b16198d88088ce8ec9d854e7c69ff3a0da2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18-slim` - linux; amd64

```console
$ docker pull mono@sha256:49e5f075a409face37757e81a47b909554f44b2d54fcc83efa6f318ed68b2e4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83895417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d4be513cb31ba95002ab00b6153d992bf0e63add5c58b4b34d10704c2c6538`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:35:49 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 22 Jan 2019 20:36:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:36:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda76c4a4c729d53261e833daa12e8c36172ffb3d4ba0e9519f21c681449113`  
		Last Modified: Tue, 22 Jan 2019 20:58:41 GMT  
		Size: 244.4 KB (244430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dc12963f0b7c1268aa279543ea81fece926dd7316dc7be28cfc2ee464bb1a2`  
		Last Modified: Tue, 22 Jan 2019 20:59:00 GMT  
		Size: 61.2 MB (61150280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:02b08319ca7f1a3dd1011a7e67186ea4ca73f20e16126e288a5617e9e34a6c47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45700421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c749f7e3bf363ee8973fbcecf9bcba24cb4fab70d32a3e5fadce895b45ccf0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:ea442b82de82628fbe91d1baa7048c4cb84083ccb87da9a9ff2887bbb340a646
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d2adf411ca92babcc05d75baa7d39f6c614be9de3cf5e62b8bba9892764967`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:46:01 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 13:46:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:46:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65857bb126a32d599e8e4fd9be32a6fca0e9e41281a0a1f81e1c2d028876f44b`  
		Last Modified: Wed, 23 Jan 2019 14:03:41 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6215cb271f67dece70a24ba9fb4c97a1376e71bae64132a4569a922c2356d12c`  
		Last Modified: Wed, 23 Jan 2019 14:03:52 GMT  
		Size: 23.6 MB (23566733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:58bf86b5f25c877a51b0330db2c37d4e5c1fea696bb57ac4f61bcb4ab580e5ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48818545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674f142cf2fc899dfac13bdaf88a651c4d411c823d71ef439c0ba34d3f459123`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:36:30 GMT
ENV MONO_VERSION=5.18.0.225
# Fri, 25 Jan 2019 03:39:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:42:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9b821b98a81087ece50fff5cbb99779f55094eb7b10f7d69231b47a005a4df`  
		Last Modified: Fri, 25 Jan 2019 04:21:15 GMT  
		Size: 244.7 KB (244667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941859599e217f451e3bd0c9d2e65f774bcf753bc97856f6f7432412026a1c05`  
		Last Modified: Fri, 25 Jan 2019 04:21:58 GMT  
		Size: 28.2 MB (28223698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; 386

```console
$ docker pull mono@sha256:77eee9e4853c61f7dcac1634f88ac699cf72b0f066f80bbace72a5ceda8a44bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4052999e5b4e2dcb27d24e469019a6e874c6b277ccb90183157127f391bb834`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:40:46 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 17:40:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:41:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f186c27a2a2ca912562d47b7d81421e305c00d4dc2ebd45d6803f4cdf3922f`  
		Last Modified: Wed, 23 Jan 2019 17:47:34 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc559f81d5dc70537221ae06b7f300036be6f0efd17a0343ed9fabbc0f12fdd7`  
		Last Modified: Wed, 23 Jan 2019 17:47:51 GMT  
		Size: 64.0 MB (63955137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:178200818cd83bcf6a080c731d5b75b4f70f4088bca473da9c0f4b02d02b1bf9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957e0cbe6058090123bc552dcf9c4ed77eb566308cc072217181d09234f61fe8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:24:47 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 11:25:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:26:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cad4630b7daaa35c48dfbffb81ba87f9f5d8b282e28411c2d786003c376267`  
		Last Modified: Wed, 23 Jan 2019 11:40:56 GMT  
		Size: 244.5 KB (244484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e07b1cd8d2f00c3f7c387b7d95d22e3a964946ee7334748f37ac2f39a53f5b`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 24.6 MB (24636765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:9505ef92f290b3c55f9b72e2ad51b16198d88088ce8ec9d854e7c69ff3a0da2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:49e5f075a409face37757e81a47b909554f44b2d54fcc83efa6f318ed68b2e4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83895417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d4be513cb31ba95002ab00b6153d992bf0e63add5c58b4b34d10704c2c6538`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:35:49 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 22 Jan 2019 20:36:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:36:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda76c4a4c729d53261e833daa12e8c36172ffb3d4ba0e9519f21c681449113`  
		Last Modified: Tue, 22 Jan 2019 20:58:41 GMT  
		Size: 244.4 KB (244430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dc12963f0b7c1268aa279543ea81fece926dd7316dc7be28cfc2ee464bb1a2`  
		Last Modified: Tue, 22 Jan 2019 20:59:00 GMT  
		Size: 61.2 MB (61150280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:02b08319ca7f1a3dd1011a7e67186ea4ca73f20e16126e288a5617e9e34a6c47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45700421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c749f7e3bf363ee8973fbcecf9bcba24cb4fab70d32a3e5fadce895b45ccf0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:ea442b82de82628fbe91d1baa7048c4cb84083ccb87da9a9ff2887bbb340a646
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d2adf411ca92babcc05d75baa7d39f6c614be9de3cf5e62b8bba9892764967`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:46:01 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 13:46:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:46:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65857bb126a32d599e8e4fd9be32a6fca0e9e41281a0a1f81e1c2d028876f44b`  
		Last Modified: Wed, 23 Jan 2019 14:03:41 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6215cb271f67dece70a24ba9fb4c97a1376e71bae64132a4569a922c2356d12c`  
		Last Modified: Wed, 23 Jan 2019 14:03:52 GMT  
		Size: 23.6 MB (23566733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:58bf86b5f25c877a51b0330db2c37d4e5c1fea696bb57ac4f61bcb4ab580e5ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48818545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674f142cf2fc899dfac13bdaf88a651c4d411c823d71ef439c0ba34d3f459123`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:36:30 GMT
ENV MONO_VERSION=5.18.0.225
# Fri, 25 Jan 2019 03:39:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:42:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9b821b98a81087ece50fff5cbb99779f55094eb7b10f7d69231b47a005a4df`  
		Last Modified: Fri, 25 Jan 2019 04:21:15 GMT  
		Size: 244.7 KB (244667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941859599e217f451e3bd0c9d2e65f774bcf753bc97856f6f7432412026a1c05`  
		Last Modified: Fri, 25 Jan 2019 04:21:58 GMT  
		Size: 28.2 MB (28223698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:77eee9e4853c61f7dcac1634f88ac699cf72b0f066f80bbace72a5ceda8a44bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4052999e5b4e2dcb27d24e469019a6e874c6b277ccb90183157127f391bb834`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:40:46 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 17:40:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:41:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f186c27a2a2ca912562d47b7d81421e305c00d4dc2ebd45d6803f4cdf3922f`  
		Last Modified: Wed, 23 Jan 2019 17:47:34 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc559f81d5dc70537221ae06b7f300036be6f0efd17a0343ed9fabbc0f12fdd7`  
		Last Modified: Wed, 23 Jan 2019 17:47:51 GMT  
		Size: 64.0 MB (63955137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:178200818cd83bcf6a080c731d5b75b4f70f4088bca473da9c0f4b02d02b1bf9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957e0cbe6058090123bc552dcf9c4ed77eb566308cc072217181d09234f61fe8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:24:47 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 11:25:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:26:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cad4630b7daaa35c48dfbffb81ba87f9f5d8b282e28411c2d786003c376267`  
		Last Modified: Wed, 23 Jan 2019 11:40:56 GMT  
		Size: 244.5 KB (244484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e07b1cd8d2f00c3f7c387b7d95d22e3a964946ee7334748f37ac2f39a53f5b`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 24.6 MB (24636765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:1302cdabdfcad5bdb1313f1e47abea7eb90fd1589c3ac11bf8f646f64d4140ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:dfc4fd1132091749ffab7ad6a90ec09ef459844a11c219e8d1b75c12200b5ed1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223998272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac51168797db670102ae5e6840fc85c05a845341db2f002107e59951d833a857`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:35:49 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 22 Jan 2019 20:36:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:36:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 22 Jan 2019 20:51:11 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda76c4a4c729d53261e833daa12e8c36172ffb3d4ba0e9519f21c681449113`  
		Last Modified: Tue, 22 Jan 2019 20:58:41 GMT  
		Size: 244.4 KB (244430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dc12963f0b7c1268aa279543ea81fece926dd7316dc7be28cfc2ee464bb1a2`  
		Last Modified: Tue, 22 Jan 2019 20:59:00 GMT  
		Size: 61.2 MB (61150280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74c576f235a45bcf258b70d81a15a18790bcf154dd4de52b73f43ff90cd5bd4`  
		Last Modified: Tue, 22 Jan 2019 21:00:39 GMT  
		Size: 140.1 MB (140102855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v5

```console
$ docker pull mono@sha256:5bd61ad31fc82803ecb546e86b5c197d70604d9e841523459177ba63d8d965e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171271749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1110e3fa46e6bab8f886a51e167e2cdcb5616942f5b19e7683b3c370a22e4459`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 10:33:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2d06888de1b3bd405015c86a54ebdb91deed28326a7c475280a37b8a7752f5`  
		Last Modified: Wed, 23 Jan 2019 10:47:25 GMT  
		Size: 125.6 MB (125571328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:4c118112e8b6a1f82a4a1d2285f2bc5f6884c4fb30dcaf697357b3ba0aedb8f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167333668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b831296ef577dc470f36967762d996737c149b141e011397416cd986c636a70`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:46:01 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 13:46:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:46:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 13:53:16 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65857bb126a32d599e8e4fd9be32a6fca0e9e41281a0a1f81e1c2d028876f44b`  
		Last Modified: Wed, 23 Jan 2019 14:03:41 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6215cb271f67dece70a24ba9fb4c97a1376e71bae64132a4569a922c2356d12c`  
		Last Modified: Wed, 23 Jan 2019 14:03:52 GMT  
		Size: 23.6 MB (23566733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9e9462aeb21d5a18a9f55be6d0354048da9b3e877b325496507287dd8796af`  
		Last Modified: Wed, 23 Jan 2019 14:06:06 GMT  
		Size: 124.2 MB (124232175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:1cbdbe5721bb585925a18a2e2eed61b20c8f8b7efa18120118892c66b1de1858
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188160269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288e3199c7e2c9e118d3a3a461490e10b473d477fb9f5ba8673a1d632672589b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:36:30 GMT
ENV MONO_VERSION=5.18.0.225
# Fri, 25 Jan 2019 03:39:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:42:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 25 Jan 2019 03:57:32 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9b821b98a81087ece50fff5cbb99779f55094eb7b10f7d69231b47a005a4df`  
		Last Modified: Fri, 25 Jan 2019 04:21:15 GMT  
		Size: 244.7 KB (244667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941859599e217f451e3bd0c9d2e65f774bcf753bc97856f6f7432412026a1c05`  
		Last Modified: Fri, 25 Jan 2019 04:21:58 GMT  
		Size: 28.2 MB (28223698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7964f20edceb46b663549cd9d68fddb353d026dbe0df512aa58f336eb57d2107`  
		Last Modified: Fri, 25 Jan 2019 04:26:07 GMT  
		Size: 139.3 MB (139341724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:09f3ba6cf7c099d94085bd5c1f840441dd495ecf0e6b456411ceddec980dfead
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48dc636229fb81deddf7a07a6686df9c220e86552baf3f6f022891179f7bf24e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:40:46 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 17:40:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:41:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 17:45:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f186c27a2a2ca912562d47b7d81421e305c00d4dc2ebd45d6803f4cdf3922f`  
		Last Modified: Wed, 23 Jan 2019 17:47:34 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc559f81d5dc70537221ae06b7f300036be6f0efd17a0343ed9fabbc0f12fdd7`  
		Last Modified: Wed, 23 Jan 2019 17:47:51 GMT  
		Size: 64.0 MB (63955137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba892e4637dde479ff27b7a0c721fc85f2ecc53301ef018e5f13d3f9e437ac4`  
		Last Modified: Wed, 23 Jan 2019 17:49:25 GMT  
		Size: 145.7 MB (145691580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; ppc64le

```console
$ docker pull mono@sha256:804af23691af8f5ab8fcf4e21857d9b8473a2a8c6a4cea35c3cd8d919bd535bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173624153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4415b3f85bef6a7498ba5c6a9e51353c188ce60daab6c3970d79bc6ef21db07`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:24:47 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 11:25:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:26:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 23 Jan 2019 11:35:29 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cad4630b7daaa35c48dfbffb81ba87f9f5d8b282e28411c2d786003c376267`  
		Last Modified: Wed, 23 Jan 2019 11:40:56 GMT  
		Size: 244.5 KB (244484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e07b1cd8d2f00c3f7c387b7d95d22e3a964946ee7334748f37ac2f39a53f5b`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 24.6 MB (24636765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34319ac54ff78e3b8310ab081f5befc28f5fc0ceb24492bf3b1412b75d2752fb`  
		Last Modified: Wed, 23 Jan 2019 11:42:12 GMT  
		Size: 126.0 MB (125987573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:9505ef92f290b3c55f9b72e2ad51b16198d88088ce8ec9d854e7c69ff3a0da2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:49e5f075a409face37757e81a47b909554f44b2d54fcc83efa6f318ed68b2e4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83895417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d4be513cb31ba95002ab00b6153d992bf0e63add5c58b4b34d10704c2c6538`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:35:49 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 22 Jan 2019 20:36:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 22 Jan 2019 20:36:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda76c4a4c729d53261e833daa12e8c36172ffb3d4ba0e9519f21c681449113`  
		Last Modified: Tue, 22 Jan 2019 20:58:41 GMT  
		Size: 244.4 KB (244430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dc12963f0b7c1268aa279543ea81fece926dd7316dc7be28cfc2ee464bb1a2`  
		Last Modified: Tue, 22 Jan 2019 20:59:00 GMT  
		Size: 61.2 MB (61150280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:02b08319ca7f1a3dd1011a7e67186ea4ca73f20e16126e288a5617e9e34a6c47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45700421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c749f7e3bf363ee8973fbcecf9bcba24cb4fab70d32a3e5fadce895b45ccf0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:25:53 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 10:26:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 10:26:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c70aedc6c34c75c59b4ab87a1a8b456b918ca07c6059a90e37aa58e26403ee`  
		Last Modified: Wed, 23 Jan 2019 10:45:11 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5585fac96fed78cff92700c54e6df32c7a69879896fa54549b7a5d668565784`  
		Last Modified: Wed, 23 Jan 2019 10:45:21 GMT  
		Size: 24.3 MB (24274128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:ea442b82de82628fbe91d1baa7048c4cb84083ccb87da9a9ff2887bbb340a646
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d2adf411ca92babcc05d75baa7d39f6c614be9de3cf5e62b8bba9892764967`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:46:01 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 13:46:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 13:46:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65857bb126a32d599e8e4fd9be32a6fca0e9e41281a0a1f81e1c2d028876f44b`  
		Last Modified: Wed, 23 Jan 2019 14:03:41 GMT  
		Size: 244.5 KB (244474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6215cb271f67dece70a24ba9fb4c97a1376e71bae64132a4569a922c2356d12c`  
		Last Modified: Wed, 23 Jan 2019 14:03:52 GMT  
		Size: 23.6 MB (23566733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:58bf86b5f25c877a51b0330db2c37d4e5c1fea696bb57ac4f61bcb4ab580e5ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48818545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:674f142cf2fc899dfac13bdaf88a651c4d411c823d71ef439c0ba34d3f459123`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 03:36:30 GMT
ENV MONO_VERSION=5.18.0.225
# Fri, 25 Jan 2019 03:39:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 25 Jan 2019 03:42:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9b821b98a81087ece50fff5cbb99779f55094eb7b10f7d69231b47a005a4df`  
		Last Modified: Fri, 25 Jan 2019 04:21:15 GMT  
		Size: 244.7 KB (244667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941859599e217f451e3bd0c9d2e65f774bcf753bc97856f6f7432412026a1c05`  
		Last Modified: Fri, 25 Jan 2019 04:21:58 GMT  
		Size: 28.2 MB (28223698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:77eee9e4853c61f7dcac1634f88ac699cf72b0f066f80bbace72a5ceda8a44bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4052999e5b4e2dcb27d24e469019a6e874c6b277ccb90183157127f391bb834`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:40:46 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 17:40:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 17:41:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f186c27a2a2ca912562d47b7d81421e305c00d4dc2ebd45d6803f4cdf3922f`  
		Last Modified: Wed, 23 Jan 2019 17:47:34 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc559f81d5dc70537221ae06b7f300036be6f0efd17a0343ed9fabbc0f12fdd7`  
		Last Modified: Wed, 23 Jan 2019 17:47:51 GMT  
		Size: 64.0 MB (63955137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; ppc64le

```console
$ docker pull mono@sha256:178200818cd83bcf6a080c731d5b75b4f70f4088bca473da9c0f4b02d02b1bf9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957e0cbe6058090123bc552dcf9c4ed77eb566308cc072217181d09234f61fe8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:24:47 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 23 Jan 2019 11:25:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 23 Jan 2019 11:26:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cad4630b7daaa35c48dfbffb81ba87f9f5d8b282e28411c2d786003c376267`  
		Last Modified: Wed, 23 Jan 2019 11:40:56 GMT  
		Size: 244.5 KB (244484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e07b1cd8d2f00c3f7c387b7d95d22e3a964946ee7334748f37ac2f39a53f5b`  
		Last Modified: Wed, 23 Jan 2019 11:41:03 GMT  
		Size: 24.6 MB (24636765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

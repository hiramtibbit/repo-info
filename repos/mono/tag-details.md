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
$ docker pull mono@sha256:b86e805627833cc07e5d84986dc3accb17ef88af3d641d5c5d904088d2d80da9
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
$ docker pull mono@sha256:608def7c85b15b5f06849790e5096a16332a18ef051948d13468a31e346088db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27151d17018cc93b7df2525f55555bb180b9c47f7cf1082ac611c28c1bf587ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:57:51 GMT
ADD file:2176455c0a806208679d84cd68bd333f8550a0221930164de204c0d700ef0732 in / 
# Sat, 29 Dec 2018 09:57:52 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:50:57 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 03 Jan 2019 09:50:57 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 03 Jan 2019 09:51:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 09:51:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 03 Jan 2019 09:53:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0a88807c02a49bee45e800ff85ea3cdd0868f83fffa6aa89ab393861b593d635`  
		Last Modified: Sat, 29 Dec 2018 10:04:37 GMT  
		Size: 38.0 MB (37992205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b504f4e38f7abad5e091c9022473933dd75077624893d0631396a666012e783a`  
		Last Modified: Thu, 03 Jan 2019 10:08:27 GMT  
		Size: 6.3 MB (6264728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6ff5f39e34d6e76115c4ea7e9d6169322efeb3f453dea37496cd441cb48679`  
		Last Modified: Thu, 03 Jan 2019 10:08:26 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298ef39b7b6911fac2ba333209a0eacc4e0423391022dab2df6dc4a1f9e2505`  
		Last Modified: Thu, 03 Jan 2019 10:09:01 GMT  
		Size: 97.1 MB (97061761 bytes)  
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
$ docker pull mono@sha256:b86e805627833cc07e5d84986dc3accb17ef88af3d641d5c5d904088d2d80da9
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
$ docker pull mono@sha256:608def7c85b15b5f06849790e5096a16332a18ef051948d13468a31e346088db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27151d17018cc93b7df2525f55555bb180b9c47f7cf1082ac611c28c1bf587ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:57:51 GMT
ADD file:2176455c0a806208679d84cd68bd333f8550a0221930164de204c0d700ef0732 in / 
# Sat, 29 Dec 2018 09:57:52 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:50:57 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 03 Jan 2019 09:50:57 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 03 Jan 2019 09:51:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 09:51:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 03 Jan 2019 09:53:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0a88807c02a49bee45e800ff85ea3cdd0868f83fffa6aa89ab393861b593d635`  
		Last Modified: Sat, 29 Dec 2018 10:04:37 GMT  
		Size: 38.0 MB (37992205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b504f4e38f7abad5e091c9022473933dd75077624893d0631396a666012e783a`  
		Last Modified: Thu, 03 Jan 2019 10:08:27 GMT  
		Size: 6.3 MB (6264728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6ff5f39e34d6e76115c4ea7e9d6169322efeb3f453dea37496cd441cb48679`  
		Last Modified: Thu, 03 Jan 2019 10:08:26 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298ef39b7b6911fac2ba333209a0eacc4e0423391022dab2df6dc4a1f9e2505`  
		Last Modified: Thu, 03 Jan 2019 10:09:01 GMT  
		Size: 97.1 MB (97061761 bytes)  
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
$ docker pull mono@sha256:b86e805627833cc07e5d84986dc3accb17ef88af3d641d5c5d904088d2d80da9
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
$ docker pull mono@sha256:608def7c85b15b5f06849790e5096a16332a18ef051948d13468a31e346088db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27151d17018cc93b7df2525f55555bb180b9c47f7cf1082ac611c28c1bf587ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:57:51 GMT
ADD file:2176455c0a806208679d84cd68bd333f8550a0221930164de204c0d700ef0732 in / 
# Sat, 29 Dec 2018 09:57:52 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:50:57 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 03 Jan 2019 09:50:57 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 03 Jan 2019 09:51:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 09:51:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 03 Jan 2019 09:53:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0a88807c02a49bee45e800ff85ea3cdd0868f83fffa6aa89ab393861b593d635`  
		Last Modified: Sat, 29 Dec 2018 10:04:37 GMT  
		Size: 38.0 MB (37992205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b504f4e38f7abad5e091c9022473933dd75077624893d0631396a666012e783a`  
		Last Modified: Thu, 03 Jan 2019 10:08:27 GMT  
		Size: 6.3 MB (6264728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6ff5f39e34d6e76115c4ea7e9d6169322efeb3f453dea37496cd441cb48679`  
		Last Modified: Thu, 03 Jan 2019 10:08:26 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298ef39b7b6911fac2ba333209a0eacc4e0423391022dab2df6dc4a1f9e2505`  
		Last Modified: Thu, 03 Jan 2019 10:09:01 GMT  
		Size: 97.1 MB (97061761 bytes)  
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
$ docker pull mono@sha256:b86e805627833cc07e5d84986dc3accb17ef88af3d641d5c5d904088d2d80da9
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
$ docker pull mono@sha256:608def7c85b15b5f06849790e5096a16332a18ef051948d13468a31e346088db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.3 MB (141348601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27151d17018cc93b7df2525f55555bb180b9c47f7cf1082ac611c28c1bf587ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:57:51 GMT
ADD file:2176455c0a806208679d84cd68bd333f8550a0221930164de204c0d700ef0732 in / 
# Sat, 29 Dec 2018 09:57:52 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:50:57 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 03 Jan 2019 09:50:57 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 03 Jan 2019 09:51:25 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 09:51:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 03 Jan 2019 09:53:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0a88807c02a49bee45e800ff85ea3cdd0868f83fffa6aa89ab393861b593d635`  
		Last Modified: Sat, 29 Dec 2018 10:04:37 GMT  
		Size: 38.0 MB (37992205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b504f4e38f7abad5e091c9022473933dd75077624893d0631396a666012e783a`  
		Last Modified: Thu, 03 Jan 2019 10:08:27 GMT  
		Size: 6.3 MB (6264728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6ff5f39e34d6e76115c4ea7e9d6169322efeb3f453dea37496cd441cb48679`  
		Last Modified: Thu, 03 Jan 2019 10:08:26 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298ef39b7b6911fac2ba333209a0eacc4e0423391022dab2df6dc4a1f9e2505`  
		Last Modified: Thu, 03 Jan 2019 10:09:01 GMT  
		Size: 97.1 MB (97061761 bytes)  
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
$ docker pull mono@sha256:c8add78cc971b7242cb3919a503ad7a695c518c14b7f288c96b6eb6ecc12ae0f
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
$ docker pull mono@sha256:30672cf29f3b35de2cfd7578771a00b1c792159464ec5004d35e903fd6660aca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171257044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853364a5a41d5eff51f680751059306d0ffd371dc7c87b633462fd00098842a7`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:48:27 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:48:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:49:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:55:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9082e076301c17d6b76037ab4814b649a017db39a9d7ba8faf2f5139138d10`  
		Last Modified: Thu, 03 Jan 2019 10:07:46 GMT  
		Size: 244.5 KB (244477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a48171f7806bbca6215990242565c6cf5ac46f7b4a2e6df9b15bd32526bef`  
		Last Modified: Thu, 03 Jan 2019 10:07:56 GMT  
		Size: 24.3 MB (24273913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b020fea764d6731e1713c0c01542a7c006219593e61d133fd70974d7416b1e20`  
		Last Modified: Thu, 03 Jan 2019 10:09:55 GMT  
		Size: 125.6 MB (125570878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:c2c19f108ff61d8831f4e784389e010bd39a6174a402e815dc4d64d813a80282
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167321177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5da922fbfd3b3cb8880c79f977b52edc2dddac0bc883b919b8fc091ffe13024`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:17:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2757b5941fa1c481e5a5f51b61d8ce6ff0084e991de14cf3ec4c0090ea4ea9ca`  
		Last Modified: Tue, 01 Jan 2019 13:28:58 GMT  
		Size: 124.2 MB (124232289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:4fdd7e156f21becd6c7398446b120474082d1658d1745fe5eeea3c392e805f06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188146501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbabe1bdc16e55f66168e1339105fb94f04012f431cb97cde89f827d8837a5ea`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 10:59:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad49b13b612f416c00e97656612136e36aed3815f62bf3f4d78da24e43429b`  
		Last Modified: Tue, 01 Jan 2019 11:21:02 GMT  
		Size: 139.3 MB (139341485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:3eb53c6ec633e2b3021aa13517a1936983b774f069c6854136c37b545d7542b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233023712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7819bbb4752b32a441969a4079e9b0d6b072de2108786ce8500e0edfd13024c6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:05:23 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84741bc12abf64510e0cdd8eaef8a9680f83ff24a7035b99c593f62551cee128`  
		Last Modified: Tue, 01 Jan 2019 13:09:07 GMT  
		Size: 145.7 MB (145690802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; ppc64le

```console
$ docker pull mono@sha256:c55ce9f7766d008d3cd65ed85a6639ed5d6b8196ef77951761594326adbd6071
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173614384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaea7abc4790aff3c3111788aaeda6c165f7e0888d63e6b3d490c599887909df`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:22:10 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:23:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:25:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:33:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5a5b0e2125b8ef85f6cd70e340451f4ca160d0b85958cea531967d74046f9`  
		Last Modified: Thu, 03 Jan 2019 09:39:34 GMT  
		Size: 244.6 KB (244567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a1b53eb40b00302d6c369c75d4590d04c2dcb3d80e275d5c4c3cac265ecb4`  
		Last Modified: Thu, 03 Jan 2019 09:39:40 GMT  
		Size: 24.6 MB (24636697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4c987aab03618a6b7e8ca07edd1aa8c4832f4009d50eff6df48168c9ef3445`  
		Last Modified: Thu, 03 Jan 2019 09:40:49 GMT  
		Size: 126.0 MB (125986294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16`

```console
$ docker pull mono@sha256:62d6ae7d9cd9503ddb186ab1f64a4718df02e67c5e372cd0b1cce1edcdfabd3f
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
$ docker pull mono@sha256:18ad68a91ff4f39abd37bcfb98f2c392787a9bcf4ad5af6531d30ecea748366a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184070767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c07d36a8f4a66e88d527dc30e885a43c129bc6c59b7c1a45e3b6351cdd9c5c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:49:42 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:50:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:50:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 10:07:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2de1e7638a0dd450c60a6c52091a0b00e9f6e176f92a4589ca2e39a40a0d20`  
		Last Modified: Thu, 03 Jan 2019 10:08:05 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ad55b73f2e9b54c72c15623fe67947d5a22a5d2bb2e54421233fbc12de877c`  
		Last Modified: Thu, 03 Jan 2019 10:08:19 GMT  
		Size: 40.3 MB (40277211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcfd115e6ada459bf3739f338771c84e8d279cc39ab0828c7969d42a46dfba5`  
		Last Modified: Thu, 03 Jan 2019 10:10:50 GMT  
		Size: 122.4 MB (122381314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm variant v7

```console
$ docker pull mono@sha256:071cd4381171956c30d395fcba0d29133403c05a2dbc785e46ff364b3a3785fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178625410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514889d4d46b8376ba36c213d0143d8c87b564aac95d74a043cb2a01c8f3cb03`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:13:51 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:14:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:14:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:27:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d81d8f5797a572fae5cd1d7742de30f0fa985f0a44965343f0f7c6ed4477d86`  
		Last Modified: Tue, 01 Jan 2019 13:27:50 GMT  
		Size: 244.5 KB (244475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7550c0766dd2a4bdc7cd3e42f102fe44797a741056adb4f03e858710ffd69c0e`  
		Last Modified: Tue, 01 Jan 2019 13:28:03 GMT  
		Size: 38.1 MB (38077131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd40945e5ed15fca140f22c5b9a6f32ca4ef12c17ca9656d06e8f16b5d5d6147`  
		Last Modified: Tue, 01 Jan 2019 13:29:53 GMT  
		Size: 121.0 MB (121026049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:19f658312165cb556c9f9448bb8ddcd29b1b0fcda8d222374f5fc2bea7c1862b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197384912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173709a1a86b62fd681546ac3208b1c3f3d2f01352aa0bc78f39a09fc326eff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:45:12 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 10:46:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:48:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 11:18:42 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0065cdd8800d56732ae7984c61441fc6896d6da2da58568810fc1431a2c5226f`  
		Last Modified: Tue, 01 Jan 2019 11:19:39 GMT  
		Size: 244.5 KB (244517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde928d6426d1e69af23169700f0d7af25ebe8ad116efa1c8a9f98493fc3336`  
		Last Modified: Tue, 01 Jan 2019 11:19:56 GMT  
		Size: 42.3 MB (42280566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36781364e355a088bf050a1bf71327b4301ffd9108051efe64c51b4329c30488`  
		Last Modified: Tue, 01 Jan 2019 11:22:09 GMT  
		Size: 134.5 MB (134522318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; 386

```console
$ docker pull mono@sha256:8b50ee98bdcb4775ec0e54b8e544ea848047fb34e08257e064c62a28196da658
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (212991874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed8fc3ee35648c2034a952317c0405e31f5db3a7154fa2d414871872184ce8a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:50 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:03:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:03:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:07:17 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc8f1ff874e52a15309e2a724f8c2ef6b7ef4de98d320377253bb1b42e5436f`  
		Last Modified: Tue, 01 Jan 2019 13:08:09 GMT  
		Size: 244.5 KB (244460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b8b8ee413f2f4349a4165b8d4b280c8608997e6f6d11653aeef06a724620f`  
		Last Modified: Tue, 01 Jan 2019 13:08:22 GMT  
		Size: 47.2 MB (47157167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d837570ce792cc8116b4ede50189c7f323faa0700f0d963a274e78be90785284`  
		Last Modified: Tue, 01 Jan 2019 13:09:50 GMT  
		Size: 142.5 MB (142457092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; ppc64le

```console
$ docker pull mono@sha256:48612f7210922e6e4358954ee52895e1893053f627e89e0228fccc537992d607
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170428047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012e79b500b268e07ac428dfb18996f28c5c8e8762a639ffcbf3532061896db0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:25:48 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:27:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:28:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:38:56 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2966ab7e8a9b88bb69ad656c823b6d8e643af22ef9b2af830f85ba7b145067`  
		Last Modified: Thu, 03 Jan 2019 09:39:58 GMT  
		Size: 244.5 KB (244546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27a8394492f896007420884e6c4f7b4fdffb763d94eb4d00a09130bba0ed7ca`  
		Last Modified: Thu, 03 Jan 2019 09:40:04 GMT  
		Size: 24.7 MB (24656765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973ab7290f113f499f3103805539dae6b04c45168e43db5ed0bf71493d03931c`  
		Last Modified: Thu, 03 Jan 2019 09:41:34 GMT  
		Size: 122.8 MB (122779910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0`

```console
$ docker pull mono@sha256:62d6ae7d9cd9503ddb186ab1f64a4718df02e67c5e372cd0b1cce1edcdfabd3f
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
$ docker pull mono@sha256:18ad68a91ff4f39abd37bcfb98f2c392787a9bcf4ad5af6531d30ecea748366a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184070767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c07d36a8f4a66e88d527dc30e885a43c129bc6c59b7c1a45e3b6351cdd9c5c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:49:42 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:50:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:50:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 10:07:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2de1e7638a0dd450c60a6c52091a0b00e9f6e176f92a4589ca2e39a40a0d20`  
		Last Modified: Thu, 03 Jan 2019 10:08:05 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ad55b73f2e9b54c72c15623fe67947d5a22a5d2bb2e54421233fbc12de877c`  
		Last Modified: Thu, 03 Jan 2019 10:08:19 GMT  
		Size: 40.3 MB (40277211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcfd115e6ada459bf3739f338771c84e8d279cc39ab0828c7969d42a46dfba5`  
		Last Modified: Thu, 03 Jan 2019 10:10:50 GMT  
		Size: 122.4 MB (122381314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:071cd4381171956c30d395fcba0d29133403c05a2dbc785e46ff364b3a3785fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178625410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514889d4d46b8376ba36c213d0143d8c87b564aac95d74a043cb2a01c8f3cb03`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:13:51 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:14:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:14:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:27:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d81d8f5797a572fae5cd1d7742de30f0fa985f0a44965343f0f7c6ed4477d86`  
		Last Modified: Tue, 01 Jan 2019 13:27:50 GMT  
		Size: 244.5 KB (244475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7550c0766dd2a4bdc7cd3e42f102fe44797a741056adb4f03e858710ffd69c0e`  
		Last Modified: Tue, 01 Jan 2019 13:28:03 GMT  
		Size: 38.1 MB (38077131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd40945e5ed15fca140f22c5b9a6f32ca4ef12c17ca9656d06e8f16b5d5d6147`  
		Last Modified: Tue, 01 Jan 2019 13:29:53 GMT  
		Size: 121.0 MB (121026049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:19f658312165cb556c9f9448bb8ddcd29b1b0fcda8d222374f5fc2bea7c1862b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197384912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173709a1a86b62fd681546ac3208b1c3f3d2f01352aa0bc78f39a09fc326eff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:45:12 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 10:46:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:48:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 11:18:42 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0065cdd8800d56732ae7984c61441fc6896d6da2da58568810fc1431a2c5226f`  
		Last Modified: Tue, 01 Jan 2019 11:19:39 GMT  
		Size: 244.5 KB (244517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde928d6426d1e69af23169700f0d7af25ebe8ad116efa1c8a9f98493fc3336`  
		Last Modified: Tue, 01 Jan 2019 11:19:56 GMT  
		Size: 42.3 MB (42280566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36781364e355a088bf050a1bf71327b4301ffd9108051efe64c51b4329c30488`  
		Last Modified: Tue, 01 Jan 2019 11:22:09 GMT  
		Size: 134.5 MB (134522318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; 386

```console
$ docker pull mono@sha256:8b50ee98bdcb4775ec0e54b8e544ea848047fb34e08257e064c62a28196da658
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (212991874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed8fc3ee35648c2034a952317c0405e31f5db3a7154fa2d414871872184ce8a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:50 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:03:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:03:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:07:17 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc8f1ff874e52a15309e2a724f8c2ef6b7ef4de98d320377253bb1b42e5436f`  
		Last Modified: Tue, 01 Jan 2019 13:08:09 GMT  
		Size: 244.5 KB (244460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b8b8ee413f2f4349a4165b8d4b280c8608997e6f6d11653aeef06a724620f`  
		Last Modified: Tue, 01 Jan 2019 13:08:22 GMT  
		Size: 47.2 MB (47157167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d837570ce792cc8116b4ede50189c7f323faa0700f0d963a274e78be90785284`  
		Last Modified: Tue, 01 Jan 2019 13:09:50 GMT  
		Size: 142.5 MB (142457092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; ppc64le

```console
$ docker pull mono@sha256:48612f7210922e6e4358954ee52895e1893053f627e89e0228fccc537992d607
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170428047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012e79b500b268e07ac428dfb18996f28c5c8e8762a639ffcbf3532061896db0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:25:48 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:27:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:28:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:38:56 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2966ab7e8a9b88bb69ad656c823b6d8e643af22ef9b2af830f85ba7b145067`  
		Last Modified: Thu, 03 Jan 2019 09:39:58 GMT  
		Size: 244.5 KB (244546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27a8394492f896007420884e6c4f7b4fdffb763d94eb4d00a09130bba0ed7ca`  
		Last Modified: Thu, 03 Jan 2019 09:40:04 GMT  
		Size: 24.7 MB (24656765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973ab7290f113f499f3103805539dae6b04c45168e43db5ed0bf71493d03931c`  
		Last Modified: Thu, 03 Jan 2019 09:41:34 GMT  
		Size: 122.8 MB (122779910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.220`

```console
$ docker pull mono@sha256:62d6ae7d9cd9503ddb186ab1f64a4718df02e67c5e372cd0b1cce1edcdfabd3f
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
$ docker pull mono@sha256:18ad68a91ff4f39abd37bcfb98f2c392787a9bcf4ad5af6531d30ecea748366a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184070767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c07d36a8f4a66e88d527dc30e885a43c129bc6c59b7c1a45e3b6351cdd9c5c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:49:42 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:50:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:50:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 10:07:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2de1e7638a0dd450c60a6c52091a0b00e9f6e176f92a4589ca2e39a40a0d20`  
		Last Modified: Thu, 03 Jan 2019 10:08:05 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ad55b73f2e9b54c72c15623fe67947d5a22a5d2bb2e54421233fbc12de877c`  
		Last Modified: Thu, 03 Jan 2019 10:08:19 GMT  
		Size: 40.3 MB (40277211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcfd115e6ada459bf3739f338771c84e8d279cc39ab0828c7969d42a46dfba5`  
		Last Modified: Thu, 03 Jan 2019 10:10:50 GMT  
		Size: 122.4 MB (122381314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; arm variant v7

```console
$ docker pull mono@sha256:071cd4381171956c30d395fcba0d29133403c05a2dbc785e46ff364b3a3785fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178625410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514889d4d46b8376ba36c213d0143d8c87b564aac95d74a043cb2a01c8f3cb03`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:13:51 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:14:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:14:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:27:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d81d8f5797a572fae5cd1d7742de30f0fa985f0a44965343f0f7c6ed4477d86`  
		Last Modified: Tue, 01 Jan 2019 13:27:50 GMT  
		Size: 244.5 KB (244475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7550c0766dd2a4bdc7cd3e42f102fe44797a741056adb4f03e858710ffd69c0e`  
		Last Modified: Tue, 01 Jan 2019 13:28:03 GMT  
		Size: 38.1 MB (38077131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd40945e5ed15fca140f22c5b9a6f32ca4ef12c17ca9656d06e8f16b5d5d6147`  
		Last Modified: Tue, 01 Jan 2019 13:29:53 GMT  
		Size: 121.0 MB (121026049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:19f658312165cb556c9f9448bb8ddcd29b1b0fcda8d222374f5fc2bea7c1862b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197384912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173709a1a86b62fd681546ac3208b1c3f3d2f01352aa0bc78f39a09fc326eff6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:45:12 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 10:46:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:48:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 11:18:42 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0065cdd8800d56732ae7984c61441fc6896d6da2da58568810fc1431a2c5226f`  
		Last Modified: Tue, 01 Jan 2019 11:19:39 GMT  
		Size: 244.5 KB (244517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde928d6426d1e69af23169700f0d7af25ebe8ad116efa1c8a9f98493fc3336`  
		Last Modified: Tue, 01 Jan 2019 11:19:56 GMT  
		Size: 42.3 MB (42280566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36781364e355a088bf050a1bf71327b4301ffd9108051efe64c51b4329c30488`  
		Last Modified: Tue, 01 Jan 2019 11:22:09 GMT  
		Size: 134.5 MB (134522318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; 386

```console
$ docker pull mono@sha256:8b50ee98bdcb4775ec0e54b8e544ea848047fb34e08257e064c62a28196da658
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (212991874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed8fc3ee35648c2034a952317c0405e31f5db3a7154fa2d414871872184ce8a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:50 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:03:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:03:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:07:17 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc8f1ff874e52a15309e2a724f8c2ef6b7ef4de98d320377253bb1b42e5436f`  
		Last Modified: Tue, 01 Jan 2019 13:08:09 GMT  
		Size: 244.5 KB (244460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b8b8ee413f2f4349a4165b8d4b280c8608997e6f6d11653aeef06a724620f`  
		Last Modified: Tue, 01 Jan 2019 13:08:22 GMT  
		Size: 47.2 MB (47157167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d837570ce792cc8116b4ede50189c7f323faa0700f0d963a274e78be90785284`  
		Last Modified: Tue, 01 Jan 2019 13:09:50 GMT  
		Size: 142.5 MB (142457092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; ppc64le

```console
$ docker pull mono@sha256:48612f7210922e6e4358954ee52895e1893053f627e89e0228fccc537992d607
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170428047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012e79b500b268e07ac428dfb18996f28c5c8e8762a639ffcbf3532061896db0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:25:48 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:27:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:28:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:38:56 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2966ab7e8a9b88bb69ad656c823b6d8e643af22ef9b2af830f85ba7b145067`  
		Last Modified: Thu, 03 Jan 2019 09:39:58 GMT  
		Size: 244.5 KB (244546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27a8394492f896007420884e6c4f7b4fdffb763d94eb4d00a09130bba0ed7ca`  
		Last Modified: Thu, 03 Jan 2019 09:40:04 GMT  
		Size: 24.7 MB (24656765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973ab7290f113f499f3103805539dae6b04c45168e43db5ed0bf71493d03931c`  
		Last Modified: Thu, 03 Jan 2019 09:41:34 GMT  
		Size: 122.8 MB (122779910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.220-slim`

```console
$ docker pull mono@sha256:8fa0de6340affa2d7e87f5677dab8ebe70a5d6c7b1913a5abc2124c646262ed8
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
$ docker pull mono@sha256:29c42a9fff89cb89eb509409aa524dc96a57d4ae086317fd5fca25606ccb903b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61689453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d89c6032e26add4ac089cb92c5d14947cf10b97786c239b46fa13cb24ab230`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:49:42 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:50:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:50:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2de1e7638a0dd450c60a6c52091a0b00e9f6e176f92a4589ca2e39a40a0d20`  
		Last Modified: Thu, 03 Jan 2019 10:08:05 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ad55b73f2e9b54c72c15623fe67947d5a22a5d2bb2e54421233fbc12de877c`  
		Last Modified: Thu, 03 Jan 2019 10:08:19 GMT  
		Size: 40.3 MB (40277211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:2416b55ff1b1830140d7b601b2251e87e579060a350d877a3c6c622a62450491
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57599361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c2a4efc72a7a1f9c3d9013dd271167ec870ec35da9a9f911e782b070898d18`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:13:51 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:14:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:14:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d81d8f5797a572fae5cd1d7742de30f0fa985f0a44965343f0f7c6ed4477d86`  
		Last Modified: Tue, 01 Jan 2019 13:27:50 GMT  
		Size: 244.5 KB (244475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7550c0766dd2a4bdc7cd3e42f102fe44797a741056adb4f03e858710ffd69c0e`  
		Last Modified: Tue, 01 Jan 2019 13:28:03 GMT  
		Size: 38.1 MB (38077131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:70e8219a870ce86737f92452b37a48eeefff7d7392a67fb192a3f808ed51fe6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62862594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314497ae4ee0bcb8b1486156606f65d8d26c97d9d7ddf7d9340c227842cf3497`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:45:12 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 10:46:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:48:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0065cdd8800d56732ae7984c61441fc6896d6da2da58568810fc1431a2c5226f`  
		Last Modified: Tue, 01 Jan 2019 11:19:39 GMT  
		Size: 244.5 KB (244517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde928d6426d1e69af23169700f0d7af25ebe8ad116efa1c8a9f98493fc3336`  
		Last Modified: Tue, 01 Jan 2019 11:19:56 GMT  
		Size: 42.3 MB (42280566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; 386

```console
$ docker pull mono@sha256:a7d16a6bf2b1f30a6fdb707cf1d4ed7b283031879ecba896102d532cffa09251
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70534782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b82a1974d0d1556fe8448bce4032a031700027848fcf44c8ddeca40b6df11a0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:50 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:03:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:03:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc8f1ff874e52a15309e2a724f8c2ef6b7ef4de98d320377253bb1b42e5436f`  
		Last Modified: Tue, 01 Jan 2019 13:08:09 GMT  
		Size: 244.5 KB (244460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b8b8ee413f2f4349a4165b8d4b280c8608997e6f6d11653aeef06a724620f`  
		Last Modified: Tue, 01 Jan 2019 13:08:22 GMT  
		Size: 47.2 MB (47157167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:a2c4279ad8414d69ee83fb8569bcfeb448016127ec08a35bea54b7baaff47b1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47648137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb94de9eaa70f9fc357dde9266edea20025cf0f66c25abf76967438db46bf2e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:25:48 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:27:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:28:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2966ab7e8a9b88bb69ad656c823b6d8e643af22ef9b2af830f85ba7b145067`  
		Last Modified: Thu, 03 Jan 2019 09:39:58 GMT  
		Size: 244.5 KB (244546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27a8394492f896007420884e6c4f7b4fdffb763d94eb4d00a09130bba0ed7ca`  
		Last Modified: Thu, 03 Jan 2019 09:40:04 GMT  
		Size: 24.7 MB (24656765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0-slim`

```console
$ docker pull mono@sha256:8fa0de6340affa2d7e87f5677dab8ebe70a5d6c7b1913a5abc2124c646262ed8
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
$ docker pull mono@sha256:29c42a9fff89cb89eb509409aa524dc96a57d4ae086317fd5fca25606ccb903b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61689453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d89c6032e26add4ac089cb92c5d14947cf10b97786c239b46fa13cb24ab230`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:49:42 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:50:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:50:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2de1e7638a0dd450c60a6c52091a0b00e9f6e176f92a4589ca2e39a40a0d20`  
		Last Modified: Thu, 03 Jan 2019 10:08:05 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ad55b73f2e9b54c72c15623fe67947d5a22a5d2bb2e54421233fbc12de877c`  
		Last Modified: Thu, 03 Jan 2019 10:08:19 GMT  
		Size: 40.3 MB (40277211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:2416b55ff1b1830140d7b601b2251e87e579060a350d877a3c6c622a62450491
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57599361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c2a4efc72a7a1f9c3d9013dd271167ec870ec35da9a9f911e782b070898d18`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:13:51 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:14:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:14:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d81d8f5797a572fae5cd1d7742de30f0fa985f0a44965343f0f7c6ed4477d86`  
		Last Modified: Tue, 01 Jan 2019 13:27:50 GMT  
		Size: 244.5 KB (244475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7550c0766dd2a4bdc7cd3e42f102fe44797a741056adb4f03e858710ffd69c0e`  
		Last Modified: Tue, 01 Jan 2019 13:28:03 GMT  
		Size: 38.1 MB (38077131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:70e8219a870ce86737f92452b37a48eeefff7d7392a67fb192a3f808ed51fe6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62862594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314497ae4ee0bcb8b1486156606f65d8d26c97d9d7ddf7d9340c227842cf3497`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:45:12 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 10:46:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:48:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0065cdd8800d56732ae7984c61441fc6896d6da2da58568810fc1431a2c5226f`  
		Last Modified: Tue, 01 Jan 2019 11:19:39 GMT  
		Size: 244.5 KB (244517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde928d6426d1e69af23169700f0d7af25ebe8ad116efa1c8a9f98493fc3336`  
		Last Modified: Tue, 01 Jan 2019 11:19:56 GMT  
		Size: 42.3 MB (42280566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; 386

```console
$ docker pull mono@sha256:a7d16a6bf2b1f30a6fdb707cf1d4ed7b283031879ecba896102d532cffa09251
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70534782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b82a1974d0d1556fe8448bce4032a031700027848fcf44c8ddeca40b6df11a0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:50 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:03:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:03:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc8f1ff874e52a15309e2a724f8c2ef6b7ef4de98d320377253bb1b42e5436f`  
		Last Modified: Tue, 01 Jan 2019 13:08:09 GMT  
		Size: 244.5 KB (244460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b8b8ee413f2f4349a4165b8d4b280c8608997e6f6d11653aeef06a724620f`  
		Last Modified: Tue, 01 Jan 2019 13:08:22 GMT  
		Size: 47.2 MB (47157167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:a2c4279ad8414d69ee83fb8569bcfeb448016127ec08a35bea54b7baaff47b1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47648137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb94de9eaa70f9fc357dde9266edea20025cf0f66c25abf76967438db46bf2e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:25:48 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:27:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:28:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2966ab7e8a9b88bb69ad656c823b6d8e643af22ef9b2af830f85ba7b145067`  
		Last Modified: Thu, 03 Jan 2019 09:39:58 GMT  
		Size: 244.5 KB (244546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27a8394492f896007420884e6c4f7b4fdffb763d94eb4d00a09130bba0ed7ca`  
		Last Modified: Thu, 03 Jan 2019 09:40:04 GMT  
		Size: 24.7 MB (24656765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16-slim`

```console
$ docker pull mono@sha256:8fa0de6340affa2d7e87f5677dab8ebe70a5d6c7b1913a5abc2124c646262ed8
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
$ docker pull mono@sha256:29c42a9fff89cb89eb509409aa524dc96a57d4ae086317fd5fca25606ccb903b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61689453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d89c6032e26add4ac089cb92c5d14947cf10b97786c239b46fa13cb24ab230`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:49:42 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:50:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:50:48 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2de1e7638a0dd450c60a6c52091a0b00e9f6e176f92a4589ca2e39a40a0d20`  
		Last Modified: Thu, 03 Jan 2019 10:08:05 GMT  
		Size: 244.5 KB (244466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ad55b73f2e9b54c72c15623fe67947d5a22a5d2bb2e54421233fbc12de877c`  
		Last Modified: Thu, 03 Jan 2019 10:08:19 GMT  
		Size: 40.3 MB (40277211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:2416b55ff1b1830140d7b601b2251e87e579060a350d877a3c6c622a62450491
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57599361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c2a4efc72a7a1f9c3d9013dd271167ec870ec35da9a9f911e782b070898d18`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:13:51 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:14:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:14:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d81d8f5797a572fae5cd1d7742de30f0fa985f0a44965343f0f7c6ed4477d86`  
		Last Modified: Tue, 01 Jan 2019 13:27:50 GMT  
		Size: 244.5 KB (244475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7550c0766dd2a4bdc7cd3e42f102fe44797a741056adb4f03e858710ffd69c0e`  
		Last Modified: Tue, 01 Jan 2019 13:28:03 GMT  
		Size: 38.1 MB (38077131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:70e8219a870ce86737f92452b37a48eeefff7d7392a67fb192a3f808ed51fe6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62862594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314497ae4ee0bcb8b1486156606f65d8d26c97d9d7ddf7d9340c227842cf3497`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:45:12 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 10:46:38 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:48:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0065cdd8800d56732ae7984c61441fc6896d6da2da58568810fc1431a2c5226f`  
		Last Modified: Tue, 01 Jan 2019 11:19:39 GMT  
		Size: 244.5 KB (244517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bde928d6426d1e69af23169700f0d7af25ebe8ad116efa1c8a9f98493fc3336`  
		Last Modified: Tue, 01 Jan 2019 11:19:56 GMT  
		Size: 42.3 MB (42280566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; 386

```console
$ docker pull mono@sha256:a7d16a6bf2b1f30a6fdb707cf1d4ed7b283031879ecba896102d532cffa09251
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70534782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b82a1974d0d1556fe8448bce4032a031700027848fcf44c8ddeca40b6df11a0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:50 GMT
ENV MONO_VERSION=5.16.0.220
# Tue, 01 Jan 2019 13:03:00 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:03:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc8f1ff874e52a15309e2a724f8c2ef6b7ef4de98d320377253bb1b42e5436f`  
		Last Modified: Tue, 01 Jan 2019 13:08:09 GMT  
		Size: 244.5 KB (244460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916b8b8ee413f2f4349a4165b8d4b280c8608997e6f6d11653aeef06a724620f`  
		Last Modified: Tue, 01 Jan 2019 13:08:22 GMT  
		Size: 47.2 MB (47157167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:a2c4279ad8414d69ee83fb8569bcfeb448016127ec08a35bea54b7baaff47b1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47648137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb94de9eaa70f9fc357dde9266edea20025cf0f66c25abf76967438db46bf2e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:25:48 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 03 Jan 2019 09:27:05 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:28:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2966ab7e8a9b88bb69ad656c823b6d8e643af22ef9b2af830f85ba7b145067`  
		Last Modified: Thu, 03 Jan 2019 09:39:58 GMT  
		Size: 244.5 KB (244546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27a8394492f896007420884e6c4f7b4fdffb763d94eb4d00a09130bba0ed7ca`  
		Last Modified: Thu, 03 Jan 2019 09:40:04 GMT  
		Size: 24.7 MB (24656765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18`

```console
$ docker pull mono@sha256:c8add78cc971b7242cb3919a503ad7a695c518c14b7f288c96b6eb6ecc12ae0f
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
$ docker pull mono@sha256:30672cf29f3b35de2cfd7578771a00b1c792159464ec5004d35e903fd6660aca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171257044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853364a5a41d5eff51f680751059306d0ffd371dc7c87b633462fd00098842a7`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:48:27 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:48:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:49:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:55:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9082e076301c17d6b76037ab4814b649a017db39a9d7ba8faf2f5139138d10`  
		Last Modified: Thu, 03 Jan 2019 10:07:46 GMT  
		Size: 244.5 KB (244477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a48171f7806bbca6215990242565c6cf5ac46f7b4a2e6df9b15bd32526bef`  
		Last Modified: Thu, 03 Jan 2019 10:07:56 GMT  
		Size: 24.3 MB (24273913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b020fea764d6731e1713c0c01542a7c006219593e61d133fd70974d7416b1e20`  
		Last Modified: Thu, 03 Jan 2019 10:09:55 GMT  
		Size: 125.6 MB (125570878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm variant v7

```console
$ docker pull mono@sha256:c2c19f108ff61d8831f4e784389e010bd39a6174a402e815dc4d64d813a80282
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167321177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5da922fbfd3b3cb8880c79f977b52edc2dddac0bc883b919b8fc091ffe13024`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:17:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2757b5941fa1c481e5a5f51b61d8ce6ff0084e991de14cf3ec4c0090ea4ea9ca`  
		Last Modified: Tue, 01 Jan 2019 13:28:58 GMT  
		Size: 124.2 MB (124232289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:4fdd7e156f21becd6c7398446b120474082d1658d1745fe5eeea3c392e805f06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188146501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbabe1bdc16e55f66168e1339105fb94f04012f431cb97cde89f827d8837a5ea`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 10:59:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad49b13b612f416c00e97656612136e36aed3815f62bf3f4d78da24e43429b`  
		Last Modified: Tue, 01 Jan 2019 11:21:02 GMT  
		Size: 139.3 MB (139341485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; 386

```console
$ docker pull mono@sha256:3eb53c6ec633e2b3021aa13517a1936983b774f069c6854136c37b545d7542b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233023712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7819bbb4752b32a441969a4079e9b0d6b072de2108786ce8500e0edfd13024c6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:05:23 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84741bc12abf64510e0cdd8eaef8a9680f83ff24a7035b99c593f62551cee128`  
		Last Modified: Tue, 01 Jan 2019 13:09:07 GMT  
		Size: 145.7 MB (145690802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; ppc64le

```console
$ docker pull mono@sha256:c55ce9f7766d008d3cd65ed85a6639ed5d6b8196ef77951761594326adbd6071
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173614384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaea7abc4790aff3c3111788aaeda6c165f7e0888d63e6b3d490c599887909df`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:22:10 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:23:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:25:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:33:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5a5b0e2125b8ef85f6cd70e340451f4ca160d0b85958cea531967d74046f9`  
		Last Modified: Thu, 03 Jan 2019 09:39:34 GMT  
		Size: 244.6 KB (244567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a1b53eb40b00302d6c369c75d4590d04c2dcb3d80e275d5c4c3cac265ecb4`  
		Last Modified: Thu, 03 Jan 2019 09:39:40 GMT  
		Size: 24.6 MB (24636697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4c987aab03618a6b7e8ca07edd1aa8c4832f4009d50eff6df48168c9ef3445`  
		Last Modified: Thu, 03 Jan 2019 09:40:49 GMT  
		Size: 126.0 MB (125986294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0`

```console
$ docker pull mono@sha256:c8add78cc971b7242cb3919a503ad7a695c518c14b7f288c96b6eb6ecc12ae0f
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
$ docker pull mono@sha256:30672cf29f3b35de2cfd7578771a00b1c792159464ec5004d35e903fd6660aca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171257044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853364a5a41d5eff51f680751059306d0ffd371dc7c87b633462fd00098842a7`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:48:27 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:48:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:49:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:55:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9082e076301c17d6b76037ab4814b649a017db39a9d7ba8faf2f5139138d10`  
		Last Modified: Thu, 03 Jan 2019 10:07:46 GMT  
		Size: 244.5 KB (244477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a48171f7806bbca6215990242565c6cf5ac46f7b4a2e6df9b15bd32526bef`  
		Last Modified: Thu, 03 Jan 2019 10:07:56 GMT  
		Size: 24.3 MB (24273913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b020fea764d6731e1713c0c01542a7c006219593e61d133fd70974d7416b1e20`  
		Last Modified: Thu, 03 Jan 2019 10:09:55 GMT  
		Size: 125.6 MB (125570878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:c2c19f108ff61d8831f4e784389e010bd39a6174a402e815dc4d64d813a80282
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167321177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5da922fbfd3b3cb8880c79f977b52edc2dddac0bc883b919b8fc091ffe13024`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:17:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2757b5941fa1c481e5a5f51b61d8ce6ff0084e991de14cf3ec4c0090ea4ea9ca`  
		Last Modified: Tue, 01 Jan 2019 13:28:58 GMT  
		Size: 124.2 MB (124232289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:4fdd7e156f21becd6c7398446b120474082d1658d1745fe5eeea3c392e805f06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188146501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbabe1bdc16e55f66168e1339105fb94f04012f431cb97cde89f827d8837a5ea`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 10:59:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad49b13b612f416c00e97656612136e36aed3815f62bf3f4d78da24e43429b`  
		Last Modified: Tue, 01 Jan 2019 11:21:02 GMT  
		Size: 139.3 MB (139341485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; 386

```console
$ docker pull mono@sha256:3eb53c6ec633e2b3021aa13517a1936983b774f069c6854136c37b545d7542b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233023712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7819bbb4752b32a441969a4079e9b0d6b072de2108786ce8500e0edfd13024c6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:05:23 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84741bc12abf64510e0cdd8eaef8a9680f83ff24a7035b99c593f62551cee128`  
		Last Modified: Tue, 01 Jan 2019 13:09:07 GMT  
		Size: 145.7 MB (145690802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; ppc64le

```console
$ docker pull mono@sha256:c55ce9f7766d008d3cd65ed85a6639ed5d6b8196ef77951761594326adbd6071
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173614384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaea7abc4790aff3c3111788aaeda6c165f7e0888d63e6b3d490c599887909df`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:22:10 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:23:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:25:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:33:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5a5b0e2125b8ef85f6cd70e340451f4ca160d0b85958cea531967d74046f9`  
		Last Modified: Thu, 03 Jan 2019 09:39:34 GMT  
		Size: 244.6 KB (244567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a1b53eb40b00302d6c369c75d4590d04c2dcb3d80e275d5c4c3cac265ecb4`  
		Last Modified: Thu, 03 Jan 2019 09:39:40 GMT  
		Size: 24.6 MB (24636697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4c987aab03618a6b7e8ca07edd1aa8c4832f4009d50eff6df48168c9ef3445`  
		Last Modified: Thu, 03 Jan 2019 09:40:49 GMT  
		Size: 126.0 MB (125986294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0.225`

```console
$ docker pull mono@sha256:c8add78cc971b7242cb3919a503ad7a695c518c14b7f288c96b6eb6ecc12ae0f
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
$ docker pull mono@sha256:30672cf29f3b35de2cfd7578771a00b1c792159464ec5004d35e903fd6660aca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171257044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853364a5a41d5eff51f680751059306d0ffd371dc7c87b633462fd00098842a7`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:48:27 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:48:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:49:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:55:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9082e076301c17d6b76037ab4814b649a017db39a9d7ba8faf2f5139138d10`  
		Last Modified: Thu, 03 Jan 2019 10:07:46 GMT  
		Size: 244.5 KB (244477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a48171f7806bbca6215990242565c6cf5ac46f7b4a2e6df9b15bd32526bef`  
		Last Modified: Thu, 03 Jan 2019 10:07:56 GMT  
		Size: 24.3 MB (24273913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b020fea764d6731e1713c0c01542a7c006219593e61d133fd70974d7416b1e20`  
		Last Modified: Thu, 03 Jan 2019 10:09:55 GMT  
		Size: 125.6 MB (125570878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; arm variant v7

```console
$ docker pull mono@sha256:c2c19f108ff61d8831f4e784389e010bd39a6174a402e815dc4d64d813a80282
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167321177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5da922fbfd3b3cb8880c79f977b52edc2dddac0bc883b919b8fc091ffe13024`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:17:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2757b5941fa1c481e5a5f51b61d8ce6ff0084e991de14cf3ec4c0090ea4ea9ca`  
		Last Modified: Tue, 01 Jan 2019 13:28:58 GMT  
		Size: 124.2 MB (124232289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:4fdd7e156f21becd6c7398446b120474082d1658d1745fe5eeea3c392e805f06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188146501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbabe1bdc16e55f66168e1339105fb94f04012f431cb97cde89f827d8837a5ea`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 10:59:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad49b13b612f416c00e97656612136e36aed3815f62bf3f4d78da24e43429b`  
		Last Modified: Tue, 01 Jan 2019 11:21:02 GMT  
		Size: 139.3 MB (139341485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; 386

```console
$ docker pull mono@sha256:3eb53c6ec633e2b3021aa13517a1936983b774f069c6854136c37b545d7542b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233023712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7819bbb4752b32a441969a4079e9b0d6b072de2108786ce8500e0edfd13024c6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:05:23 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84741bc12abf64510e0cdd8eaef8a9680f83ff24a7035b99c593f62551cee128`  
		Last Modified: Tue, 01 Jan 2019 13:09:07 GMT  
		Size: 145.7 MB (145690802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; ppc64le

```console
$ docker pull mono@sha256:c55ce9f7766d008d3cd65ed85a6639ed5d6b8196ef77951761594326adbd6071
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173614384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaea7abc4790aff3c3111788aaeda6c165f7e0888d63e6b3d490c599887909df`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:22:10 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:23:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:25:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:33:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5a5b0e2125b8ef85f6cd70e340451f4ca160d0b85958cea531967d74046f9`  
		Last Modified: Thu, 03 Jan 2019 09:39:34 GMT  
		Size: 244.6 KB (244567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a1b53eb40b00302d6c369c75d4590d04c2dcb3d80e275d5c4c3cac265ecb4`  
		Last Modified: Thu, 03 Jan 2019 09:39:40 GMT  
		Size: 24.6 MB (24636697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4c987aab03618a6b7e8ca07edd1aa8c4832f4009d50eff6df48168c9ef3445`  
		Last Modified: Thu, 03 Jan 2019 09:40:49 GMT  
		Size: 126.0 MB (125986294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0.225-slim`

```console
$ docker pull mono@sha256:0b5cc4722d81d577c412c1815260ad8d0818d04d3799cf3bbd1d5d817778975c
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
$ docker pull mono@sha256:27af68f06925e6027d24bdc6f1883c44831e761b1a6d261cca3b829a31f3d08e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45686166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d47368624ca9868b896a242743060532b118dbde1f6d00f98184d00faa4695`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:48:27 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:48:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:49:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9082e076301c17d6b76037ab4814b649a017db39a9d7ba8faf2f5139138d10`  
		Last Modified: Thu, 03 Jan 2019 10:07:46 GMT  
		Size: 244.5 KB (244477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a48171f7806bbca6215990242565c6cf5ac46f7b4a2e6df9b15bd32526bef`  
		Last Modified: Thu, 03 Jan 2019 10:07:56 GMT  
		Size: 24.3 MB (24273913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:d261caa9599b2525ca7d605863ac8a112c46564abbc5b3afa6319cec645997e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43088888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373abbe56b517624c3fdda002614eec317375bd87ab4e4770773f6709d06ef27`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:5b2eb39690d5583c97ca9a07ae31b039ba45869b606e1b7ffdc73b62ec96d0ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48805016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd39716fe954f301e21892647c66f583999aae428aac37035358a507e81db499`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; 386

```console
$ docker pull mono@sha256:3072141c81371832830a36773f747133a734c8da6ea005219a44e4cedd9c520a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87332910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c714532b426976996a8f945facfe61badfccffef6325f3aa7e46c0713b887d3f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:ff1258a277c892da077a512b39b130cd399300614a336609d70cf3467665ffdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47628090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6d5dfebf0bc09357cdb9e76eb801b104b90743960189d9e27b61f5874250ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:22:10 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:23:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:25:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5a5b0e2125b8ef85f6cd70e340451f4ca160d0b85958cea531967d74046f9`  
		Last Modified: Thu, 03 Jan 2019 09:39:34 GMT  
		Size: 244.6 KB (244567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a1b53eb40b00302d6c369c75d4590d04c2dcb3d80e275d5c4c3cac265ecb4`  
		Last Modified: Thu, 03 Jan 2019 09:39:40 GMT  
		Size: 24.6 MB (24636697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0-slim`

```console
$ docker pull mono@sha256:0b5cc4722d81d577c412c1815260ad8d0818d04d3799cf3bbd1d5d817778975c
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
$ docker pull mono@sha256:27af68f06925e6027d24bdc6f1883c44831e761b1a6d261cca3b829a31f3d08e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45686166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d47368624ca9868b896a242743060532b118dbde1f6d00f98184d00faa4695`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:48:27 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:48:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:49:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9082e076301c17d6b76037ab4814b649a017db39a9d7ba8faf2f5139138d10`  
		Last Modified: Thu, 03 Jan 2019 10:07:46 GMT  
		Size: 244.5 KB (244477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a48171f7806bbca6215990242565c6cf5ac46f7b4a2e6df9b15bd32526bef`  
		Last Modified: Thu, 03 Jan 2019 10:07:56 GMT  
		Size: 24.3 MB (24273913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:d261caa9599b2525ca7d605863ac8a112c46564abbc5b3afa6319cec645997e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43088888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373abbe56b517624c3fdda002614eec317375bd87ab4e4770773f6709d06ef27`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:5b2eb39690d5583c97ca9a07ae31b039ba45869b606e1b7ffdc73b62ec96d0ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48805016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd39716fe954f301e21892647c66f583999aae428aac37035358a507e81db499`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; 386

```console
$ docker pull mono@sha256:3072141c81371832830a36773f747133a734c8da6ea005219a44e4cedd9c520a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87332910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c714532b426976996a8f945facfe61badfccffef6325f3aa7e46c0713b887d3f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:ff1258a277c892da077a512b39b130cd399300614a336609d70cf3467665ffdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47628090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6d5dfebf0bc09357cdb9e76eb801b104b90743960189d9e27b61f5874250ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:22:10 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:23:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:25:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5a5b0e2125b8ef85f6cd70e340451f4ca160d0b85958cea531967d74046f9`  
		Last Modified: Thu, 03 Jan 2019 09:39:34 GMT  
		Size: 244.6 KB (244567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a1b53eb40b00302d6c369c75d4590d04c2dcb3d80e275d5c4c3cac265ecb4`  
		Last Modified: Thu, 03 Jan 2019 09:39:40 GMT  
		Size: 24.6 MB (24636697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18-slim`

```console
$ docker pull mono@sha256:0b5cc4722d81d577c412c1815260ad8d0818d04d3799cf3bbd1d5d817778975c
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
$ docker pull mono@sha256:27af68f06925e6027d24bdc6f1883c44831e761b1a6d261cca3b829a31f3d08e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45686166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d47368624ca9868b896a242743060532b118dbde1f6d00f98184d00faa4695`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:48:27 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:48:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:49:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9082e076301c17d6b76037ab4814b649a017db39a9d7ba8faf2f5139138d10`  
		Last Modified: Thu, 03 Jan 2019 10:07:46 GMT  
		Size: 244.5 KB (244477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a48171f7806bbca6215990242565c6cf5ac46f7b4a2e6df9b15bd32526bef`  
		Last Modified: Thu, 03 Jan 2019 10:07:56 GMT  
		Size: 24.3 MB (24273913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:d261caa9599b2525ca7d605863ac8a112c46564abbc5b3afa6319cec645997e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43088888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373abbe56b517624c3fdda002614eec317375bd87ab4e4770773f6709d06ef27`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:5b2eb39690d5583c97ca9a07ae31b039ba45869b606e1b7ffdc73b62ec96d0ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48805016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd39716fe954f301e21892647c66f583999aae428aac37035358a507e81db499`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; 386

```console
$ docker pull mono@sha256:3072141c81371832830a36773f747133a734c8da6ea005219a44e4cedd9c520a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87332910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c714532b426976996a8f945facfe61badfccffef6325f3aa7e46c0713b887d3f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:ff1258a277c892da077a512b39b130cd399300614a336609d70cf3467665ffdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47628090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6d5dfebf0bc09357cdb9e76eb801b104b90743960189d9e27b61f5874250ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:22:10 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:23:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:25:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5a5b0e2125b8ef85f6cd70e340451f4ca160d0b85958cea531967d74046f9`  
		Last Modified: Thu, 03 Jan 2019 09:39:34 GMT  
		Size: 244.6 KB (244567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a1b53eb40b00302d6c369c75d4590d04c2dcb3d80e275d5c4c3cac265ecb4`  
		Last Modified: Thu, 03 Jan 2019 09:39:40 GMT  
		Size: 24.6 MB (24636697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:0b5cc4722d81d577c412c1815260ad8d0818d04d3799cf3bbd1d5d817778975c
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
$ docker pull mono@sha256:27af68f06925e6027d24bdc6f1883c44831e761b1a6d261cca3b829a31f3d08e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45686166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d47368624ca9868b896a242743060532b118dbde1f6d00f98184d00faa4695`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:48:27 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:48:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:49:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9082e076301c17d6b76037ab4814b649a017db39a9d7ba8faf2f5139138d10`  
		Last Modified: Thu, 03 Jan 2019 10:07:46 GMT  
		Size: 244.5 KB (244477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a48171f7806bbca6215990242565c6cf5ac46f7b4a2e6df9b15bd32526bef`  
		Last Modified: Thu, 03 Jan 2019 10:07:56 GMT  
		Size: 24.3 MB (24273913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:d261caa9599b2525ca7d605863ac8a112c46564abbc5b3afa6319cec645997e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43088888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373abbe56b517624c3fdda002614eec317375bd87ab4e4770773f6709d06ef27`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:5b2eb39690d5583c97ca9a07ae31b039ba45869b606e1b7ffdc73b62ec96d0ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48805016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd39716fe954f301e21892647c66f583999aae428aac37035358a507e81db499`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:3072141c81371832830a36773f747133a734c8da6ea005219a44e4cedd9c520a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87332910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c714532b426976996a8f945facfe61badfccffef6325f3aa7e46c0713b887d3f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:ff1258a277c892da077a512b39b130cd399300614a336609d70cf3467665ffdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47628090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6d5dfebf0bc09357cdb9e76eb801b104b90743960189d9e27b61f5874250ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:22:10 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:23:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:25:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5a5b0e2125b8ef85f6cd70e340451f4ca160d0b85958cea531967d74046f9`  
		Last Modified: Thu, 03 Jan 2019 09:39:34 GMT  
		Size: 244.6 KB (244567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a1b53eb40b00302d6c369c75d4590d04c2dcb3d80e275d5c4c3cac265ecb4`  
		Last Modified: Thu, 03 Jan 2019 09:39:40 GMT  
		Size: 24.6 MB (24636697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:c8add78cc971b7242cb3919a503ad7a695c518c14b7f288c96b6eb6ecc12ae0f
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
$ docker pull mono@sha256:30672cf29f3b35de2cfd7578771a00b1c792159464ec5004d35e903fd6660aca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171257044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853364a5a41d5eff51f680751059306d0ffd371dc7c87b633462fd00098842a7`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:48:27 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:48:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:49:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:55:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9082e076301c17d6b76037ab4814b649a017db39a9d7ba8faf2f5139138d10`  
		Last Modified: Thu, 03 Jan 2019 10:07:46 GMT  
		Size: 244.5 KB (244477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a48171f7806bbca6215990242565c6cf5ac46f7b4a2e6df9b15bd32526bef`  
		Last Modified: Thu, 03 Jan 2019 10:07:56 GMT  
		Size: 24.3 MB (24273913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b020fea764d6731e1713c0c01542a7c006219593e61d133fd70974d7416b1e20`  
		Last Modified: Thu, 03 Jan 2019 10:09:55 GMT  
		Size: 125.6 MB (125570878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:c2c19f108ff61d8831f4e784389e010bd39a6174a402e815dc4d64d813a80282
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167321177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5da922fbfd3b3cb8880c79f977b52edc2dddac0bc883b919b8fc091ffe13024`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:17:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2757b5941fa1c481e5a5f51b61d8ce6ff0084e991de14cf3ec4c0090ea4ea9ca`  
		Last Modified: Tue, 01 Jan 2019 13:28:58 GMT  
		Size: 124.2 MB (124232289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:4fdd7e156f21becd6c7398446b120474082d1658d1745fe5eeea3c392e805f06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.1 MB (188146501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbabe1bdc16e55f66168e1339105fb94f04012f431cb97cde89f827d8837a5ea`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 10:59:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad49b13b612f416c00e97656612136e36aed3815f62bf3f4d78da24e43429b`  
		Last Modified: Tue, 01 Jan 2019 11:21:02 GMT  
		Size: 139.3 MB (139341485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:3eb53c6ec633e2b3021aa13517a1936983b774f069c6854136c37b545d7542b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233023712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7819bbb4752b32a441969a4079e9b0d6b072de2108786ce8500e0edfd13024c6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 01 Jan 2019 13:05:23 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84741bc12abf64510e0cdd8eaef8a9680f83ff24a7035b99c593f62551cee128`  
		Last Modified: Tue, 01 Jan 2019 13:09:07 GMT  
		Size: 145.7 MB (145690802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; ppc64le

```console
$ docker pull mono@sha256:c55ce9f7766d008d3cd65ed85a6639ed5d6b8196ef77951761594326adbd6071
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173614384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaea7abc4790aff3c3111788aaeda6c165f7e0888d63e6b3d490c599887909df`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:22:10 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:23:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:25:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 03 Jan 2019 09:33:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5a5b0e2125b8ef85f6cd70e340451f4ca160d0b85958cea531967d74046f9`  
		Last Modified: Thu, 03 Jan 2019 09:39:34 GMT  
		Size: 244.6 KB (244567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a1b53eb40b00302d6c369c75d4590d04c2dcb3d80e275d5c4c3cac265ecb4`  
		Last Modified: Thu, 03 Jan 2019 09:39:40 GMT  
		Size: 24.6 MB (24636697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4c987aab03618a6b7e8ca07edd1aa8c4832f4009d50eff6df48168c9ef3445`  
		Last Modified: Thu, 03 Jan 2019 09:40:49 GMT  
		Size: 126.0 MB (125986294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:0b5cc4722d81d577c412c1815260ad8d0818d04d3799cf3bbd1d5d817778975c
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
$ docker pull mono@sha256:27af68f06925e6027d24bdc6f1883c44831e761b1a6d261cca3b829a31f3d08e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45686166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d47368624ca9868b896a242743060532b118dbde1f6d00f98184d00faa4695`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:48:27 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:48:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:49:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9082e076301c17d6b76037ab4814b649a017db39a9d7ba8faf2f5139138d10`  
		Last Modified: Thu, 03 Jan 2019 10:07:46 GMT  
		Size: 244.5 KB (244477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a48171f7806bbca6215990242565c6cf5ac46f7b4a2e6df9b15bd32526bef`  
		Last Modified: Thu, 03 Jan 2019 10:07:56 GMT  
		Size: 24.3 MB (24273913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:d261caa9599b2525ca7d605863ac8a112c46564abbc5b3afa6319cec645997e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43088888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373abbe56b517624c3fdda002614eec317375bd87ab4e4770773f6709d06ef27`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:12:37 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:12:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:13:37 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0518efed8ece651030fe5b135124ba11d5271181d82013965d0b223a662d23d1`  
		Last Modified: Tue, 01 Jan 2019 13:27:33 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbdcedc0e567de24d9033d88e9cd2c95570cf94f385d9de8481b793153e475f`  
		Last Modified: Tue, 01 Jan 2019 13:27:41 GMT  
		Size: 23.6 MB (23566660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:5b2eb39690d5583c97ca9a07ae31b039ba45869b606e1b7ffdc73b62ec96d0ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48805016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd39716fe954f301e21892647c66f583999aae428aac37035358a507e81db499`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 10:42:11 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 10:43:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 10:45:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728705b49f341a57eb07e2c58fd16a7fbf4b8b85f538c38112364bf25e9476d0`  
		Last Modified: Tue, 01 Jan 2019 11:19:13 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737325de54b02a74d0dc3c9caa4ac36cb01229b12bb9e45282c8fe871d82e49`  
		Last Modified: Tue, 01 Jan 2019 11:19:26 GMT  
		Size: 28.2 MB (28223032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:3072141c81371832830a36773f747133a734c8da6ea005219a44e4cedd9c520a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87332910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c714532b426976996a8f945facfe61badfccffef6325f3aa7e46c0713b887d3f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Tue, 01 Jan 2019 13:02:06 GMT
ENV MONO_VERSION=5.18.0.225
# Tue, 01 Jan 2019 13:02:18 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 01 Jan 2019 13:02:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a3439e6a87a8ed6cb0d0dc299a309565268f3c6ef0a6849aad53a217788e21`  
		Last Modified: Tue, 01 Jan 2019 13:07:43 GMT  
		Size: 244.5 KB (244454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142b0528f5b86a8d02656ed8f3f8aa53131ce2e9b813329be2fc36b8dff9da3b`  
		Last Modified: Tue, 01 Jan 2019 13:08:02 GMT  
		Size: 64.0 MB (63955301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; ppc64le

```console
$ docker pull mono@sha256:ff1258a277c892da077a512b39b130cd399300614a336609d70cf3467665ffdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47628090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6d5dfebf0bc09357cdb9e76eb801b104b90743960189d9e27b61f5874250ce`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Thu, 03 Jan 2019 09:22:10 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 03 Jan 2019 09:23:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 03 Jan 2019 09:25:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5a5b0e2125b8ef85f6cd70e340451f4ca160d0b85958cea531967d74046f9`  
		Last Modified: Thu, 03 Jan 2019 09:39:34 GMT  
		Size: 244.6 KB (244567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a1b53eb40b00302d6c369c75d4590d04c2dcb3d80e275d5c4c3cac265ecb4`  
		Last Modified: Thu, 03 Jan 2019 09:39:40 GMT  
		Size: 24.6 MB (24636697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

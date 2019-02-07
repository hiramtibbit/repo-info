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
$ docker pull mono@sha256:7823cebcd737ef9114aab060029f35317248ea55410a1de50b2a60a9901d150a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:c176baba1f2e45170e44752c021645c872d546dd500c997b44d2b380cdbfd4a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5b1e80b57b1d70abd4dd360525bc01d55e969bf66d1da102b0538a4248ee5a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:30 GMT
ADD file:8cf36f5c76ea3119278e91016148dd680311000ba59b5fa986b707f000a40906 in / 
# Wed, 06 Feb 2019 03:31:30 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:41:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 06 Feb 2019 06:41:48 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 06 Feb 2019 06:41:59 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:42:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 06 Feb 2019 06:42:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2eaed095b90d08fb6a1870ea73a7bff5cd989c5969dd5ed3be88483796869559`  
		Last Modified: Wed, 06 Feb 2019 03:36:56 GMT  
		Size: 39.3 MB (39339703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8afc779ef4304877181d26fff33edbd15ab7a9359d3e4ec94b3acf4d844dac`  
		Last Modified: Wed, 06 Feb 2019 06:58:34 GMT  
		Size: 6.4 MB (6418999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9477e366fb9857ba85cc98fb2ec89bc0d38dbcd077effcc899a015915ed2f041`  
		Last Modified: Wed, 06 Feb 2019 06:58:33 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f825a7b0fa220b5987694fe5228cc9806a1ec6b1be1e1a35f0e8e3ba02e41bf0`  
		Last Modified: Wed, 06 Feb 2019 06:58:57 GMT  
		Size: 107.2 MB (107181127 bytes)  
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
$ docker pull mono@sha256:b04b2edddfbde0c5dc0d2fdd969d3aac857627bc4003f81c0fb91013f3c8fe86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae3fa487413a097ca9008c208bd33344e1e4b2602cf6af1c27539407a3c7d0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:05:25 GMT
ADD file:05857c02422fe7316ce1c897732369dfcd2216d72f38e7d23b05a87c84f00bda in / 
# Thu, 07 Feb 2019 13:05:26 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:47:36 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 15:47:36 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 15:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:47:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 15:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39aa05e112a663f159c176b484d3cebbd5ddc1396f57063aca1827314ffdabd8`  
		Last Modified: Thu, 07 Feb 2019 02:15:23 GMT  
		Size: 36.6 MB (36619990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f746f08ed828944c07134f03ed7cfc5c0789e5f48b10b47fab2440df093b4620`  
		Last Modified: Thu, 07 Feb 2019 16:02:48 GMT  
		Size: 6.1 MB (6116736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2745fa28f14174c1673f1e6a354749a3b5caf8e8dbbde8df7ceffbd4617e71de`  
		Last Modified: Thu, 07 Feb 2019 16:02:46 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f810e039f24df141ff1fba788a8edceb0abf6d9615cc4e88dbb26ba74bb49603`  
		Last Modified: Thu, 07 Feb 2019 16:03:24 GMT  
		Size: 96.1 MB (96121817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; 386

```console
$ docker pull mono@sha256:6b92db5bc95b36f309e32bb8ae47738830094138c4ba8bd3fd2596e2f8007691
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46472562706cc6af90e6030715a001635e5521b57d487649fdda2625f3026811`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:07:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 02:07:09 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 02:07:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:07:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 02:08:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf338459b4ff3e293d27a967ddd256706f379eee7e6a1f9681c51dc98750ff8`  
		Last Modified: Thu, 07 Feb 2019 02:13:11 GMT  
		Size: 6.4 MB (6406265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b038f867efaa3ef3315ce91e62c734da6e87c94936d293d6d49630e54cb38228`  
		Last Modified: Thu, 07 Feb 2019 02:13:09 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19018f0dd7a82f7a3606ae219cc11bdf8eef85b109af157ca02a111fb11260b1`  
		Last Modified: Thu, 07 Feb 2019 02:13:37 GMT  
		Size: 106.0 MB (105992510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:7823cebcd737ef9114aab060029f35317248ea55410a1de50b2a60a9901d150a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:c176baba1f2e45170e44752c021645c872d546dd500c997b44d2b380cdbfd4a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5b1e80b57b1d70abd4dd360525bc01d55e969bf66d1da102b0538a4248ee5a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:30 GMT
ADD file:8cf36f5c76ea3119278e91016148dd680311000ba59b5fa986b707f000a40906 in / 
# Wed, 06 Feb 2019 03:31:30 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:41:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 06 Feb 2019 06:41:48 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 06 Feb 2019 06:41:59 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:42:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 06 Feb 2019 06:42:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2eaed095b90d08fb6a1870ea73a7bff5cd989c5969dd5ed3be88483796869559`  
		Last Modified: Wed, 06 Feb 2019 03:36:56 GMT  
		Size: 39.3 MB (39339703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8afc779ef4304877181d26fff33edbd15ab7a9359d3e4ec94b3acf4d844dac`  
		Last Modified: Wed, 06 Feb 2019 06:58:34 GMT  
		Size: 6.4 MB (6418999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9477e366fb9857ba85cc98fb2ec89bc0d38dbcd077effcc899a015915ed2f041`  
		Last Modified: Wed, 06 Feb 2019 06:58:33 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f825a7b0fa220b5987694fe5228cc9806a1ec6b1be1e1a35f0e8e3ba02e41bf0`  
		Last Modified: Wed, 06 Feb 2019 06:58:57 GMT  
		Size: 107.2 MB (107181127 bytes)  
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
$ docker pull mono@sha256:b04b2edddfbde0c5dc0d2fdd969d3aac857627bc4003f81c0fb91013f3c8fe86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae3fa487413a097ca9008c208bd33344e1e4b2602cf6af1c27539407a3c7d0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:05:25 GMT
ADD file:05857c02422fe7316ce1c897732369dfcd2216d72f38e7d23b05a87c84f00bda in / 
# Thu, 07 Feb 2019 13:05:26 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:47:36 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 15:47:36 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 15:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:47:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 15:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39aa05e112a663f159c176b484d3cebbd5ddc1396f57063aca1827314ffdabd8`  
		Last Modified: Thu, 07 Feb 2019 02:15:23 GMT  
		Size: 36.6 MB (36619990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f746f08ed828944c07134f03ed7cfc5c0789e5f48b10b47fab2440df093b4620`  
		Last Modified: Thu, 07 Feb 2019 16:02:48 GMT  
		Size: 6.1 MB (6116736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2745fa28f14174c1673f1e6a354749a3b5caf8e8dbbde8df7ceffbd4617e71de`  
		Last Modified: Thu, 07 Feb 2019 16:02:46 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f810e039f24df141ff1fba788a8edceb0abf6d9615cc4e88dbb26ba74bb49603`  
		Last Modified: Thu, 07 Feb 2019 16:03:24 GMT  
		Size: 96.1 MB (96121817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; 386

```console
$ docker pull mono@sha256:6b92db5bc95b36f309e32bb8ae47738830094138c4ba8bd3fd2596e2f8007691
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46472562706cc6af90e6030715a001635e5521b57d487649fdda2625f3026811`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:07:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 02:07:09 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 02:07:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:07:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 02:08:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf338459b4ff3e293d27a967ddd256706f379eee7e6a1f9681c51dc98750ff8`  
		Last Modified: Thu, 07 Feb 2019 02:13:11 GMT  
		Size: 6.4 MB (6406265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b038f867efaa3ef3315ce91e62c734da6e87c94936d293d6d49630e54cb38228`  
		Last Modified: Thu, 07 Feb 2019 02:13:09 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19018f0dd7a82f7a3606ae219cc11bdf8eef85b109af157ca02a111fb11260b1`  
		Last Modified: Thu, 07 Feb 2019 02:13:37 GMT  
		Size: 106.0 MB (105992510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:7823cebcd737ef9114aab060029f35317248ea55410a1de50b2a60a9901d150a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:c176baba1f2e45170e44752c021645c872d546dd500c997b44d2b380cdbfd4a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5b1e80b57b1d70abd4dd360525bc01d55e969bf66d1da102b0538a4248ee5a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:30 GMT
ADD file:8cf36f5c76ea3119278e91016148dd680311000ba59b5fa986b707f000a40906 in / 
# Wed, 06 Feb 2019 03:31:30 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:41:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 06 Feb 2019 06:41:48 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 06 Feb 2019 06:41:59 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:42:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 06 Feb 2019 06:42:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2eaed095b90d08fb6a1870ea73a7bff5cd989c5969dd5ed3be88483796869559`  
		Last Modified: Wed, 06 Feb 2019 03:36:56 GMT  
		Size: 39.3 MB (39339703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8afc779ef4304877181d26fff33edbd15ab7a9359d3e4ec94b3acf4d844dac`  
		Last Modified: Wed, 06 Feb 2019 06:58:34 GMT  
		Size: 6.4 MB (6418999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9477e366fb9857ba85cc98fb2ec89bc0d38dbcd077effcc899a015915ed2f041`  
		Last Modified: Wed, 06 Feb 2019 06:58:33 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f825a7b0fa220b5987694fe5228cc9806a1ec6b1be1e1a35f0e8e3ba02e41bf0`  
		Last Modified: Wed, 06 Feb 2019 06:58:57 GMT  
		Size: 107.2 MB (107181127 bytes)  
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
$ docker pull mono@sha256:b04b2edddfbde0c5dc0d2fdd969d3aac857627bc4003f81c0fb91013f3c8fe86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae3fa487413a097ca9008c208bd33344e1e4b2602cf6af1c27539407a3c7d0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:05:25 GMT
ADD file:05857c02422fe7316ce1c897732369dfcd2216d72f38e7d23b05a87c84f00bda in / 
# Thu, 07 Feb 2019 13:05:26 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:47:36 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 15:47:36 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 15:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:47:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 15:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39aa05e112a663f159c176b484d3cebbd5ddc1396f57063aca1827314ffdabd8`  
		Last Modified: Thu, 07 Feb 2019 02:15:23 GMT  
		Size: 36.6 MB (36619990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f746f08ed828944c07134f03ed7cfc5c0789e5f48b10b47fab2440df093b4620`  
		Last Modified: Thu, 07 Feb 2019 16:02:48 GMT  
		Size: 6.1 MB (6116736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2745fa28f14174c1673f1e6a354749a3b5caf8e8dbbde8df7ceffbd4617e71de`  
		Last Modified: Thu, 07 Feb 2019 16:02:46 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f810e039f24df141ff1fba788a8edceb0abf6d9615cc4e88dbb26ba74bb49603`  
		Last Modified: Thu, 07 Feb 2019 16:03:24 GMT  
		Size: 96.1 MB (96121817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; 386

```console
$ docker pull mono@sha256:6b92db5bc95b36f309e32bb8ae47738830094138c4ba8bd3fd2596e2f8007691
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46472562706cc6af90e6030715a001635e5521b57d487649fdda2625f3026811`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:07:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 02:07:09 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 02:07:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:07:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 02:08:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf338459b4ff3e293d27a967ddd256706f379eee7e6a1f9681c51dc98750ff8`  
		Last Modified: Thu, 07 Feb 2019 02:13:11 GMT  
		Size: 6.4 MB (6406265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b038f867efaa3ef3315ce91e62c734da6e87c94936d293d6d49630e54cb38228`  
		Last Modified: Thu, 07 Feb 2019 02:13:09 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19018f0dd7a82f7a3606ae219cc11bdf8eef85b109af157ca02a111fb11260b1`  
		Last Modified: Thu, 07 Feb 2019 02:13:37 GMT  
		Size: 106.0 MB (105992510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:7823cebcd737ef9114aab060029f35317248ea55410a1de50b2a60a9901d150a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:c176baba1f2e45170e44752c021645c872d546dd500c997b44d2b380cdbfd4a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152969731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e5b1e80b57b1d70abd4dd360525bc01d55e969bf66d1da102b0538a4248ee5a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:30 GMT
ADD file:8cf36f5c76ea3119278e91016148dd680311000ba59b5fa986b707f000a40906 in / 
# Wed, 06 Feb 2019 03:31:30 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:41:48 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 06 Feb 2019 06:41:48 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 06 Feb 2019 06:41:59 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:42:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 06 Feb 2019 06:42:57 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2eaed095b90d08fb6a1870ea73a7bff5cd989c5969dd5ed3be88483796869559`  
		Last Modified: Wed, 06 Feb 2019 03:36:56 GMT  
		Size: 39.3 MB (39339703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8afc779ef4304877181d26fff33edbd15ab7a9359d3e4ec94b3acf4d844dac`  
		Last Modified: Wed, 06 Feb 2019 06:58:34 GMT  
		Size: 6.4 MB (6418999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9477e366fb9857ba85cc98fb2ec89bc0d38dbcd077effcc899a015915ed2f041`  
		Last Modified: Wed, 06 Feb 2019 06:58:33 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f825a7b0fa220b5987694fe5228cc9806a1ec6b1be1e1a35f0e8e3ba02e41bf0`  
		Last Modified: Wed, 06 Feb 2019 06:58:57 GMT  
		Size: 107.2 MB (107181127 bytes)  
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
$ docker pull mono@sha256:b04b2edddfbde0c5dc0d2fdd969d3aac857627bc4003f81c0fb91013f3c8fe86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138888450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efae3fa487413a097ca9008c208bd33344e1e4b2602cf6af1c27539407a3c7d0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:05:25 GMT
ADD file:05857c02422fe7316ce1c897732369dfcd2216d72f38e7d23b05a87c84f00bda in / 
# Thu, 07 Feb 2019 13:05:26 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:47:36 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 15:47:36 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 15:47:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:47:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 15:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39aa05e112a663f159c176b484d3cebbd5ddc1396f57063aca1827314ffdabd8`  
		Last Modified: Thu, 07 Feb 2019 02:15:23 GMT  
		Size: 36.6 MB (36619990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f746f08ed828944c07134f03ed7cfc5c0789e5f48b10b47fab2440df093b4620`  
		Last Modified: Thu, 07 Feb 2019 16:02:48 GMT  
		Size: 6.1 MB (6116736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2745fa28f14174c1673f1e6a354749a3b5caf8e8dbbde8df7ceffbd4617e71de`  
		Last Modified: Thu, 07 Feb 2019 16:02:46 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f810e039f24df141ff1fba788a8edceb0abf6d9615cc4e88dbb26ba74bb49603`  
		Last Modified: Thu, 07 Feb 2019 16:03:24 GMT  
		Size: 96.1 MB (96121817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; 386

```console
$ docker pull mono@sha256:6b92db5bc95b36f309e32bb8ae47738830094138c4ba8bd3fd2596e2f8007691
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152961451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46472562706cc6af90e6030715a001635e5521b57d487649fdda2625f3026811`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:07:09 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 07 Feb 2019 02:07:09 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 07 Feb 2019 02:07:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:07:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 07 Feb 2019 02:08:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf338459b4ff3e293d27a967ddd256706f379eee7e6a1f9681c51dc98750ff8`  
		Last Modified: Thu, 07 Feb 2019 02:13:11 GMT  
		Size: 6.4 MB (6406265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b038f867efaa3ef3315ce91e62c734da6e87c94936d293d6d49630e54cb38228`  
		Last Modified: Thu, 07 Feb 2019 02:13:09 GMT  
		Size: 29.9 KB (29900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19018f0dd7a82f7a3606ae219cc11bdf8eef85b109af157ca02a111fb11260b1`  
		Last Modified: Thu, 07 Feb 2019 02:13:37 GMT  
		Size: 106.0 MB (105992510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:96cd05ac687ce0171831bb57c7f86f3e4a395f18ada3602836cc05b7cb965ba7
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
$ docker pull mono@sha256:0a7417e09c85ae9032059fdbdb40302915c279d600b0ee861f9fb349e1489ee6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223995843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80f7d8a7bdac07a7d13bd8f7528f5981a239ef654966f405ec4b7985858ba57`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:40:12 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 06:40:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:40:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 06:51:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7fa37d56fbc0f9e9bd907ced771f57dd864abb25c4d8c7d6eb94e6eee1ae91`  
		Last Modified: Wed, 06 Feb 2019 06:57:59 GMT  
		Size: 244.4 KB (244449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4533638a5ce9e353e8381eec158582c7ee9df26f4e7e235948be9568da7c0`  
		Last Modified: Wed, 06 Feb 2019 06:58:13 GMT  
		Size: 61.1 MB (61149729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbbc028c51fc5bad9ed586797ec9a671bb88edfddee5a4bd0a19af839f1d488`  
		Last Modified: Wed, 06 Feb 2019 06:59:31 GMT  
		Size: 140.1 MB (140101377 bytes)  
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
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2523470d4978007402f86e80d912ae53149c31748aaba1c6404da32056d6da16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188159263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778c3bc57dc14f6063344ee96510bfb914c9e78c6d9847fa8ccafc84615b3c74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:07:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2b54baaf344cdb81cf7126b8ef2acd8d590b7724b62ac56960cae31cafb35`  
		Last Modified: Wed, 06 Feb 2019 22:30:59 GMT  
		Size: 139.3 MB (139341299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16`

```console
$ docker pull mono@sha256:a5a24fdeb3d82fd6886d2b63fa2b3a1038f4d6b6a15e2dc4e903831c8e8da1e5
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
$ docker pull mono@sha256:8da639ec424ab027144e2528cecfe9667a694acffb5cb09c7933d29ea70d3d89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205203115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c4a2f95c5a01ed6e9c1bdf613069628958d6d1a596c26df711afcea123226c7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:41:04 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 06:41:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:41:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 06:57:44 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277d48bd6c1bd131c1869740599babb1f23d7637dc66224e6832dcbcec001095`  
		Last Modified: Wed, 06 Feb 2019 06:58:19 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96ada49e3040715a9efa93d9c668a2080a9c86a01de7d8e910f6236869d5d`  
		Last Modified: Wed, 06 Feb 2019 06:58:29 GMT  
		Size: 45.7 MB (45721108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0315548fd21f92aa33c285bd8e5cc8f7f53ac913e5f65632803fdad56bfb6`  
		Last Modified: Wed, 06 Feb 2019 07:00:04 GMT  
		Size: 136.7 MB (136737271 bytes)  
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
$ docker pull mono@sha256:104e2b3ad014450b3f39ee7e12d956a649d99cee4d9523517d2ab21706b8b726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178638798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728c765aa2296cf55c5bfbc788e00c557aa5067ebfc2ebd78fc21a50f53fe343`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 16:01:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21ab460d29dd683d2adfd96d62f5b65e81afaa1b6a2ff6a8026c325da06d15`  
		Last Modified: Thu, 07 Feb 2019 16:05:15 GMT  
		Size: 121.0 MB (121026416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:f42ad36101f3545254e2e41b9a993ddc082f6eb15986b153ec47ec3a7f52adb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197397500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a2bbdd94d04e44a8b2deaf9acaa1decd7972c5c05d48790215b7fce417eb85`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:55:32 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 21:56:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:58:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:28:22 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8222490bd951e6dffb04f55142adc0b4f2514bae81f9d73634df1479e3b4a`  
		Last Modified: Wed, 06 Feb 2019 22:29:16 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64199e916c8a93a0979d51a7876e7bd0a417f2d793abe798a607792cf95bf2f`  
		Last Modified: Wed, 06 Feb 2019 22:29:41 GMT  
		Size: 42.3 MB (42280568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a5979de6f605f5f7e7b257bece3c5ea65fed5a3407f3f9722144804ca75e01`  
		Last Modified: Wed, 06 Feb 2019 22:32:18 GMT  
		Size: 134.5 MB (134522332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; 386

```console
$ docker pull mono@sha256:8ba461c9e83753b757b765e3b593d2f1e0de29a7a5767b7460b81d17f266efa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213005941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029eef1a66bb7d239d56b2408b9c3d639a4fb3c3b39d706049272087744e3e81`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:12:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f1e1270802cde64c664d9b4c5eed06db40939951d281dc5a12ace959106ad4`  
		Last Modified: Thu, 07 Feb 2019 02:15:06 GMT  
		Size: 142.5 MB (142457184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16` - linux; ppc64le

```console
$ docker pull mono@sha256:065f3c72f5db06197cec6119c1728baaea63dda5518b0e804cf676440da97c19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170436179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd97c7ae5cbd616990f1cd0abca9ba8a6057f9cc6902da8753883a02c0dd4a68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:05:37 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38be38455c85614092ea4ecbf9040f4a0abb179682587b300b5313b9a171c1f3`  
		Last Modified: Wed, 06 Feb 2019 18:08:52 GMT  
		Size: 122.8 MB (122779651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0`

```console
$ docker pull mono@sha256:a5a24fdeb3d82fd6886d2b63fa2b3a1038f4d6b6a15e2dc4e903831c8e8da1e5
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
$ docker pull mono@sha256:8da639ec424ab027144e2528cecfe9667a694acffb5cb09c7933d29ea70d3d89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205203115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c4a2f95c5a01ed6e9c1bdf613069628958d6d1a596c26df711afcea123226c7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:41:04 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 06:41:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:41:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 06:57:44 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277d48bd6c1bd131c1869740599babb1f23d7637dc66224e6832dcbcec001095`  
		Last Modified: Wed, 06 Feb 2019 06:58:19 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96ada49e3040715a9efa93d9c668a2080a9c86a01de7d8e910f6236869d5d`  
		Last Modified: Wed, 06 Feb 2019 06:58:29 GMT  
		Size: 45.7 MB (45721108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0315548fd21f92aa33c285bd8e5cc8f7f53ac913e5f65632803fdad56bfb6`  
		Last Modified: Wed, 06 Feb 2019 07:00:04 GMT  
		Size: 136.7 MB (136737271 bytes)  
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
$ docker pull mono@sha256:104e2b3ad014450b3f39ee7e12d956a649d99cee4d9523517d2ab21706b8b726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178638798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728c765aa2296cf55c5bfbc788e00c557aa5067ebfc2ebd78fc21a50f53fe343`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 16:01:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21ab460d29dd683d2adfd96d62f5b65e81afaa1b6a2ff6a8026c325da06d15`  
		Last Modified: Thu, 07 Feb 2019 16:05:15 GMT  
		Size: 121.0 MB (121026416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:f42ad36101f3545254e2e41b9a993ddc082f6eb15986b153ec47ec3a7f52adb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197397500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a2bbdd94d04e44a8b2deaf9acaa1decd7972c5c05d48790215b7fce417eb85`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:55:32 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 21:56:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:58:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:28:22 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8222490bd951e6dffb04f55142adc0b4f2514bae81f9d73634df1479e3b4a`  
		Last Modified: Wed, 06 Feb 2019 22:29:16 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64199e916c8a93a0979d51a7876e7bd0a417f2d793abe798a607792cf95bf2f`  
		Last Modified: Wed, 06 Feb 2019 22:29:41 GMT  
		Size: 42.3 MB (42280568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a5979de6f605f5f7e7b257bece3c5ea65fed5a3407f3f9722144804ca75e01`  
		Last Modified: Wed, 06 Feb 2019 22:32:18 GMT  
		Size: 134.5 MB (134522332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; 386

```console
$ docker pull mono@sha256:8ba461c9e83753b757b765e3b593d2f1e0de29a7a5767b7460b81d17f266efa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213005941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029eef1a66bb7d239d56b2408b9c3d639a4fb3c3b39d706049272087744e3e81`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:12:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f1e1270802cde64c664d9b4c5eed06db40939951d281dc5a12ace959106ad4`  
		Last Modified: Thu, 07 Feb 2019 02:15:06 GMT  
		Size: 142.5 MB (142457184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0` - linux; ppc64le

```console
$ docker pull mono@sha256:065f3c72f5db06197cec6119c1728baaea63dda5518b0e804cf676440da97c19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170436179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd97c7ae5cbd616990f1cd0abca9ba8a6057f9cc6902da8753883a02c0dd4a68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:05:37 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38be38455c85614092ea4ecbf9040f4a0abb179682587b300b5313b9a171c1f3`  
		Last Modified: Wed, 06 Feb 2019 18:08:52 GMT  
		Size: 122.8 MB (122779651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.220`

```console
$ docker pull mono@sha256:a5a24fdeb3d82fd6886d2b63fa2b3a1038f4d6b6a15e2dc4e903831c8e8da1e5
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
$ docker pull mono@sha256:8da639ec424ab027144e2528cecfe9667a694acffb5cb09c7933d29ea70d3d89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205203115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c4a2f95c5a01ed6e9c1bdf613069628958d6d1a596c26df711afcea123226c7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:41:04 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 06:41:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:41:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 06:57:44 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277d48bd6c1bd131c1869740599babb1f23d7637dc66224e6832dcbcec001095`  
		Last Modified: Wed, 06 Feb 2019 06:58:19 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96ada49e3040715a9efa93d9c668a2080a9c86a01de7d8e910f6236869d5d`  
		Last Modified: Wed, 06 Feb 2019 06:58:29 GMT  
		Size: 45.7 MB (45721108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0315548fd21f92aa33c285bd8e5cc8f7f53ac913e5f65632803fdad56bfb6`  
		Last Modified: Wed, 06 Feb 2019 07:00:04 GMT  
		Size: 136.7 MB (136737271 bytes)  
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
$ docker pull mono@sha256:104e2b3ad014450b3f39ee7e12d956a649d99cee4d9523517d2ab21706b8b726
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178638798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728c765aa2296cf55c5bfbc788e00c557aa5067ebfc2ebd78fc21a50f53fe343`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 16:01:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d21ab460d29dd683d2adfd96d62f5b65e81afaa1b6a2ff6a8026c325da06d15`  
		Last Modified: Thu, 07 Feb 2019 16:05:15 GMT  
		Size: 121.0 MB (121026416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:f42ad36101f3545254e2e41b9a993ddc082f6eb15986b153ec47ec3a7f52adb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197397500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a2bbdd94d04e44a8b2deaf9acaa1decd7972c5c05d48790215b7fce417eb85`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:55:32 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 21:56:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:58:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:28:22 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8222490bd951e6dffb04f55142adc0b4f2514bae81f9d73634df1479e3b4a`  
		Last Modified: Wed, 06 Feb 2019 22:29:16 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64199e916c8a93a0979d51a7876e7bd0a417f2d793abe798a607792cf95bf2f`  
		Last Modified: Wed, 06 Feb 2019 22:29:41 GMT  
		Size: 42.3 MB (42280568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a5979de6f605f5f7e7b257bece3c5ea65fed5a3407f3f9722144804ca75e01`  
		Last Modified: Wed, 06 Feb 2019 22:32:18 GMT  
		Size: 134.5 MB (134522332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; 386

```console
$ docker pull mono@sha256:8ba461c9e83753b757b765e3b593d2f1e0de29a7a5767b7460b81d17f266efa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (213005941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029eef1a66bb7d239d56b2408b9c3d639a4fb3c3b39d706049272087744e3e81`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:12:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f1e1270802cde64c664d9b4c5eed06db40939951d281dc5a12ace959106ad4`  
		Last Modified: Thu, 07 Feb 2019 02:15:06 GMT  
		Size: 142.5 MB (142457184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220` - linux; ppc64le

```console
$ docker pull mono@sha256:065f3c72f5db06197cec6119c1728baaea63dda5518b0e804cf676440da97c19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.4 MB (170436179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd97c7ae5cbd616990f1cd0abca9ba8a6057f9cc6902da8753883a02c0dd4a68`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:05:37 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38be38455c85614092ea4ecbf9040f4a0abb179682587b300b5313b9a171c1f3`  
		Last Modified: Wed, 06 Feb 2019 18:08:52 GMT  
		Size: 122.8 MB (122779651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0.220-slim`

```console
$ docker pull mono@sha256:36aa0ba6f7ef71204c4159ad686525376258f8d8890d1d608a1d7dde3285df44
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
$ docker pull mono@sha256:faa96ba7628c104bc33a682dc43350b74efc835d0afb39470888743fc143382e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68465844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da1d668f51da6b07bd2d8954b168d00332eb4e507ad1b292c5ab93505c73cda`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:41:04 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 06:41:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:41:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277d48bd6c1bd131c1869740599babb1f23d7637dc66224e6832dcbcec001095`  
		Last Modified: Wed, 06 Feb 2019 06:58:19 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96ada49e3040715a9efa93d9c668a2080a9c86a01de7d8e910f6236869d5d`  
		Last Modified: Wed, 06 Feb 2019 06:58:29 GMT  
		Size: 45.7 MB (45721108 bytes)  
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
$ docker pull mono@sha256:cafea22d5e386de97940ec4e525de4b2bf5b75e705797eaf8b864bd5568232b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57612382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71738f081d27e1573e568336aca01d59854a542bb774e0b472cdac57e89267ca`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:a75d117739888b57de5763c536053300392a1555abec6b10a35c0c64ed1e8183
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62875168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddef3e94b2e2fd29b95a66bfd4fafa8371d867cf5ea4daf05d7ff34acabaf221`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:55:32 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 21:56:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:58:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8222490bd951e6dffb04f55142adc0b4f2514bae81f9d73634df1479e3b4a`  
		Last Modified: Wed, 06 Feb 2019 22:29:16 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64199e916c8a93a0979d51a7876e7bd0a417f2d793abe798a607792cf95bf2f`  
		Last Modified: Wed, 06 Feb 2019 22:29:41 GMT  
		Size: 42.3 MB (42280568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; 386

```console
$ docker pull mono@sha256:b3f6c8d59b4c8bb5d5b361a2807d44ad04bfa5525a728c502cfcda18f7de28e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70548757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4077bba5eb23c38fd6e23cba639f3030ad55857e16d05d1b1c9662c4d8beceab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0.220-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:93211155c6e78ee20e16cd9635b48f568698ac15a499ec5f9d6f60eae9cb4426
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47656528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05019b689b5d13aa2edf142a71d91ee61a4e0e324e43ef3e82dff6d02bd0f70f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16.0-slim`

```console
$ docker pull mono@sha256:36aa0ba6f7ef71204c4159ad686525376258f8d8890d1d608a1d7dde3285df44
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
$ docker pull mono@sha256:faa96ba7628c104bc33a682dc43350b74efc835d0afb39470888743fc143382e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68465844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da1d668f51da6b07bd2d8954b168d00332eb4e507ad1b292c5ab93505c73cda`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:41:04 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 06:41:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:41:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277d48bd6c1bd131c1869740599babb1f23d7637dc66224e6832dcbcec001095`  
		Last Modified: Wed, 06 Feb 2019 06:58:19 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96ada49e3040715a9efa93d9c668a2080a9c86a01de7d8e910f6236869d5d`  
		Last Modified: Wed, 06 Feb 2019 06:58:29 GMT  
		Size: 45.7 MB (45721108 bytes)  
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
$ docker pull mono@sha256:cafea22d5e386de97940ec4e525de4b2bf5b75e705797eaf8b864bd5568232b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57612382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71738f081d27e1573e568336aca01d59854a542bb774e0b472cdac57e89267ca`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:a75d117739888b57de5763c536053300392a1555abec6b10a35c0c64ed1e8183
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62875168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddef3e94b2e2fd29b95a66bfd4fafa8371d867cf5ea4daf05d7ff34acabaf221`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:55:32 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 21:56:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:58:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8222490bd951e6dffb04f55142adc0b4f2514bae81f9d73634df1479e3b4a`  
		Last Modified: Wed, 06 Feb 2019 22:29:16 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64199e916c8a93a0979d51a7876e7bd0a417f2d793abe798a607792cf95bf2f`  
		Last Modified: Wed, 06 Feb 2019 22:29:41 GMT  
		Size: 42.3 MB (42280568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; 386

```console
$ docker pull mono@sha256:b3f6c8d59b4c8bb5d5b361a2807d44ad04bfa5525a728c502cfcda18f7de28e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70548757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4077bba5eb23c38fd6e23cba639f3030ad55857e16d05d1b1c9662c4d8beceab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16.0-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:93211155c6e78ee20e16cd9635b48f568698ac15a499ec5f9d6f60eae9cb4426
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47656528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05019b689b5d13aa2edf142a71d91ee61a4e0e324e43ef3e82dff6d02bd0f70f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.16-slim`

```console
$ docker pull mono@sha256:36aa0ba6f7ef71204c4159ad686525376258f8d8890d1d608a1d7dde3285df44
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
$ docker pull mono@sha256:faa96ba7628c104bc33a682dc43350b74efc835d0afb39470888743fc143382e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68465844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da1d668f51da6b07bd2d8954b168d00332eb4e507ad1b292c5ab93505c73cda`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:41:04 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 06:41:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:41:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277d48bd6c1bd131c1869740599babb1f23d7637dc66224e6832dcbcec001095`  
		Last Modified: Wed, 06 Feb 2019 06:58:19 GMT  
		Size: 244.4 KB (244448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e96ada49e3040715a9efa93d9c668a2080a9c86a01de7d8e910f6236869d5d`  
		Last Modified: Wed, 06 Feb 2019 06:58:29 GMT  
		Size: 45.7 MB (45721108 bytes)  
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
$ docker pull mono@sha256:cafea22d5e386de97940ec4e525de4b2bf5b75e705797eaf8b864bd5568232b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57612382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71738f081d27e1573e568336aca01d59854a542bb774e0b472cdac57e89267ca`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:46:33 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 15:46:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:47:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfb296ecc832a3e79860497eba3e0bba92a2dc07f84b255ecc254ed71fb30b6`  
		Last Modified: Thu, 07 Feb 2019 16:02:27 GMT  
		Size: 244.5 KB (244467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872337458a30d1bb2eab0e7c71805b6fa15c0b0658cb9cb5ac50c2bf97c77b56`  
		Last Modified: Thu, 07 Feb 2019 16:02:40 GMT  
		Size: 38.1 MB (38077716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:a75d117739888b57de5763c536053300392a1555abec6b10a35c0c64ed1e8183
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62875168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddef3e94b2e2fd29b95a66bfd4fafa8371d867cf5ea4daf05d7ff34acabaf221`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:55:32 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 21:56:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:58:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8222490bd951e6dffb04f55142adc0b4f2514bae81f9d73634df1479e3b4a`  
		Last Modified: Wed, 06 Feb 2019 22:29:16 GMT  
		Size: 244.4 KB (244441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64199e916c8a93a0979d51a7876e7bd0a417f2d793abe798a607792cf95bf2f`  
		Last Modified: Wed, 06 Feb 2019 22:29:41 GMT  
		Size: 42.3 MB (42280568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; 386

```console
$ docker pull mono@sha256:b3f6c8d59b4c8bb5d5b361a2807d44ad04bfa5525a728c502cfcda18f7de28e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70548757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4077bba5eb23c38fd6e23cba639f3030ad55857e16d05d1b1c9662c4d8beceab`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:06:24 GMT
ENV MONO_VERSION=5.16.0.220
# Thu, 07 Feb 2019 02:06:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:07:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2751f41977d1417692a9c7c48f45dcc36b7871c70381c19380d8fda2dbfe23`  
		Last Modified: Thu, 07 Feb 2019 02:12:52 GMT  
		Size: 244.5 KB (244492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b8d302675ae29027f14946928b165260c64db5705d0a6bb79bec226fde96e`  
		Last Modified: Thu, 07 Feb 2019 02:13:04 GMT  
		Size: 47.2 MB (47157293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.16-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:93211155c6e78ee20e16cd9635b48f568698ac15a499ec5f9d6f60eae9cb4426
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47656528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05019b689b5d13aa2edf142a71d91ee61a4e0e324e43ef3e82dff6d02bd0f70f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:55:41 GMT
ENV MONO_VERSION=5.16.0.220
# Wed, 06 Feb 2019 17:56:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:56:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca99c2377eb322d16aa2f66419135f9d359fec385a47527ae94e562709092202`  
		Last Modified: Wed, 06 Feb 2019 18:07:21 GMT  
		Size: 244.4 KB (244416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d63214d47f69997705e40b0070dfa899d0956cb43d99b5b8373bfb5dba494d`  
		Last Modified: Wed, 06 Feb 2019 18:07:27 GMT  
		Size: 24.7 MB (24656720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18`

```console
$ docker pull mono@sha256:96cd05ac687ce0171831bb57c7f86f3e4a395f18ada3602836cc05b7cb965ba7
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
$ docker pull mono@sha256:0a7417e09c85ae9032059fdbdb40302915c279d600b0ee861f9fb349e1489ee6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223995843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80f7d8a7bdac07a7d13bd8f7528f5981a239ef654966f405ec4b7985858ba57`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:40:12 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 06:40:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:40:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 06:51:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7fa37d56fbc0f9e9bd907ced771f57dd864abb25c4d8c7d6eb94e6eee1ae91`  
		Last Modified: Wed, 06 Feb 2019 06:57:59 GMT  
		Size: 244.4 KB (244449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4533638a5ce9e353e8381eec158582c7ee9df26f4e7e235948be9568da7c0`  
		Last Modified: Wed, 06 Feb 2019 06:58:13 GMT  
		Size: 61.1 MB (61149729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbbc028c51fc5bad9ed586797ec9a671bb88edfddee5a4bd0a19af839f1d488`  
		Last Modified: Wed, 06 Feb 2019 06:59:31 GMT  
		Size: 140.1 MB (140101377 bytes)  
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
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2523470d4978007402f86e80d912ae53149c31748aaba1c6404da32056d6da16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188159263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778c3bc57dc14f6063344ee96510bfb914c9e78c6d9847fa8ccafc84615b3c74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:07:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2b54baaf344cdb81cf7126b8ef2acd8d590b7724b62ac56960cae31cafb35`  
		Last Modified: Wed, 06 Feb 2019 22:30:59 GMT  
		Size: 139.3 MB (139341299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; 386

```console
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0`

```console
$ docker pull mono@sha256:96cd05ac687ce0171831bb57c7f86f3e4a395f18ada3602836cc05b7cb965ba7
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
$ docker pull mono@sha256:0a7417e09c85ae9032059fdbdb40302915c279d600b0ee861f9fb349e1489ee6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223995843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80f7d8a7bdac07a7d13bd8f7528f5981a239ef654966f405ec4b7985858ba57`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:40:12 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 06:40:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:40:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 06:51:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7fa37d56fbc0f9e9bd907ced771f57dd864abb25c4d8c7d6eb94e6eee1ae91`  
		Last Modified: Wed, 06 Feb 2019 06:57:59 GMT  
		Size: 244.4 KB (244449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4533638a5ce9e353e8381eec158582c7ee9df26f4e7e235948be9568da7c0`  
		Last Modified: Wed, 06 Feb 2019 06:58:13 GMT  
		Size: 61.1 MB (61149729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbbc028c51fc5bad9ed586797ec9a671bb88edfddee5a4bd0a19af839f1d488`  
		Last Modified: Wed, 06 Feb 2019 06:59:31 GMT  
		Size: 140.1 MB (140101377 bytes)  
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
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2523470d4978007402f86e80d912ae53149c31748aaba1c6404da32056d6da16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188159263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778c3bc57dc14f6063344ee96510bfb914c9e78c6d9847fa8ccafc84615b3c74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:07:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2b54baaf344cdb81cf7126b8ef2acd8d590b7724b62ac56960cae31cafb35`  
		Last Modified: Wed, 06 Feb 2019 22:30:59 GMT  
		Size: 139.3 MB (139341299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; 386

```console
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0.225`

```console
$ docker pull mono@sha256:96cd05ac687ce0171831bb57c7f86f3e4a395f18ada3602836cc05b7cb965ba7
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
$ docker pull mono@sha256:0a7417e09c85ae9032059fdbdb40302915c279d600b0ee861f9fb349e1489ee6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223995843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80f7d8a7bdac07a7d13bd8f7528f5981a239ef654966f405ec4b7985858ba57`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:40:12 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 06:40:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:40:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 06:51:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7fa37d56fbc0f9e9bd907ced771f57dd864abb25c4d8c7d6eb94e6eee1ae91`  
		Last Modified: Wed, 06 Feb 2019 06:57:59 GMT  
		Size: 244.4 KB (244449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4533638a5ce9e353e8381eec158582c7ee9df26f4e7e235948be9568da7c0`  
		Last Modified: Wed, 06 Feb 2019 06:58:13 GMT  
		Size: 61.1 MB (61149729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbbc028c51fc5bad9ed586797ec9a671bb88edfddee5a4bd0a19af839f1d488`  
		Last Modified: Wed, 06 Feb 2019 06:59:31 GMT  
		Size: 140.1 MB (140101377 bytes)  
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
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2523470d4978007402f86e80d912ae53149c31748aaba1c6404da32056d6da16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188159263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778c3bc57dc14f6063344ee96510bfb914c9e78c6d9847fa8ccafc84615b3c74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:07:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2b54baaf344cdb81cf7126b8ef2acd8d590b7724b62ac56960cae31cafb35`  
		Last Modified: Wed, 06 Feb 2019 22:30:59 GMT  
		Size: 139.3 MB (139341299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; 386

```console
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0.225-slim`

```console
$ docker pull mono@sha256:d93c33ff394d1918363974e7506c2472437d4e37a438a1f3fbdc39ce3a9dc9c8
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
$ docker pull mono@sha256:0df5469e6b162f2011db19d70c345feaca5f0c91e14ebc570dc4f248b18e7df1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83894466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00805320475a16df8f4e11ee99497cb505bf21184172f82705e6103f99c9efe5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:40:12 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 06:40:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:40:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7fa37d56fbc0f9e9bd907ced771f57dd864abb25c4d8c7d6eb94e6eee1ae91`  
		Last Modified: Wed, 06 Feb 2019 06:57:59 GMT  
		Size: 244.4 KB (244449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4533638a5ce9e353e8381eec158582c7ee9df26f4e7e235948be9568da7c0`  
		Last Modified: Wed, 06 Feb 2019 06:58:13 GMT  
		Size: 61.1 MB (61149729 bytes)  
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
$ docker pull mono@sha256:1d007b5191c3ac3c0a803a3c403fe91fe4f49abe03a0cc1624ea8eac77a891d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71926d34fa255834b8acc2293a753ff39355810e71681348b347ab82710131be`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b287b805ed86e312db717c9e6b15d05d8b8287ca014c54e2c3562efe4aa9887f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48817964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fecf3b2a6b04e48b286def0c57cc40a67a03e1d7e05899520be4141c0929f8d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; 386

```console
$ docker pull mono@sha256:232bee4b9447fbd7ee6c9159c8a7ce99ab8f44db42f0c69eed38c8075b227c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e04c818fead28c398ff2ed1628e9a46ec29f5b81d153010139a6671eafc10a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0.225-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6c65b53ebe4eb54300b7abb51fa7f182de21f4ed3ff4224d8a0306885a2d00bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e77adbe77da62ef2f9f0822c4b809b3edf9a10701a5aaa5b82eab72bd30c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.0-slim`

```console
$ docker pull mono@sha256:d93c33ff394d1918363974e7506c2472437d4e37a438a1f3fbdc39ce3a9dc9c8
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
$ docker pull mono@sha256:0df5469e6b162f2011db19d70c345feaca5f0c91e14ebc570dc4f248b18e7df1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83894466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00805320475a16df8f4e11ee99497cb505bf21184172f82705e6103f99c9efe5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:40:12 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 06:40:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:40:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7fa37d56fbc0f9e9bd907ced771f57dd864abb25c4d8c7d6eb94e6eee1ae91`  
		Last Modified: Wed, 06 Feb 2019 06:57:59 GMT  
		Size: 244.4 KB (244449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4533638a5ce9e353e8381eec158582c7ee9df26f4e7e235948be9568da7c0`  
		Last Modified: Wed, 06 Feb 2019 06:58:13 GMT  
		Size: 61.1 MB (61149729 bytes)  
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
$ docker pull mono@sha256:1d007b5191c3ac3c0a803a3c403fe91fe4f49abe03a0cc1624ea8eac77a891d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71926d34fa255834b8acc2293a753ff39355810e71681348b347ab82710131be`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b287b805ed86e312db717c9e6b15d05d8b8287ca014c54e2c3562efe4aa9887f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48817964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fecf3b2a6b04e48b286def0c57cc40a67a03e1d7e05899520be4141c0929f8d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; 386

```console
$ docker pull mono@sha256:232bee4b9447fbd7ee6c9159c8a7ce99ab8f44db42f0c69eed38c8075b227c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e04c818fead28c398ff2ed1628e9a46ec29f5b81d153010139a6671eafc10a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.0-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6c65b53ebe4eb54300b7abb51fa7f182de21f4ed3ff4224d8a0306885a2d00bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e77adbe77da62ef2f9f0822c4b809b3edf9a10701a5aaa5b82eab72bd30c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18-slim`

```console
$ docker pull mono@sha256:d93c33ff394d1918363974e7506c2472437d4e37a438a1f3fbdc39ce3a9dc9c8
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
$ docker pull mono@sha256:0df5469e6b162f2011db19d70c345feaca5f0c91e14ebc570dc4f248b18e7df1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83894466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00805320475a16df8f4e11ee99497cb505bf21184172f82705e6103f99c9efe5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:40:12 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 06:40:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:40:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7fa37d56fbc0f9e9bd907ced771f57dd864abb25c4d8c7d6eb94e6eee1ae91`  
		Last Modified: Wed, 06 Feb 2019 06:57:59 GMT  
		Size: 244.4 KB (244449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4533638a5ce9e353e8381eec158582c7ee9df26f4e7e235948be9568da7c0`  
		Last Modified: Wed, 06 Feb 2019 06:58:13 GMT  
		Size: 61.1 MB (61149729 bytes)  
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
$ docker pull mono@sha256:1d007b5191c3ac3c0a803a3c403fe91fe4f49abe03a0cc1624ea8eac77a891d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71926d34fa255834b8acc2293a753ff39355810e71681348b347ab82710131be`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b287b805ed86e312db717c9e6b15d05d8b8287ca014c54e2c3562efe4aa9887f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48817964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fecf3b2a6b04e48b286def0c57cc40a67a03e1d7e05899520be4141c0929f8d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; 386

```console
$ docker pull mono@sha256:232bee4b9447fbd7ee6c9159c8a7ce99ab8f44db42f0c69eed38c8075b227c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e04c818fead28c398ff2ed1628e9a46ec29f5b81d153010139a6671eafc10a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6c65b53ebe4eb54300b7abb51fa7f182de21f4ed3ff4224d8a0306885a2d00bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e77adbe77da62ef2f9f0822c4b809b3edf9a10701a5aaa5b82eab72bd30c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:d93c33ff394d1918363974e7506c2472437d4e37a438a1f3fbdc39ce3a9dc9c8
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
$ docker pull mono@sha256:0df5469e6b162f2011db19d70c345feaca5f0c91e14ebc570dc4f248b18e7df1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83894466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00805320475a16df8f4e11ee99497cb505bf21184172f82705e6103f99c9efe5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:40:12 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 06:40:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:40:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7fa37d56fbc0f9e9bd907ced771f57dd864abb25c4d8c7d6eb94e6eee1ae91`  
		Last Modified: Wed, 06 Feb 2019 06:57:59 GMT  
		Size: 244.4 KB (244449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4533638a5ce9e353e8381eec158582c7ee9df26f4e7e235948be9568da7c0`  
		Last Modified: Wed, 06 Feb 2019 06:58:13 GMT  
		Size: 61.1 MB (61149729 bytes)  
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
$ docker pull mono@sha256:1d007b5191c3ac3c0a803a3c403fe91fe4f49abe03a0cc1624ea8eac77a891d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71926d34fa255834b8acc2293a753ff39355810e71681348b347ab82710131be`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b287b805ed86e312db717c9e6b15d05d8b8287ca014c54e2c3562efe4aa9887f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48817964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fecf3b2a6b04e48b286def0c57cc40a67a03e1d7e05899520be4141c0929f8d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:232bee4b9447fbd7ee6c9159c8a7ce99ab8f44db42f0c69eed38c8075b227c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e04c818fead28c398ff2ed1628e9a46ec29f5b81d153010139a6671eafc10a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6c65b53ebe4eb54300b7abb51fa7f182de21f4ed3ff4224d8a0306885a2d00bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e77adbe77da62ef2f9f0822c4b809b3edf9a10701a5aaa5b82eab72bd30c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:96cd05ac687ce0171831bb57c7f86f3e4a395f18ada3602836cc05b7cb965ba7
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
$ docker pull mono@sha256:0a7417e09c85ae9032059fdbdb40302915c279d600b0ee861f9fb349e1489ee6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223995843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80f7d8a7bdac07a7d13bd8f7528f5981a239ef654966f405ec4b7985858ba57`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:40:12 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 06:40:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:40:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 06:51:53 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7fa37d56fbc0f9e9bd907ced771f57dd864abb25c4d8c7d6eb94e6eee1ae91`  
		Last Modified: Wed, 06 Feb 2019 06:57:59 GMT  
		Size: 244.4 KB (244449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4533638a5ce9e353e8381eec158582c7ee9df26f4e7e235948be9568da7c0`  
		Last Modified: Wed, 06 Feb 2019 06:58:13 GMT  
		Size: 61.1 MB (61149729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbbc028c51fc5bad9ed586797ec9a671bb88edfddee5a4bd0a19af839f1d488`  
		Last Modified: Wed, 06 Feb 2019 06:59:31 GMT  
		Size: 140.1 MB (140101377 bytes)  
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
$ docker pull mono@sha256:ff52df114453f30769260703e942d1ff6e661583da47d60e15614331aaa5b1b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167334005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e015d0a90ce959b094e11cf58f6395735075e7b2a05d1e71339ba8a5c15659f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 15:51:50 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bc2532ebc4056c4b7f89abaefc6bfccfdec704856b7d399921f8ccd38a6f7`  
		Last Modified: Thu, 07 Feb 2019 16:04:18 GMT  
		Size: 124.2 MB (124232579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:2523470d4978007402f86e80d912ae53149c31748aaba1c6404da32056d6da16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188159263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778c3bc57dc14f6063344ee96510bfb914c9e78c6d9847fa8ccafc84615b3c74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 22:07:48 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2b54baaf344cdb81cf7126b8ef2acd8d590b7724b62ac56960cae31cafb35`  
		Last Modified: Wed, 06 Feb 2019 22:30:59 GMT  
		Size: 139.3 MB (139341299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:80475efe09cafd3d455f960bb5bea53e458550deb1015950197ae47de06b90c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233038175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7ff8bf223ef7952fc140b228462b492840ef8759bc5b616967e7bc0f649ba9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 07 Feb 2019 02:10:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9b0c4bafbd1780cbf8703de2e03b24f08d0037e3ce0fb869246b59015ef15`  
		Last Modified: Thu, 07 Feb 2019 02:14:19 GMT  
		Size: 145.7 MB (145691633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; ppc64le

```console
$ docker pull mono@sha256:37ddad5a1483d30933f534095b6e5bf155fcd9fb72d0bb9411b519160261561a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.6 MB (173622133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9e008fbc1f4fe1ab615d77ad7ec2d330dc41ad9e6b478b614f55120692b8d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 06 Feb 2019 18:00:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67104fd6232aa1fefa6b6e15870bb471a2ed5d07225f32d165937f956c8c73a2`  
		Last Modified: Wed, 06 Feb 2019 18:08:07 GMT  
		Size: 126.0 MB (125985579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:d93c33ff394d1918363974e7506c2472437d4e37a438a1f3fbdc39ce3a9dc9c8
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
$ docker pull mono@sha256:0df5469e6b162f2011db19d70c345feaca5f0c91e14ebc570dc4f248b18e7df1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83894466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00805320475a16df8f4e11ee99497cb505bf21184172f82705e6103f99c9efe5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:40:12 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 06:40:27 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 06:40:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7fa37d56fbc0f9e9bd907ced771f57dd864abb25c4d8c7d6eb94e6eee1ae91`  
		Last Modified: Wed, 06 Feb 2019 06:57:59 GMT  
		Size: 244.4 KB (244449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4533638a5ce9e353e8381eec158582c7ee9df26f4e7e235948be9568da7c0`  
		Last Modified: Wed, 06 Feb 2019 06:58:13 GMT  
		Size: 61.1 MB (61149729 bytes)  
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
$ docker pull mono@sha256:1d007b5191c3ac3c0a803a3c403fe91fe4f49abe03a0cc1624ea8eac77a891d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43101426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71926d34fa255834b8acc2293a753ff39355810e71681348b347ab82710131be`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:29 GMT
ADD file:c46db86f1395f6e482757d17e7f4cd42dc7dd9526d1c2c517c37199df306ee84 in / 
# Thu, 07 Feb 2019 13:03:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:45:29 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 15:45:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 15:46:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:9c38b5a8a4d56e8a005f102689cfc8b39dc34b4f322891f8854ac54520004723`  
		Last Modified: Thu, 07 Feb 2019 02:05:05 GMT  
		Size: 19.3 MB (19290199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461f2ed0ec22861a6af04508fe5472582f797f1a129e7bccd9133c5eb77c2a7a`  
		Last Modified: Thu, 07 Feb 2019 16:02:08 GMT  
		Size: 244.5 KB (244480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54db51851242e64b486bac3da23bec9016a4b1f297da0809066446e38d9876c0`  
		Last Modified: Thu, 07 Feb 2019 16:02:18 GMT  
		Size: 23.6 MB (23566747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b287b805ed86e312db717c9e6b15d05d8b8287ca014c54e2c3562efe4aa9887f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48817964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fecf3b2a6b04e48b286def0c57cc40a67a03e1d7e05899520be4141c0929f8d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:53:19 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 21:54:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 21:55:27 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d1514bbd3e778841de53246a789ac685d10289697578706747939a3fbb6687`  
		Last Modified: Wed, 06 Feb 2019 22:28:50 GMT  
		Size: 244.4 KB (244446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f575b8c41c9c7c9e02c129f8c91a998b072d461e9577cfd9d8776fcf73fcd75`  
		Last Modified: Wed, 06 Feb 2019 22:29:03 GMT  
		Size: 28.2 MB (28223359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:232bee4b9447fbd7ee6c9159c8a7ce99ab8f44db42f0c69eed38c8075b227c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87346542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e04c818fead28c398ff2ed1628e9a46ec29f5b81d153010139a6671eafc10a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 02:05:40 GMT
ENV MONO_VERSION=5.18.0.225
# Thu, 07 Feb 2019 02:05:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Thu, 07 Feb 2019 02:06:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e894460c2a0c4fd5c08b28685794b9a1e68efd62de7599d082c8d0f480653c08`  
		Last Modified: Thu, 07 Feb 2019 02:12:27 GMT  
		Size: 244.5 KB (244489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54805bbc74bcea3f1db3c5e71d8b864f662d827af175347d61ff9a2c0b8b1d45`  
		Last Modified: Thu, 07 Feb 2019 02:12:46 GMT  
		Size: 64.0 MB (63955081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6c65b53ebe4eb54300b7abb51fa7f182de21f4ed3ff4224d8a0306885a2d00bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47636554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3e77adbe77da62ef2f9f0822c4b809b3edf9a10701a5aaa5b82eab72bd30c2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 17:54:02 GMT
ENV MONO_VERSION=5.18.0.225
# Wed, 06 Feb 2019 17:54:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 06 Feb 2019 17:55:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda02a1fc151bf0da393fd7c67a78d1c0389ac939fabf60eafd9939b8248cabc`  
		Last Modified: Wed, 06 Feb 2019 18:06:10 GMT  
		Size: 244.4 KB (244393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d635c374d6a9631645aa910144f21c8798c299dccc27b8c453ee308642b4b6dd`  
		Last Modified: Wed, 06 Feb 2019 18:06:16 GMT  
		Size: 24.6 MB (24636769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

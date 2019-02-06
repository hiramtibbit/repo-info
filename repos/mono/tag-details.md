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
$ docker pull mono@sha256:da34a736f9f9f357205d024687fd425cb33b11255fcfe8691a3ddb72d3b8210b
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
$ docker pull mono@sha256:da34a736f9f9f357205d024687fd425cb33b11255fcfe8691a3ddb72d3b8210b
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
$ docker pull mono@sha256:da34a736f9f9f357205d024687fd425cb33b11255fcfe8691a3ddb72d3b8210b
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
$ docker pull mono@sha256:da34a736f9f9f357205d024687fd425cb33b11255fcfe8691a3ddb72d3b8210b
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
$ docker pull mono@sha256:3864a736e7fb2caa20a66a53c7200274452fca886555ca0ae4e48687608a6c84
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
$ docker pull mono@sha256:5b5558259b47beffa0c46659ad039c67c7511749b250adc5287c7e64f157770b
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
$ docker pull mono@sha256:5b5558259b47beffa0c46659ad039c67c7511749b250adc5287c7e64f157770b
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
$ docker pull mono@sha256:5b5558259b47beffa0c46659ad039c67c7511749b250adc5287c7e64f157770b
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
$ docker pull mono@sha256:18c7ae69c19307b3037bc23c3cc626f141d6ec5f421896705b7148d7797fc725
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
$ docker pull mono@sha256:18c7ae69c19307b3037bc23c3cc626f141d6ec5f421896705b7148d7797fc725
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
$ docker pull mono@sha256:18c7ae69c19307b3037bc23c3cc626f141d6ec5f421896705b7148d7797fc725
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
$ docker pull mono@sha256:3864a736e7fb2caa20a66a53c7200274452fca886555ca0ae4e48687608a6c84
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
$ docker pull mono@sha256:3864a736e7fb2caa20a66a53c7200274452fca886555ca0ae4e48687608a6c84
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
$ docker pull mono@sha256:3864a736e7fb2caa20a66a53c7200274452fca886555ca0ae4e48687608a6c84
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
$ docker pull mono@sha256:9335ea9f51def2077615a364085d3deb733eed6504ef222693861245b1210e81
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
$ docker pull mono@sha256:9335ea9f51def2077615a364085d3deb733eed6504ef222693861245b1210e81
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
$ docker pull mono@sha256:9335ea9f51def2077615a364085d3deb733eed6504ef222693861245b1210e81
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
$ docker pull mono@sha256:9335ea9f51def2077615a364085d3deb733eed6504ef222693861245b1210e81
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
$ docker pull mono@sha256:a7eeb8abb2a9ab610b20628b7e17fdaa8a0a0f6a2833a396a5a0188f90c4d02b
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
$ docker pull mono@sha256:9335ea9f51def2077615a364085d3deb733eed6504ef222693861245b1210e81
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

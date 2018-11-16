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
$ docker pull mono@sha256:e06070e948c94b13f39c142f4d9aa1d8b7431e136c152b4026fddc0c7487f755
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
$ docker pull mono@sha256:e06070e948c94b13f39c142f4d9aa1d8b7431e136c152b4026fddc0c7487f755
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
$ docker pull mono@sha256:e06070e948c94b13f39c142f4d9aa1d8b7431e136c152b4026fddc0c7487f755
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
$ docker pull mono@sha256:e06070e948c94b13f39c142f4d9aa1d8b7431e136c152b4026fddc0c7487f755
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
$ docker pull mono@sha256:599a917b1e9a6a462b36bba2d06bdb859fb3ab0e8b3c2c01986f62ca3272fb7e
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
$ docker pull mono@sha256:e37a76facf516e394516a2201b71ffb76a470aa22c546b6ebaa01be892d3d7b4
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
$ docker pull mono@sha256:e37a76facf516e394516a2201b71ffb76a470aa22c546b6ebaa01be892d3d7b4
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
$ docker pull mono@sha256:e37a76facf516e394516a2201b71ffb76a470aa22c546b6ebaa01be892d3d7b4
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
$ docker pull mono@sha256:79ed911bc3c0bea50bf5bce28eb918258651381d432eba664baa6f883a60e404
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
$ docker pull mono@sha256:79ed911bc3c0bea50bf5bce28eb918258651381d432eba664baa6f883a60e404
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
$ docker pull mono@sha256:79ed911bc3c0bea50bf5bce28eb918258651381d432eba664baa6f883a60e404
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
$ docker pull mono@sha256:599a917b1e9a6a462b36bba2d06bdb859fb3ab0e8b3c2c01986f62ca3272fb7e
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
$ docker pull mono@sha256:599a917b1e9a6a462b36bba2d06bdb859fb3ab0e8b3c2c01986f62ca3272fb7e
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
$ docker pull mono@sha256:599a917b1e9a6a462b36bba2d06bdb859fb3ab0e8b3c2c01986f62ca3272fb7e
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
$ docker pull mono@sha256:cfa74491f586e6b63bc50b0dbf47ae24b41d6b22173c60d352c0378839cc6347
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
$ docker pull mono@sha256:cfa74491f586e6b63bc50b0dbf47ae24b41d6b22173c60d352c0378839cc6347
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
$ docker pull mono@sha256:cfa74491f586e6b63bc50b0dbf47ae24b41d6b22173c60d352c0378839cc6347
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
$ docker pull mono@sha256:cfa74491f586e6b63bc50b0dbf47ae24b41d6b22173c60d352c0378839cc6347
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
$ docker pull mono@sha256:2e5cac38fe58bf2756abbae30cbfd2320b452822ef29fc1f593bed9413db00aa
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
$ docker pull mono@sha256:cfa74491f586e6b63bc50b0dbf47ae24b41d6b22173c60d352c0378839cc6347
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

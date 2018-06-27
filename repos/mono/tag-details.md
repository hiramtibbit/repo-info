<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:4`](#mono4)
-	[`mono:4.8`](#mono48)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:5`](#mono5)
-	[`mono:5.10`](#mono510)
-	[`mono:5.10.1`](#mono5101)
-	[`mono:5.10.1.47`](#mono510147)
-	[`mono:5.10.1.47-slim`](#mono510147-slim)
-	[`mono:5.10.1-slim`](#mono5101-slim)
-	[`mono:5.10-slim`](#mono510-slim)
-	[`mono:5.12`](#mono512)
-	[`mono:5.12.0`](#mono5120)
-	[`mono:5.12.0.226`](#mono5120226)
-	[`mono:5.12.0.226-slim`](#mono5120226-slim)
-	[`mono:5.12.0-slim`](#mono5120-slim)
-	[`mono:5.12-slim`](#mono512-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:dc6a94eb76ae1434f5efd7c3754a4caf495d224b7b3aa9fde6cdf8fa151567c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:f2d604bc07f440f7459669d72db1d61f962e6a25aecd854f3e5886e4a28fafe1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153049121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9856424442bfb87eccf55481dc6c04cc2c5005be123331b54f1cfe4410df41`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:03:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 26 Jun 2018 23:03:12 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 26 Jun 2018 23:03:28 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:03:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:05:32 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d23bcf06240d057634d18bc8210fee9245d5cb3ef95ddb3e71cb10d8dd7609`  
		Last Modified: Tue, 26 Jun 2018 23:13:31 GMT  
		Size: 6.4 MB (6441602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348d893fa8eaf4186730519f6bb5faa32d6c3813f3624b6c54fd3a5edd912991`  
		Last Modified: Tue, 26 Jun 2018 23:13:30 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e96f340a171353632adaa351137d9b45c9ecedcde314f5662b85591b60edbdd`  
		Last Modified: Tue, 26 Jun 2018 23:15:08 GMT  
		Size: 107.2 MB (107237923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v7

```console
$ docker pull mono@sha256:c342c7ceeb0ef7ad549cd05f28f2af9b13c4cd80b1aabdd1a807785dfa1b0e83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138944851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b55a944b76eecfa8b409ff92f9331c59604b352c62a0048b1aaf2ebe6a6cb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:11 GMT
ADD file:9db26feeeebe82707411c8b6a09f22ba8e33fdd8bdf1e1cb3fd179cfc09b850e in / 
# Tue, 12 Dec 2017 13:36:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:42:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 14:42:42 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 14:42:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:42:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:44:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:dd70000a68c40049fa024e9ebecc22bcd8a32b0fb098e9f3edafdbfc872054b4`  
		Last Modified: Tue, 12 Dec 2017 13:47:59 GMT  
		Size: 35.7 MB (35661805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bac5781424193c9527b5bfa5c06eb028e0eca16516cd058511653a01b0b7dd`  
		Last Modified: Tue, 12 Dec 2017 14:50:53 GMT  
		Size: 7.2 MB (7185300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567cfe4d52b53ccc0a2131014faead07f90583cded9e13a802fd7ba39c4bbc67`  
		Last Modified: Tue, 12 Dec 2017 14:50:52 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e170876330ebd96f24bce96ea82eb2241088331591e17d2b66fb8b7e6a0c3c`  
		Last Modified: Tue, 12 Dec 2017 14:51:26 GMT  
		Size: 96.1 MB (96067836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; 386

```console
$ docker pull mono@sha256:59d2aafb5019aa060037edabe206e9e7345e8b02aa1572624b16ff90c58bc869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153051802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2752bf64dd28e661b0ad28235e70b196f81ef49273c05ba358557a688e0b115a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:23:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 28 Apr 2018 11:23:41 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 28 Apr 2018 11:23:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:23:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:25:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce641e6b571d399afe5148baac58fcfd73b1a2cfdd36aaf676dc03a57fce5d9`  
		Last Modified: Sat, 28 Apr 2018 11:31:52 GMT  
		Size: 6.4 MB (6428167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9ff4404ebdb71792105e7d00f103494107a27b8f0d048b88d11fc38d91b1f9`  
		Last Modified: Sat, 28 Apr 2018 11:31:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e2871a640bbe004a05cb846b6a70756c156b6954ad0402c43dca42ab80474`  
		Last Modified: Sat, 28 Apr 2018 11:32:25 GMT  
		Size: 106.1 MB (106061610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:dc6a94eb76ae1434f5efd7c3754a4caf495d224b7b3aa9fde6cdf8fa151567c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:f2d604bc07f440f7459669d72db1d61f962e6a25aecd854f3e5886e4a28fafe1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153049121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9856424442bfb87eccf55481dc6c04cc2c5005be123331b54f1cfe4410df41`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:03:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 26 Jun 2018 23:03:12 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 26 Jun 2018 23:03:28 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:03:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:05:32 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d23bcf06240d057634d18bc8210fee9245d5cb3ef95ddb3e71cb10d8dd7609`  
		Last Modified: Tue, 26 Jun 2018 23:13:31 GMT  
		Size: 6.4 MB (6441602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348d893fa8eaf4186730519f6bb5faa32d6c3813f3624b6c54fd3a5edd912991`  
		Last Modified: Tue, 26 Jun 2018 23:13:30 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e96f340a171353632adaa351137d9b45c9ecedcde314f5662b85591b60edbdd`  
		Last Modified: Tue, 26 Jun 2018 23:15:08 GMT  
		Size: 107.2 MB (107237923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v7

```console
$ docker pull mono@sha256:c342c7ceeb0ef7ad549cd05f28f2af9b13c4cd80b1aabdd1a807785dfa1b0e83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138944851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b55a944b76eecfa8b409ff92f9331c59604b352c62a0048b1aaf2ebe6a6cb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:11 GMT
ADD file:9db26feeeebe82707411c8b6a09f22ba8e33fdd8bdf1e1cb3fd179cfc09b850e in / 
# Tue, 12 Dec 2017 13:36:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:42:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 14:42:42 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 14:42:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:42:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:44:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:dd70000a68c40049fa024e9ebecc22bcd8a32b0fb098e9f3edafdbfc872054b4`  
		Last Modified: Tue, 12 Dec 2017 13:47:59 GMT  
		Size: 35.7 MB (35661805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bac5781424193c9527b5bfa5c06eb028e0eca16516cd058511653a01b0b7dd`  
		Last Modified: Tue, 12 Dec 2017 14:50:53 GMT  
		Size: 7.2 MB (7185300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567cfe4d52b53ccc0a2131014faead07f90583cded9e13a802fd7ba39c4bbc67`  
		Last Modified: Tue, 12 Dec 2017 14:50:52 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e170876330ebd96f24bce96ea82eb2241088331591e17d2b66fb8b7e6a0c3c`  
		Last Modified: Tue, 12 Dec 2017 14:51:26 GMT  
		Size: 96.1 MB (96067836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; 386

```console
$ docker pull mono@sha256:59d2aafb5019aa060037edabe206e9e7345e8b02aa1572624b16ff90c58bc869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153051802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2752bf64dd28e661b0ad28235e70b196f81ef49273c05ba358557a688e0b115a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:23:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 28 Apr 2018 11:23:41 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 28 Apr 2018 11:23:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:23:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:25:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce641e6b571d399afe5148baac58fcfd73b1a2cfdd36aaf676dc03a57fce5d9`  
		Last Modified: Sat, 28 Apr 2018 11:31:52 GMT  
		Size: 6.4 MB (6428167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9ff4404ebdb71792105e7d00f103494107a27b8f0d048b88d11fc38d91b1f9`  
		Last Modified: Sat, 28 Apr 2018 11:31:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e2871a640bbe004a05cb846b6a70756c156b6954ad0402c43dca42ab80474`  
		Last Modified: Sat, 28 Apr 2018 11:32:25 GMT  
		Size: 106.1 MB (106061610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:dc6a94eb76ae1434f5efd7c3754a4caf495d224b7b3aa9fde6cdf8fa151567c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:f2d604bc07f440f7459669d72db1d61f962e6a25aecd854f3e5886e4a28fafe1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153049121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9856424442bfb87eccf55481dc6c04cc2c5005be123331b54f1cfe4410df41`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:03:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 26 Jun 2018 23:03:12 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 26 Jun 2018 23:03:28 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:03:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:05:32 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d23bcf06240d057634d18bc8210fee9245d5cb3ef95ddb3e71cb10d8dd7609`  
		Last Modified: Tue, 26 Jun 2018 23:13:31 GMT  
		Size: 6.4 MB (6441602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348d893fa8eaf4186730519f6bb5faa32d6c3813f3624b6c54fd3a5edd912991`  
		Last Modified: Tue, 26 Jun 2018 23:13:30 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e96f340a171353632adaa351137d9b45c9ecedcde314f5662b85591b60edbdd`  
		Last Modified: Tue, 26 Jun 2018 23:15:08 GMT  
		Size: 107.2 MB (107237923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:c342c7ceeb0ef7ad549cd05f28f2af9b13c4cd80b1aabdd1a807785dfa1b0e83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138944851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b55a944b76eecfa8b409ff92f9331c59604b352c62a0048b1aaf2ebe6a6cb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:11 GMT
ADD file:9db26feeeebe82707411c8b6a09f22ba8e33fdd8bdf1e1cb3fd179cfc09b850e in / 
# Tue, 12 Dec 2017 13:36:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:42:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 14:42:42 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 14:42:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:42:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:44:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:dd70000a68c40049fa024e9ebecc22bcd8a32b0fb098e9f3edafdbfc872054b4`  
		Last Modified: Tue, 12 Dec 2017 13:47:59 GMT  
		Size: 35.7 MB (35661805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bac5781424193c9527b5bfa5c06eb028e0eca16516cd058511653a01b0b7dd`  
		Last Modified: Tue, 12 Dec 2017 14:50:53 GMT  
		Size: 7.2 MB (7185300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567cfe4d52b53ccc0a2131014faead07f90583cded9e13a802fd7ba39c4bbc67`  
		Last Modified: Tue, 12 Dec 2017 14:50:52 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e170876330ebd96f24bce96ea82eb2241088331591e17d2b66fb8b7e6a0c3c`  
		Last Modified: Tue, 12 Dec 2017 14:51:26 GMT  
		Size: 96.1 MB (96067836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; 386

```console
$ docker pull mono@sha256:59d2aafb5019aa060037edabe206e9e7345e8b02aa1572624b16ff90c58bc869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153051802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2752bf64dd28e661b0ad28235e70b196f81ef49273c05ba358557a688e0b115a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:23:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 28 Apr 2018 11:23:41 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 28 Apr 2018 11:23:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:23:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:25:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce641e6b571d399afe5148baac58fcfd73b1a2cfdd36aaf676dc03a57fce5d9`  
		Last Modified: Sat, 28 Apr 2018 11:31:52 GMT  
		Size: 6.4 MB (6428167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9ff4404ebdb71792105e7d00f103494107a27b8f0d048b88d11fc38d91b1f9`  
		Last Modified: Sat, 28 Apr 2018 11:31:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e2871a640bbe004a05cb846b6a70756c156b6954ad0402c43dca42ab80474`  
		Last Modified: Sat, 28 Apr 2018 11:32:25 GMT  
		Size: 106.1 MB (106061610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:dc6a94eb76ae1434f5efd7c3754a4caf495d224b7b3aa9fde6cdf8fa151567c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:f2d604bc07f440f7459669d72db1d61f962e6a25aecd854f3e5886e4a28fafe1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153049121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9856424442bfb87eccf55481dc6c04cc2c5005be123331b54f1cfe4410df41`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:03:12 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 26 Jun 2018 23:03:12 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 26 Jun 2018 23:03:28 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:03:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:05:32 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d23bcf06240d057634d18bc8210fee9245d5cb3ef95ddb3e71cb10d8dd7609`  
		Last Modified: Tue, 26 Jun 2018 23:13:31 GMT  
		Size: 6.4 MB (6441602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348d893fa8eaf4186730519f6bb5faa32d6c3813f3624b6c54fd3a5edd912991`  
		Last Modified: Tue, 26 Jun 2018 23:13:30 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e96f340a171353632adaa351137d9b45c9ecedcde314f5662b85591b60edbdd`  
		Last Modified: Tue, 26 Jun 2018 23:15:08 GMT  
		Size: 107.2 MB (107237923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v7

```console
$ docker pull mono@sha256:c342c7ceeb0ef7ad549cd05f28f2af9b13c4cd80b1aabdd1a807785dfa1b0e83
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138944851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b55a944b76eecfa8b409ff92f9331c59604b352c62a0048b1aaf2ebe6a6cb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 13:36:11 GMT
ADD file:9db26feeeebe82707411c8b6a09f22ba8e33fdd8bdf1e1cb3fd179cfc09b850e in / 
# Tue, 12 Dec 2017 13:36:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:42:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 12 Dec 2017 14:42:42 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 12 Dec 2017 14:42:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:42:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 12 Dec 2017 14:44:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:dd70000a68c40049fa024e9ebecc22bcd8a32b0fb098e9f3edafdbfc872054b4`  
		Last Modified: Tue, 12 Dec 2017 13:47:59 GMT  
		Size: 35.7 MB (35661805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bac5781424193c9527b5bfa5c06eb028e0eca16516cd058511653a01b0b7dd`  
		Last Modified: Tue, 12 Dec 2017 14:50:53 GMT  
		Size: 7.2 MB (7185300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567cfe4d52b53ccc0a2131014faead07f90583cded9e13a802fd7ba39c4bbc67`  
		Last Modified: Tue, 12 Dec 2017 14:50:52 GMT  
		Size: 29.9 KB (29910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e170876330ebd96f24bce96ea82eb2241088331591e17d2b66fb8b7e6a0c3c`  
		Last Modified: Tue, 12 Dec 2017 14:51:26 GMT  
		Size: 96.1 MB (96067836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; 386

```console
$ docker pull mono@sha256:59d2aafb5019aa060037edabe206e9e7345e8b02aa1572624b16ff90c58bc869
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153051802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2752bf64dd28e661b0ad28235e70b196f81ef49273c05ba358557a688e0b115a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:23:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Sat, 28 Apr 2018 11:23:41 GMT
ENV MONO_VERSION=4.8.0.524
# Sat, 28 Apr 2018 11:23:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:23:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 28 Apr 2018 11:25:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce641e6b571d399afe5148baac58fcfd73b1a2cfdd36aaf676dc03a57fce5d9`  
		Last Modified: Sat, 28 Apr 2018 11:31:52 GMT  
		Size: 6.4 MB (6428167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9ff4404ebdb71792105e7d00f103494107a27b8f0d048b88d11fc38d91b1f9`  
		Last Modified: Sat, 28 Apr 2018 11:31:50 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e2871a640bbe004a05cb846b6a70756c156b6954ad0402c43dca42ab80474`  
		Last Modified: Sat, 28 Apr 2018 11:32:25 GMT  
		Size: 106.1 MB (106061610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:bbbd04f86aeec8ef98fc3456c3fc29c8ceaa3a1a4cff18cdd44692b70ebb3078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:c5beb4a01ecad0e70ac7cc18675edb029f39f21f9d1cebc3fc3b2dc075540854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178585314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92906f6c32ecd939e6840f29201c07d7aba390043bded9da9d95de6a71e1ed7a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:59:46 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 26 Jun 2018 22:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 26 Jun 2018 23:07:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91c48324a7764015fc00049fe98c09c3b847759cb684fbbc7e29e5e5fcb50d3`  
		Last Modified: Tue, 26 Jun 2018 23:11:35 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7e064eb521f412604a6ddd9da3ef25b3986467c303aabeb9fa62a377a5383`  
		Last Modified: Tue, 26 Jun 2018 23:11:46 GMT  
		Size: 27.8 MB (27758660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67df9eac0e2a2e293d3431a30fb11a73427b77132c26030c8d6e0ec429d2a953`  
		Last Modified: Tue, 26 Jun 2018 23:16:52 GMT  
		Size: 120.7 MB (120704752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:f93d0061ff5ef11520d50ae20cb37b1fa6162150994320e3f6869bbc7645630e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152506164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed583f9bcf8f43b10b695f9c39065b0b7e1d5b1c4803c0da5ace7c3bd648af`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:57:37 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 11:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 11:58:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 12:08:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c2a0c87bf4690668d4c1eb0197b7fba89dfca7471ef47279223a4053fa619`  
		Last Modified: Wed, 16 May 2018 12:15:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d063699c56806d33a120fe4cf8fc65f8499e816f91ad7dc0730e844a15036587`  
		Last Modified: Wed, 16 May 2018 12:15:30 GMT  
		Size: 22.5 MB (22459967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbdff965e8e7d023416c298462768867411e44e0b149fcdf43b5d65ae21cc74`  
		Last Modified: Wed, 16 May 2018 12:17:53 GMT  
		Size: 103.7 MB (103746731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:6a9140f8fc5bd1a6a018c0c707911f96e0206dd7ec405ffc96b44f0249f437eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172629094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114299255f64b5b684b2cf82d87f03df647334cbcd446b632e79342cdb125502`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 08:53:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314ac8a828b1adf0d1aa4a845c0f4a4b561b6e8633844e806e3c4acaefa55f23`  
		Last Modified: Wed, 16 May 2018 09:04:20 GMT  
		Size: 118.5 MB (118541167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:0ad11fac370828e6838f3cfd73ce77e37a6da5e2a66cdf29de0e22c8875a037d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180877790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73dafb904b492c63d101fdf3ba25630f5c9b6589c35c76508ebea7a8644638e5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:39:19 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 10:39:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 10:43:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f1f6c5f34eac7a9be9aaef69ace9fca3ac05e143c506bd5564a03f69c9bc32`  
		Last Modified: Wed, 16 May 2018 10:49:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391183880069e1514bda57196c2a3b9c435faaf05f9cf0a1e4cd47baae0a7f7d`  
		Last Modified: Wed, 16 May 2018 10:49:44 GMT  
		Size: 29.6 MB (29551638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fc446ac902854db99c87be91f2315ba47b67be712ab76f08a83ba684743ca`  
		Last Modified: Wed, 16 May 2018 10:51:36 GMT  
		Size: 121.0 MB (121045430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10`

```console
$ docker pull mono@sha256:d2ff9051ce45eebcfbd28c895b016740cc417c8eb4baba11b3d40e06ad144b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10` - linux; amd64

```console
$ docker pull mono@sha256:6883f2a6824ece4a795ca7d2bcd76e90ed7e6e3c0fd1f11bda7b6b4d08e74bbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175555097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0a7a99afa24f973634ddd9cee85a99cd9b1c1d3a83301c9029c59a9d35ff34`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:43 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 26 Jun 2018 23:01:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:03:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 26 Jun 2018 23:11:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8ce3ec02364142f2247a94cbb66a1e9e054a93746da2586872ddf08d9fbc8e`  
		Last Modified: Tue, 26 Jun 2018 23:12:40 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8431d4cf520464b6da7486e7c2551877cc634f41cd3bd7864a1c5a1f1b87616`  
		Last Modified: Tue, 26 Jun 2018 23:12:52 GMT  
		Size: 27.6 MB (27597547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b365dfc09ba582ca85f6548c2ff15d84677c611659418926430a4b4fc94004fc`  
		Last Modified: Tue, 26 Jun 2018 23:18:39 GMT  
		Size: 117.8 MB (117835648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:48346b81094368fe7d2d0c0c000a5aeac258642fff56d2bf5ee9d0c0850255bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169631475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f3e2e732ab1134c942d79c0bb13de27cc71663a529f9ac3f2aeb6c246cb2fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:42:43 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 08:42:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:44:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 09:01:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebbba80965790dc85b77d7d0a75e4bf119b497013a49826093155443b927a56`  
		Last Modified: Wed, 16 May 2018 09:02:53 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52b32239bd8218a021994a53d2aa48b6a4f091aeb2d40933f5e73771b28dca7`  
		Last Modified: Wed, 16 May 2018 09:03:04 GMT  
		Size: 26.5 MB (26499183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13338167e275230191b191218588466b77035e3f56084e58ca16d6d6c166031d`  
		Last Modified: Wed, 16 May 2018 09:05:56 GMT  
		Size: 115.6 MB (115635639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10` - linux; 386

```console
$ docker pull mono@sha256:6f65d4db669cfce5f13e1719517b348d7ea319baf577faf02b1789608bd37ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177807003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c30b5ebe5716c01d52ef5b555062d016fadd08e7f13faacdb55b4f7b072140a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:40:32 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 10:40:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:41:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 10:48:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e244ab0e4fac25ebda1b5396a0b158dab4e119bae6e320200c19a4b73b575e7`  
		Last Modified: Wed, 16 May 2018 10:50:19 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d9e55ed1787b0582e300b6dc1abd1586f973d88355f52b3d7c8324e51488e`  
		Last Modified: Wed, 16 May 2018 10:50:30 GMT  
		Size: 29.4 MB (29380227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67458fc4fe2e74dccfc66738a8bb6da0f32a44c7c961a99f328a4e5da2854a02`  
		Last Modified: Wed, 16 May 2018 10:53:19 GMT  
		Size: 118.1 MB (118146053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1`

```console
$ docker pull mono@sha256:d2ff9051ce45eebcfbd28c895b016740cc417c8eb4baba11b3d40e06ad144b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.1` - linux; amd64

```console
$ docker pull mono@sha256:6883f2a6824ece4a795ca7d2bcd76e90ed7e6e3c0fd1f11bda7b6b4d08e74bbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175555097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0a7a99afa24f973634ddd9cee85a99cd9b1c1d3a83301c9029c59a9d35ff34`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:43 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 26 Jun 2018 23:01:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:03:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 26 Jun 2018 23:11:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8ce3ec02364142f2247a94cbb66a1e9e054a93746da2586872ddf08d9fbc8e`  
		Last Modified: Tue, 26 Jun 2018 23:12:40 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8431d4cf520464b6da7486e7c2551877cc634f41cd3bd7864a1c5a1f1b87616`  
		Last Modified: Tue, 26 Jun 2018 23:12:52 GMT  
		Size: 27.6 MB (27597547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b365dfc09ba582ca85f6548c2ff15d84677c611659418926430a4b4fc94004fc`  
		Last Modified: Tue, 26 Jun 2018 23:18:39 GMT  
		Size: 117.8 MB (117835648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:48346b81094368fe7d2d0c0c000a5aeac258642fff56d2bf5ee9d0c0850255bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169631475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f3e2e732ab1134c942d79c0bb13de27cc71663a529f9ac3f2aeb6c246cb2fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:42:43 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 08:42:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:44:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 09:01:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebbba80965790dc85b77d7d0a75e4bf119b497013a49826093155443b927a56`  
		Last Modified: Wed, 16 May 2018 09:02:53 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52b32239bd8218a021994a53d2aa48b6a4f091aeb2d40933f5e73771b28dca7`  
		Last Modified: Wed, 16 May 2018 09:03:04 GMT  
		Size: 26.5 MB (26499183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13338167e275230191b191218588466b77035e3f56084e58ca16d6d6c166031d`  
		Last Modified: Wed, 16 May 2018 09:05:56 GMT  
		Size: 115.6 MB (115635639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1` - linux; 386

```console
$ docker pull mono@sha256:6f65d4db669cfce5f13e1719517b348d7ea319baf577faf02b1789608bd37ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177807003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c30b5ebe5716c01d52ef5b555062d016fadd08e7f13faacdb55b4f7b072140a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:40:32 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 10:40:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:41:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 10:48:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e244ab0e4fac25ebda1b5396a0b158dab4e119bae6e320200c19a4b73b575e7`  
		Last Modified: Wed, 16 May 2018 10:50:19 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d9e55ed1787b0582e300b6dc1abd1586f973d88355f52b3d7c8324e51488e`  
		Last Modified: Wed, 16 May 2018 10:50:30 GMT  
		Size: 29.4 MB (29380227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67458fc4fe2e74dccfc66738a8bb6da0f32a44c7c961a99f328a4e5da2854a02`  
		Last Modified: Wed, 16 May 2018 10:53:19 GMT  
		Size: 118.1 MB (118146053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1.47`

```console
$ docker pull mono@sha256:d2ff9051ce45eebcfbd28c895b016740cc417c8eb4baba11b3d40e06ad144b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.1.47` - linux; amd64

```console
$ docker pull mono@sha256:6883f2a6824ece4a795ca7d2bcd76e90ed7e6e3c0fd1f11bda7b6b4d08e74bbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175555097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac0a7a99afa24f973634ddd9cee85a99cd9b1c1d3a83301c9029c59a9d35ff34`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:43 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 26 Jun 2018 23:01:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:03:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 26 Jun 2018 23:11:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8ce3ec02364142f2247a94cbb66a1e9e054a93746da2586872ddf08d9fbc8e`  
		Last Modified: Tue, 26 Jun 2018 23:12:40 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8431d4cf520464b6da7486e7c2551877cc634f41cd3bd7864a1c5a1f1b87616`  
		Last Modified: Tue, 26 Jun 2018 23:12:52 GMT  
		Size: 27.6 MB (27597547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b365dfc09ba582ca85f6548c2ff15d84677c611659418926430a4b4fc94004fc`  
		Last Modified: Tue, 26 Jun 2018 23:18:39 GMT  
		Size: 117.8 MB (117835648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1.47` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:48346b81094368fe7d2d0c0c000a5aeac258642fff56d2bf5ee9d0c0850255bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169631475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f3e2e732ab1134c942d79c0bb13de27cc71663a529f9ac3f2aeb6c246cb2fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:42:43 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 08:42:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:44:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 09:01:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebbba80965790dc85b77d7d0a75e4bf119b497013a49826093155443b927a56`  
		Last Modified: Wed, 16 May 2018 09:02:53 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52b32239bd8218a021994a53d2aa48b6a4f091aeb2d40933f5e73771b28dca7`  
		Last Modified: Wed, 16 May 2018 09:03:04 GMT  
		Size: 26.5 MB (26499183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13338167e275230191b191218588466b77035e3f56084e58ca16d6d6c166031d`  
		Last Modified: Wed, 16 May 2018 09:05:56 GMT  
		Size: 115.6 MB (115635639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1.47` - linux; 386

```console
$ docker pull mono@sha256:6f65d4db669cfce5f13e1719517b348d7ea319baf577faf02b1789608bd37ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177807003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c30b5ebe5716c01d52ef5b555062d016fadd08e7f13faacdb55b4f7b072140a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:40:32 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 10:40:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:41:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 10:48:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e244ab0e4fac25ebda1b5396a0b158dab4e119bae6e320200c19a4b73b575e7`  
		Last Modified: Wed, 16 May 2018 10:50:19 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d9e55ed1787b0582e300b6dc1abd1586f973d88355f52b3d7c8324e51488e`  
		Last Modified: Wed, 16 May 2018 10:50:30 GMT  
		Size: 29.4 MB (29380227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67458fc4fe2e74dccfc66738a8bb6da0f32a44c7c961a99f328a4e5da2854a02`  
		Last Modified: Wed, 16 May 2018 10:53:19 GMT  
		Size: 118.1 MB (118146053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1.47-slim`

```console
$ docker pull mono@sha256:bebcf9042d3dedd8c51db4c832381444cc239f25f7316eaad1d6d8385a9181a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.1.47-slim` - linux; amd64

```console
$ docker pull mono@sha256:85f388d12145cbf109747cbad35a253d1587323c30eabea21e4971a6785cb54d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57719449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125144912929b37e7b0766c4bce3f45877ddcda53814edf2f95a3caffc49a332`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:43 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 26 Jun 2018 23:01:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:03:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8ce3ec02364142f2247a94cbb66a1e9e054a93746da2586872ddf08d9fbc8e`  
		Last Modified: Tue, 26 Jun 2018 23:12:40 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8431d4cf520464b6da7486e7c2551877cc634f41cd3bd7864a1c5a1f1b87616`  
		Last Modified: Tue, 26 Jun 2018 23:12:52 GMT  
		Size: 27.6 MB (27597547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1.47-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:22b5842897fe07657127a306b6ec4a21b21bb710871f2a71767c9cd8f5bfc077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48228632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff01d79090dd6b25187aa61bab76bbaa95495a463cd376087784096f1f1fcf79`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:59:03 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 11:59:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 12:00:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190e8da89fc817bc50bd2a7aef68fb2b9886bf8998e529a5dc7e730eb95cab4`  
		Last Modified: Wed, 16 May 2018 12:16:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad9eff3c01742589da0ec531c86d8d2ea5009f120efe4c2bdeeb83326843864`  
		Last Modified: Wed, 16 May 2018 12:16:34 GMT  
		Size: 21.9 MB (21929167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1.47-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:418d4b326f5d0fced4f5b3523fe70c3943dc849736c729b29b1f6d744bfc43e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53995836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1dbb4c4143dd407a2fb447e6da73f575786e74b75d9d03059880820c1a6420`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:42:43 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 08:42:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:44:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebbba80965790dc85b77d7d0a75e4bf119b497013a49826093155443b927a56`  
		Last Modified: Wed, 16 May 2018 09:02:53 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52b32239bd8218a021994a53d2aa48b6a4f091aeb2d40933f5e73771b28dca7`  
		Last Modified: Wed, 16 May 2018 09:03:04 GMT  
		Size: 26.5 MB (26499183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1.47-slim` - linux; 386

```console
$ docker pull mono@sha256:cc2e2e80b6921233b5c18d94022f20c34fb0cead321560c692c696981e849783
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59660950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fb191501ca28cf7ffc817ba8e011f5a10eb44648adaa3e9e9b535bd5ce1a0f1`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:40:32 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 10:40:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:41:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e244ab0e4fac25ebda1b5396a0b158dab4e119bae6e320200c19a4b73b575e7`  
		Last Modified: Wed, 16 May 2018 10:50:19 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d9e55ed1787b0582e300b6dc1abd1586f973d88355f52b3d7c8324e51488e`  
		Last Modified: Wed, 16 May 2018 10:50:30 GMT  
		Size: 29.4 MB (29380227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1-slim`

```console
$ docker pull mono@sha256:bebcf9042d3dedd8c51db4c832381444cc239f25f7316eaad1d6d8385a9181a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:85f388d12145cbf109747cbad35a253d1587323c30eabea21e4971a6785cb54d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57719449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125144912929b37e7b0766c4bce3f45877ddcda53814edf2f95a3caffc49a332`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:43 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 26 Jun 2018 23:01:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:03:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8ce3ec02364142f2247a94cbb66a1e9e054a93746da2586872ddf08d9fbc8e`  
		Last Modified: Tue, 26 Jun 2018 23:12:40 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8431d4cf520464b6da7486e7c2551877cc634f41cd3bd7864a1c5a1f1b87616`  
		Last Modified: Tue, 26 Jun 2018 23:12:52 GMT  
		Size: 27.6 MB (27597547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:22b5842897fe07657127a306b6ec4a21b21bb710871f2a71767c9cd8f5bfc077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48228632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff01d79090dd6b25187aa61bab76bbaa95495a463cd376087784096f1f1fcf79`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:59:03 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 11:59:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 12:00:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190e8da89fc817bc50bd2a7aef68fb2b9886bf8998e529a5dc7e730eb95cab4`  
		Last Modified: Wed, 16 May 2018 12:16:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad9eff3c01742589da0ec531c86d8d2ea5009f120efe4c2bdeeb83326843864`  
		Last Modified: Wed, 16 May 2018 12:16:34 GMT  
		Size: 21.9 MB (21929167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:418d4b326f5d0fced4f5b3523fe70c3943dc849736c729b29b1f6d744bfc43e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53995836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1dbb4c4143dd407a2fb447e6da73f575786e74b75d9d03059880820c1a6420`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:42:43 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 08:42:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:44:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebbba80965790dc85b77d7d0a75e4bf119b497013a49826093155443b927a56`  
		Last Modified: Wed, 16 May 2018 09:02:53 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52b32239bd8218a021994a53d2aa48b6a4f091aeb2d40933f5e73771b28dca7`  
		Last Modified: Wed, 16 May 2018 09:03:04 GMT  
		Size: 26.5 MB (26499183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1-slim` - linux; 386

```console
$ docker pull mono@sha256:cc2e2e80b6921233b5c18d94022f20c34fb0cead321560c692c696981e849783
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59660950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fb191501ca28cf7ffc817ba8e011f5a10eb44648adaa3e9e9b535bd5ce1a0f1`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:40:32 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 10:40:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:41:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e244ab0e4fac25ebda1b5396a0b158dab4e119bae6e320200c19a4b73b575e7`  
		Last Modified: Wed, 16 May 2018 10:50:19 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d9e55ed1787b0582e300b6dc1abd1586f973d88355f52b3d7c8324e51488e`  
		Last Modified: Wed, 16 May 2018 10:50:30 GMT  
		Size: 29.4 MB (29380227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10-slim`

```console
$ docker pull mono@sha256:bebcf9042d3dedd8c51db4c832381444cc239f25f7316eaad1d6d8385a9181a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10-slim` - linux; amd64

```console
$ docker pull mono@sha256:85f388d12145cbf109747cbad35a253d1587323c30eabea21e4971a6785cb54d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.7 MB (57719449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125144912929b37e7b0766c4bce3f45877ddcda53814edf2f95a3caffc49a332`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:43 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 26 Jun 2018 23:01:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:03:04 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8ce3ec02364142f2247a94cbb66a1e9e054a93746da2586872ddf08d9fbc8e`  
		Last Modified: Tue, 26 Jun 2018 23:12:40 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8431d4cf520464b6da7486e7c2551877cc634f41cd3bd7864a1c5a1f1b87616`  
		Last Modified: Tue, 26 Jun 2018 23:12:52 GMT  
		Size: 27.6 MB (27597547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:22b5842897fe07657127a306b6ec4a21b21bb710871f2a71767c9cd8f5bfc077
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48228632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff01d79090dd6b25187aa61bab76bbaa95495a463cd376087784096f1f1fcf79`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:59:03 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 11:59:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 12:00:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190e8da89fc817bc50bd2a7aef68fb2b9886bf8998e529a5dc7e730eb95cab4`  
		Last Modified: Wed, 16 May 2018 12:16:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad9eff3c01742589da0ec531c86d8d2ea5009f120efe4c2bdeeb83326843864`  
		Last Modified: Wed, 16 May 2018 12:16:34 GMT  
		Size: 21.9 MB (21929167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:418d4b326f5d0fced4f5b3523fe70c3943dc849736c729b29b1f6d744bfc43e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53995836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1dbb4c4143dd407a2fb447e6da73f575786e74b75d9d03059880820c1a6420`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:42:43 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 08:42:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:44:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebbba80965790dc85b77d7d0a75e4bf119b497013a49826093155443b927a56`  
		Last Modified: Wed, 16 May 2018 09:02:53 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52b32239bd8218a021994a53d2aa48b6a4f091aeb2d40933f5e73771b28dca7`  
		Last Modified: Wed, 16 May 2018 09:03:04 GMT  
		Size: 26.5 MB (26499183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10-slim` - linux; 386

```console
$ docker pull mono@sha256:cc2e2e80b6921233b5c18d94022f20c34fb0cead321560c692c696981e849783
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59660950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fb191501ca28cf7ffc817ba8e011f5a10eb44648adaa3e9e9b535bd5ce1a0f1`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:40:32 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 16 May 2018 10:40:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:41:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e244ab0e4fac25ebda1b5396a0b158dab4e119bae6e320200c19a4b73b575e7`  
		Last Modified: Wed, 16 May 2018 10:50:19 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d9e55ed1787b0582e300b6dc1abd1586f973d88355f52b3d7c8324e51488e`  
		Last Modified: Wed, 16 May 2018 10:50:30 GMT  
		Size: 29.4 MB (29380227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12`

```console
$ docker pull mono@sha256:bbbd04f86aeec8ef98fc3456c3fc29c8ceaa3a1a4cff18cdd44692b70ebb3078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12` - linux; amd64

```console
$ docker pull mono@sha256:c5beb4a01ecad0e70ac7cc18675edb029f39f21f9d1cebc3fc3b2dc075540854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178585314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92906f6c32ecd939e6840f29201c07d7aba390043bded9da9d95de6a71e1ed7a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:59:46 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 26 Jun 2018 22:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 26 Jun 2018 23:07:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91c48324a7764015fc00049fe98c09c3b847759cb684fbbc7e29e5e5fcb50d3`  
		Last Modified: Tue, 26 Jun 2018 23:11:35 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7e064eb521f412604a6ddd9da3ef25b3986467c303aabeb9fa62a377a5383`  
		Last Modified: Tue, 26 Jun 2018 23:11:46 GMT  
		Size: 27.8 MB (27758660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67df9eac0e2a2e293d3431a30fb11a73427b77132c26030c8d6e0ec429d2a953`  
		Last Modified: Tue, 26 Jun 2018 23:16:52 GMT  
		Size: 120.7 MB (120704752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12` - linux; arm variant v7

```console
$ docker pull mono@sha256:f93d0061ff5ef11520d50ae20cb37b1fa6162150994320e3f6869bbc7645630e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152506164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed583f9bcf8f43b10b695f9c39065b0b7e1d5b1c4803c0da5ace7c3bd648af`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:57:37 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 11:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 11:58:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 12:08:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c2a0c87bf4690668d4c1eb0197b7fba89dfca7471ef47279223a4053fa619`  
		Last Modified: Wed, 16 May 2018 12:15:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d063699c56806d33a120fe4cf8fc65f8499e816f91ad7dc0730e844a15036587`  
		Last Modified: Wed, 16 May 2018 12:15:30 GMT  
		Size: 22.5 MB (22459967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbdff965e8e7d023416c298462768867411e44e0b149fcdf43b5d65ae21cc74`  
		Last Modified: Wed, 16 May 2018 12:17:53 GMT  
		Size: 103.7 MB (103746731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:6a9140f8fc5bd1a6a018c0c707911f96e0206dd7ec405ffc96b44f0249f437eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172629094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114299255f64b5b684b2cf82d87f03df647334cbcd446b632e79342cdb125502`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 08:53:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314ac8a828b1adf0d1aa4a845c0f4a4b561b6e8633844e806e3c4acaefa55f23`  
		Last Modified: Wed, 16 May 2018 09:04:20 GMT  
		Size: 118.5 MB (118541167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12` - linux; 386

```console
$ docker pull mono@sha256:0ad11fac370828e6838f3cfd73ce77e37a6da5e2a66cdf29de0e22c8875a037d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180877790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73dafb904b492c63d101fdf3ba25630f5c9b6589c35c76508ebea7a8644638e5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:39:19 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 10:39:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 10:43:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f1f6c5f34eac7a9be9aaef69ace9fca3ac05e143c506bd5564a03f69c9bc32`  
		Last Modified: Wed, 16 May 2018 10:49:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391183880069e1514bda57196c2a3b9c435faaf05f9cf0a1e4cd47baae0a7f7d`  
		Last Modified: Wed, 16 May 2018 10:49:44 GMT  
		Size: 29.6 MB (29551638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fc446ac902854db99c87be91f2315ba47b67be712ab76f08a83ba684743ca`  
		Last Modified: Wed, 16 May 2018 10:51:36 GMT  
		Size: 121.0 MB (121045430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0`

```console
$ docker pull mono@sha256:bbbd04f86aeec8ef98fc3456c3fc29c8ceaa3a1a4cff18cdd44692b70ebb3078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0` - linux; amd64

```console
$ docker pull mono@sha256:c5beb4a01ecad0e70ac7cc18675edb029f39f21f9d1cebc3fc3b2dc075540854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178585314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92906f6c32ecd939e6840f29201c07d7aba390043bded9da9d95de6a71e1ed7a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:59:46 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 26 Jun 2018 22:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 26 Jun 2018 23:07:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91c48324a7764015fc00049fe98c09c3b847759cb684fbbc7e29e5e5fcb50d3`  
		Last Modified: Tue, 26 Jun 2018 23:11:35 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7e064eb521f412604a6ddd9da3ef25b3986467c303aabeb9fa62a377a5383`  
		Last Modified: Tue, 26 Jun 2018 23:11:46 GMT  
		Size: 27.8 MB (27758660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67df9eac0e2a2e293d3431a30fb11a73427b77132c26030c8d6e0ec429d2a953`  
		Last Modified: Tue, 26 Jun 2018 23:16:52 GMT  
		Size: 120.7 MB (120704752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:f93d0061ff5ef11520d50ae20cb37b1fa6162150994320e3f6869bbc7645630e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152506164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed583f9bcf8f43b10b695f9c39065b0b7e1d5b1c4803c0da5ace7c3bd648af`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:57:37 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 11:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 11:58:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 12:08:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c2a0c87bf4690668d4c1eb0197b7fba89dfca7471ef47279223a4053fa619`  
		Last Modified: Wed, 16 May 2018 12:15:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d063699c56806d33a120fe4cf8fc65f8499e816f91ad7dc0730e844a15036587`  
		Last Modified: Wed, 16 May 2018 12:15:30 GMT  
		Size: 22.5 MB (22459967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbdff965e8e7d023416c298462768867411e44e0b149fcdf43b5d65ae21cc74`  
		Last Modified: Wed, 16 May 2018 12:17:53 GMT  
		Size: 103.7 MB (103746731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:6a9140f8fc5bd1a6a018c0c707911f96e0206dd7ec405ffc96b44f0249f437eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172629094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114299255f64b5b684b2cf82d87f03df647334cbcd446b632e79342cdb125502`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 08:53:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314ac8a828b1adf0d1aa4a845c0f4a4b561b6e8633844e806e3c4acaefa55f23`  
		Last Modified: Wed, 16 May 2018 09:04:20 GMT  
		Size: 118.5 MB (118541167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0` - linux; 386

```console
$ docker pull mono@sha256:0ad11fac370828e6838f3cfd73ce77e37a6da5e2a66cdf29de0e22c8875a037d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180877790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73dafb904b492c63d101fdf3ba25630f5c9b6589c35c76508ebea7a8644638e5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:39:19 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 10:39:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 10:43:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f1f6c5f34eac7a9be9aaef69ace9fca3ac05e143c506bd5564a03f69c9bc32`  
		Last Modified: Wed, 16 May 2018 10:49:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391183880069e1514bda57196c2a3b9c435faaf05f9cf0a1e4cd47baae0a7f7d`  
		Last Modified: Wed, 16 May 2018 10:49:44 GMT  
		Size: 29.6 MB (29551638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fc446ac902854db99c87be91f2315ba47b67be712ab76f08a83ba684743ca`  
		Last Modified: Wed, 16 May 2018 10:51:36 GMT  
		Size: 121.0 MB (121045430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0.226`

```console
$ docker pull mono@sha256:bbbd04f86aeec8ef98fc3456c3fc29c8ceaa3a1a4cff18cdd44692b70ebb3078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0.226` - linux; amd64

```console
$ docker pull mono@sha256:c5beb4a01ecad0e70ac7cc18675edb029f39f21f9d1cebc3fc3b2dc075540854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178585314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92906f6c32ecd939e6840f29201c07d7aba390043bded9da9d95de6a71e1ed7a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:59:46 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 26 Jun 2018 22:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 26 Jun 2018 23:07:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91c48324a7764015fc00049fe98c09c3b847759cb684fbbc7e29e5e5fcb50d3`  
		Last Modified: Tue, 26 Jun 2018 23:11:35 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7e064eb521f412604a6ddd9da3ef25b3986467c303aabeb9fa62a377a5383`  
		Last Modified: Tue, 26 Jun 2018 23:11:46 GMT  
		Size: 27.8 MB (27758660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67df9eac0e2a2e293d3431a30fb11a73427b77132c26030c8d6e0ec429d2a953`  
		Last Modified: Tue, 26 Jun 2018 23:16:52 GMT  
		Size: 120.7 MB (120704752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226` - linux; arm variant v7

```console
$ docker pull mono@sha256:f93d0061ff5ef11520d50ae20cb37b1fa6162150994320e3f6869bbc7645630e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152506164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed583f9bcf8f43b10b695f9c39065b0b7e1d5b1c4803c0da5ace7c3bd648af`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:57:37 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 11:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 11:58:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 12:08:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c2a0c87bf4690668d4c1eb0197b7fba89dfca7471ef47279223a4053fa619`  
		Last Modified: Wed, 16 May 2018 12:15:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d063699c56806d33a120fe4cf8fc65f8499e816f91ad7dc0730e844a15036587`  
		Last Modified: Wed, 16 May 2018 12:15:30 GMT  
		Size: 22.5 MB (22459967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbdff965e8e7d023416c298462768867411e44e0b149fcdf43b5d65ae21cc74`  
		Last Modified: Wed, 16 May 2018 12:17:53 GMT  
		Size: 103.7 MB (103746731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:6a9140f8fc5bd1a6a018c0c707911f96e0206dd7ec405ffc96b44f0249f437eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172629094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114299255f64b5b684b2cf82d87f03df647334cbcd446b632e79342cdb125502`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 08:53:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314ac8a828b1adf0d1aa4a845c0f4a4b561b6e8633844e806e3c4acaefa55f23`  
		Last Modified: Wed, 16 May 2018 09:04:20 GMT  
		Size: 118.5 MB (118541167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226` - linux; 386

```console
$ docker pull mono@sha256:0ad11fac370828e6838f3cfd73ce77e37a6da5e2a66cdf29de0e22c8875a037d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180877790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73dafb904b492c63d101fdf3ba25630f5c9b6589c35c76508ebea7a8644638e5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:39:19 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 10:39:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 10:43:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f1f6c5f34eac7a9be9aaef69ace9fca3ac05e143c506bd5564a03f69c9bc32`  
		Last Modified: Wed, 16 May 2018 10:49:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391183880069e1514bda57196c2a3b9c435faaf05f9cf0a1e4cd47baae0a7f7d`  
		Last Modified: Wed, 16 May 2018 10:49:44 GMT  
		Size: 29.6 MB (29551638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fc446ac902854db99c87be91f2315ba47b67be712ab76f08a83ba684743ca`  
		Last Modified: Wed, 16 May 2018 10:51:36 GMT  
		Size: 121.0 MB (121045430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0.226-slim`

```console
$ docker pull mono@sha256:0e8a4570d26433a11525515189901215b498eb15dee05832bdeaff4609a791a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0.226-slim` - linux; amd64

```console
$ docker pull mono@sha256:80127939fe73b66de1348f6f10f3ca7f9294affc5ed67b3b3292783fff2755b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57880562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518eaada021d28c11c2757eed1ccccf2f54d2475290d193a95dfb5200357b370`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:59:46 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 26 Jun 2018 22:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91c48324a7764015fc00049fe98c09c3b847759cb684fbbc7e29e5e5fcb50d3`  
		Last Modified: Tue, 26 Jun 2018 23:11:35 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7e064eb521f412604a6ddd9da3ef25b3986467c303aabeb9fa62a377a5383`  
		Last Modified: Tue, 26 Jun 2018 23:11:46 GMT  
		Size: 27.8 MB (27758660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5c619f2be961fc31ff0444d11c8d0ec34631f5e9942246fb01ca30c86677b31c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48759433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cc67ac2fd2eb1e77db87ba11b44f8a59d67b5a53bf0270d16a189e6d191c07`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:57:37 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 11:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 11:58:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c2a0c87bf4690668d4c1eb0197b7fba89dfca7471ef47279223a4053fa619`  
		Last Modified: Wed, 16 May 2018 12:15:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d063699c56806d33a120fe4cf8fc65f8499e816f91ad7dc0730e844a15036587`  
		Last Modified: Wed, 16 May 2018 12:15:30 GMT  
		Size: 22.5 MB (22459967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:8a7ed38df5535022f541f496ad420d0797a08dbbafa3ddb3716021be574c202a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54087927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1a335f5d76bb1891b5a26f14e7e0c2d5e684c5d69c5d2477366d1bb3d16ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226-slim` - linux; 386

```console
$ docker pull mono@sha256:e034d9e649c82a31c756f09903f7023f14d9c3c2901a72ec7e2ad407b56ac0ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59832360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887f4502bda244f97b1963d5354aa7304a275726f54b6379f40f8892a83e6cca`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:39:19 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 10:39:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f1f6c5f34eac7a9be9aaef69ace9fca3ac05e143c506bd5564a03f69c9bc32`  
		Last Modified: Wed, 16 May 2018 10:49:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391183880069e1514bda57196c2a3b9c435faaf05f9cf0a1e4cd47baae0a7f7d`  
		Last Modified: Wed, 16 May 2018 10:49:44 GMT  
		Size: 29.6 MB (29551638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0-slim`

```console
$ docker pull mono@sha256:0e8a4570d26433a11525515189901215b498eb15dee05832bdeaff4609a791a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:80127939fe73b66de1348f6f10f3ca7f9294affc5ed67b3b3292783fff2755b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57880562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518eaada021d28c11c2757eed1ccccf2f54d2475290d193a95dfb5200357b370`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:59:46 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 26 Jun 2018 22:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91c48324a7764015fc00049fe98c09c3b847759cb684fbbc7e29e5e5fcb50d3`  
		Last Modified: Tue, 26 Jun 2018 23:11:35 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7e064eb521f412604a6ddd9da3ef25b3986467c303aabeb9fa62a377a5383`  
		Last Modified: Tue, 26 Jun 2018 23:11:46 GMT  
		Size: 27.8 MB (27758660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5c619f2be961fc31ff0444d11c8d0ec34631f5e9942246fb01ca30c86677b31c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48759433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cc67ac2fd2eb1e77db87ba11b44f8a59d67b5a53bf0270d16a189e6d191c07`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:57:37 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 11:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 11:58:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c2a0c87bf4690668d4c1eb0197b7fba89dfca7471ef47279223a4053fa619`  
		Last Modified: Wed, 16 May 2018 12:15:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d063699c56806d33a120fe4cf8fc65f8499e816f91ad7dc0730e844a15036587`  
		Last Modified: Wed, 16 May 2018 12:15:30 GMT  
		Size: 22.5 MB (22459967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:8a7ed38df5535022f541f496ad420d0797a08dbbafa3ddb3716021be574c202a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54087927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1a335f5d76bb1891b5a26f14e7e0c2d5e684c5d69c5d2477366d1bb3d16ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0-slim` - linux; 386

```console
$ docker pull mono@sha256:e034d9e649c82a31c756f09903f7023f14d9c3c2901a72ec7e2ad407b56ac0ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59832360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887f4502bda244f97b1963d5354aa7304a275726f54b6379f40f8892a83e6cca`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:39:19 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 10:39:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f1f6c5f34eac7a9be9aaef69ace9fca3ac05e143c506bd5564a03f69c9bc32`  
		Last Modified: Wed, 16 May 2018 10:49:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391183880069e1514bda57196c2a3b9c435faaf05f9cf0a1e4cd47baae0a7f7d`  
		Last Modified: Wed, 16 May 2018 10:49:44 GMT  
		Size: 29.6 MB (29551638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12-slim`

```console
$ docker pull mono@sha256:0e8a4570d26433a11525515189901215b498eb15dee05832bdeaff4609a791a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12-slim` - linux; amd64

```console
$ docker pull mono@sha256:80127939fe73b66de1348f6f10f3ca7f9294affc5ed67b3b3292783fff2755b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57880562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518eaada021d28c11c2757eed1ccccf2f54d2475290d193a95dfb5200357b370`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:59:46 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 26 Jun 2018 22:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91c48324a7764015fc00049fe98c09c3b847759cb684fbbc7e29e5e5fcb50d3`  
		Last Modified: Tue, 26 Jun 2018 23:11:35 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7e064eb521f412604a6ddd9da3ef25b3986467c303aabeb9fa62a377a5383`  
		Last Modified: Tue, 26 Jun 2018 23:11:46 GMT  
		Size: 27.8 MB (27758660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5c619f2be961fc31ff0444d11c8d0ec34631f5e9942246fb01ca30c86677b31c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48759433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cc67ac2fd2eb1e77db87ba11b44f8a59d67b5a53bf0270d16a189e6d191c07`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:57:37 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 11:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 11:58:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c2a0c87bf4690668d4c1eb0197b7fba89dfca7471ef47279223a4053fa619`  
		Last Modified: Wed, 16 May 2018 12:15:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d063699c56806d33a120fe4cf8fc65f8499e816f91ad7dc0730e844a15036587`  
		Last Modified: Wed, 16 May 2018 12:15:30 GMT  
		Size: 22.5 MB (22459967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:8a7ed38df5535022f541f496ad420d0797a08dbbafa3ddb3716021be574c202a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54087927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1a335f5d76bb1891b5a26f14e7e0c2d5e684c5d69c5d2477366d1bb3d16ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12-slim` - linux; 386

```console
$ docker pull mono@sha256:e034d9e649c82a31c756f09903f7023f14d9c3c2901a72ec7e2ad407b56ac0ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59832360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887f4502bda244f97b1963d5354aa7304a275726f54b6379f40f8892a83e6cca`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:39:19 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 10:39:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f1f6c5f34eac7a9be9aaef69ace9fca3ac05e143c506bd5564a03f69c9bc32`  
		Last Modified: Wed, 16 May 2018 10:49:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391183880069e1514bda57196c2a3b9c435faaf05f9cf0a1e4cd47baae0a7f7d`  
		Last Modified: Wed, 16 May 2018 10:49:44 GMT  
		Size: 29.6 MB (29551638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:0e8a4570d26433a11525515189901215b498eb15dee05832bdeaff4609a791a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:80127939fe73b66de1348f6f10f3ca7f9294affc5ed67b3b3292783fff2755b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57880562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518eaada021d28c11c2757eed1ccccf2f54d2475290d193a95dfb5200357b370`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:59:46 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 26 Jun 2018 22:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91c48324a7764015fc00049fe98c09c3b847759cb684fbbc7e29e5e5fcb50d3`  
		Last Modified: Tue, 26 Jun 2018 23:11:35 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7e064eb521f412604a6ddd9da3ef25b3986467c303aabeb9fa62a377a5383`  
		Last Modified: Tue, 26 Jun 2018 23:11:46 GMT  
		Size: 27.8 MB (27758660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5c619f2be961fc31ff0444d11c8d0ec34631f5e9942246fb01ca30c86677b31c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48759433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cc67ac2fd2eb1e77db87ba11b44f8a59d67b5a53bf0270d16a189e6d191c07`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:57:37 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 11:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 11:58:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c2a0c87bf4690668d4c1eb0197b7fba89dfca7471ef47279223a4053fa619`  
		Last Modified: Wed, 16 May 2018 12:15:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d063699c56806d33a120fe4cf8fc65f8499e816f91ad7dc0730e844a15036587`  
		Last Modified: Wed, 16 May 2018 12:15:30 GMT  
		Size: 22.5 MB (22459967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:8a7ed38df5535022f541f496ad420d0797a08dbbafa3ddb3716021be574c202a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54087927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1a335f5d76bb1891b5a26f14e7e0c2d5e684c5d69c5d2477366d1bb3d16ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:e034d9e649c82a31c756f09903f7023f14d9c3c2901a72ec7e2ad407b56ac0ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59832360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887f4502bda244f97b1963d5354aa7304a275726f54b6379f40f8892a83e6cca`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:39:19 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 10:39:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f1f6c5f34eac7a9be9aaef69ace9fca3ac05e143c506bd5564a03f69c9bc32`  
		Last Modified: Wed, 16 May 2018 10:49:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391183880069e1514bda57196c2a3b9c435faaf05f9cf0a1e4cd47baae0a7f7d`  
		Last Modified: Wed, 16 May 2018 10:49:44 GMT  
		Size: 29.6 MB (29551638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:bbbd04f86aeec8ef98fc3456c3fc29c8ceaa3a1a4cff18cdd44692b70ebb3078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:c5beb4a01ecad0e70ac7cc18675edb029f39f21f9d1cebc3fc3b2dc075540854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178585314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92906f6c32ecd939e6840f29201c07d7aba390043bded9da9d95de6a71e1ed7a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:59:46 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 26 Jun 2018 22:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 26 Jun 2018 23:07:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91c48324a7764015fc00049fe98c09c3b847759cb684fbbc7e29e5e5fcb50d3`  
		Last Modified: Tue, 26 Jun 2018 23:11:35 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7e064eb521f412604a6ddd9da3ef25b3986467c303aabeb9fa62a377a5383`  
		Last Modified: Tue, 26 Jun 2018 23:11:46 GMT  
		Size: 27.8 MB (27758660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67df9eac0e2a2e293d3431a30fb11a73427b77132c26030c8d6e0ec429d2a953`  
		Last Modified: Tue, 26 Jun 2018 23:16:52 GMT  
		Size: 120.7 MB (120704752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:f93d0061ff5ef11520d50ae20cb37b1fa6162150994320e3f6869bbc7645630e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152506164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbed583f9bcf8f43b10b695f9c39065b0b7e1d5b1c4803c0da5ace7c3bd648af`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:57:37 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 11:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 11:58:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 12:08:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c2a0c87bf4690668d4c1eb0197b7fba89dfca7471ef47279223a4053fa619`  
		Last Modified: Wed, 16 May 2018 12:15:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d063699c56806d33a120fe4cf8fc65f8499e816f91ad7dc0730e844a15036587`  
		Last Modified: Wed, 16 May 2018 12:15:30 GMT  
		Size: 22.5 MB (22459967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbdff965e8e7d023416c298462768867411e44e0b149fcdf43b5d65ae21cc74`  
		Last Modified: Wed, 16 May 2018 12:17:53 GMT  
		Size: 103.7 MB (103746731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:6a9140f8fc5bd1a6a018c0c707911f96e0206dd7ec405ffc96b44f0249f437eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172629094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114299255f64b5b684b2cf82d87f03df647334cbcd446b632e79342cdb125502`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 08:53:41 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314ac8a828b1adf0d1aa4a845c0f4a4b561b6e8633844e806e3c4acaefa55f23`  
		Last Modified: Wed, 16 May 2018 09:04:20 GMT  
		Size: 118.5 MB (118541167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:0ad11fac370828e6838f3cfd73ce77e37a6da5e2a66cdf29de0e22c8875a037d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180877790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73dafb904b492c63d101fdf3ba25630f5c9b6589c35c76508ebea7a8644638e5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:39:19 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 10:39:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 16 May 2018 10:43:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f1f6c5f34eac7a9be9aaef69ace9fca3ac05e143c506bd5564a03f69c9bc32`  
		Last Modified: Wed, 16 May 2018 10:49:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391183880069e1514bda57196c2a3b9c435faaf05f9cf0a1e4cd47baae0a7f7d`  
		Last Modified: Wed, 16 May 2018 10:49:44 GMT  
		Size: 29.6 MB (29551638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fc446ac902854db99c87be91f2315ba47b67be712ab76f08a83ba684743ca`  
		Last Modified: Wed, 16 May 2018 10:51:36 GMT  
		Size: 121.0 MB (121045430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:0e8a4570d26433a11525515189901215b498eb15dee05832bdeaff4609a791a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:80127939fe73b66de1348f6f10f3ca7f9294affc5ed67b3b3292783fff2755b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57880562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518eaada021d28c11c2757eed1ccccf2f54d2475290d193a95dfb5200357b370`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:59:46 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 26 Jun 2018 22:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 26 Jun 2018 23:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91c48324a7764015fc00049fe98c09c3b847759cb684fbbc7e29e5e5fcb50d3`  
		Last Modified: Tue, 26 Jun 2018 23:11:35 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f7e064eb521f412604a6ddd9da3ef25b3986467c303aabeb9fa62a377a5383`  
		Last Modified: Tue, 26 Jun 2018 23:11:46 GMT  
		Size: 27.8 MB (27758660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5c619f2be961fc31ff0444d11c8d0ec34631f5e9942246fb01ca30c86677b31c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48759433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68cc67ac2fd2eb1e77db87ba11b44f8a59d67b5a53bf0270d16a189e6d191c07`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:59:37 GMT
ADD file:f8c645337024c026fbe602f5480bff6efe08526fe5ae5523df7dc29d240d16d2 in / 
# Sat, 28 Apr 2018 11:59:37 GMT
CMD ["bash"]
# Wed, 16 May 2018 11:57:37 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 11:57:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 11:58:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2d5e3d857ad4821de542179b9b489e90fd471e4cd9f25c4aa2a09561c37a7806`  
		Last Modified: Sat, 28 Apr 2018 12:11:15 GMT  
		Size: 26.3 MB (26297400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b21c2a0c87bf4690668d4c1eb0197b7fba89dfca7471ef47279223a4053fa619`  
		Last Modified: Wed, 16 May 2018 12:15:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d063699c56806d33a120fe4cf8fc65f8499e816f91ad7dc0730e844a15036587`  
		Last Modified: Wed, 16 May 2018 12:15:30 GMT  
		Size: 22.5 MB (22459967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:8a7ed38df5535022f541f496ad420d0797a08dbbafa3ddb3716021be574c202a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54087927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a1a335f5d76bb1891b5a26f14e7e0c2d5e684c5d69c5d2477366d1bb3d16ca9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Wed, 16 May 2018 08:40:05 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 08:40:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 08:42:20 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5f2b795810e8195c4cf4da6616054f67094b246d5b5b282fb3fbf9e09c01`  
		Last Modified: Wed, 16 May 2018 09:01:55 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7535467733aadc752ac98b07d12741e6f65496aa2152e1a7dadf0fdd68f6e93c`  
		Last Modified: Wed, 16 May 2018 09:02:06 GMT  
		Size: 26.6 MB (26591272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:e034d9e649c82a31c756f09903f7023f14d9c3c2901a72ec7e2ad407b56ac0ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59832360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887f4502bda244f97b1963d5354aa7304a275726f54b6379f40f8892a83e6cca`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Wed, 16 May 2018 10:39:19 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 16 May 2018 10:39:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 16 May 2018 10:40:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f1f6c5f34eac7a9be9aaef69ace9fca3ac05e143c506bd5564a03f69c9bc32`  
		Last Modified: Wed, 16 May 2018 10:49:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391183880069e1514bda57196c2a3b9c435faaf05f9cf0a1e4cd47baae0a7f7d`  
		Last Modified: Wed, 16 May 2018 10:49:44 GMT  
		Size: 29.6 MB (29551638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

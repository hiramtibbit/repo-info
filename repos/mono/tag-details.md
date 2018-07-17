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
$ docker pull mono@sha256:c000c99e448bcf5c9103008b754c4919d7e6be80fbe986b1aa797a4af031b9c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:38e4ce38740a9ddcc191736a2084078b8ae044c1e293146d1c81fcde2b7e8f70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98da674874d5e0654d7f927ee20e8ed0c7db98e4673eba865ce7f42360a7bfe8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:59:43 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jul 2018 03:59:43 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 17 Jul 2018 03:59:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:59:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 04:01:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6ceb72deac369c74c285f33bb768188869defc0a6d952e634b54a9f34bb184`  
		Last Modified: Tue, 17 Jul 2018 04:10:02 GMT  
		Size: 6.4 MB (6419032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e7cc6e96e5776bd9ef9f2b36a4359f1ee9dac059a4128e04b15960a312f73e`  
		Last Modified: Tue, 17 Jul 2018 04:10:00 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164f6fbe4344c52ec936596c191b21b0f6050681e6b1e25be4130c2478e70a1`  
		Last Modified: Tue, 17 Jul 2018 04:10:40 GMT  
		Size: 107.2 MB (107188853 bytes)  
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
$ docker pull mono@sha256:fc29e4184759b87a2ccd0803d0d7ecac3fcc9f3124b8fca82958620ed53ef437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153054010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913bc284e376e83d2a8b3ca2b12fa2673830304cc32be1cdf2a1a59feb3d24e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:49:16 GMT
ADD file:d40801b865e65cc6b87379ebf0411c4eab5e5b94c02de103dd8e75ef16aedb97 in / 
# Wed, 27 Jun 2018 10:49:21 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:45:26 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 27 Jun 2018 12:45:26 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 27 Jun 2018 12:45:48 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:45:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:48:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4bf8262684df8a752a20a3e6b45f60585658f70a4dc9110885e7456952812957`  
		Last Modified: Wed, 27 Jun 2018 11:14:00 GMT  
		Size: 40.5 MB (40532864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98e1ff0964ba64b520e4071798250cf1719e91671a7cb4d8f374efa161521e0`  
		Last Modified: Wed, 27 Jun 2018 12:58:04 GMT  
		Size: 6.4 MB (6428584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5f6416cd6f9eac1c10ef86dac95858457ae5001be44c98cd201cb348898e46`  
		Last Modified: Wed, 27 Jun 2018 12:57:51 GMT  
		Size: 29.9 KB (29911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f4dc12704d5b0797bb09b1c15fd541019f9b6df8db94389a60283482ece0b3`  
		Last Modified: Wed, 27 Jun 2018 12:58:43 GMT  
		Size: 106.1 MB (106062651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:c000c99e448bcf5c9103008b754c4919d7e6be80fbe986b1aa797a4af031b9c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:38e4ce38740a9ddcc191736a2084078b8ae044c1e293146d1c81fcde2b7e8f70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98da674874d5e0654d7f927ee20e8ed0c7db98e4673eba865ce7f42360a7bfe8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:59:43 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jul 2018 03:59:43 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 17 Jul 2018 03:59:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:59:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 04:01:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6ceb72deac369c74c285f33bb768188869defc0a6d952e634b54a9f34bb184`  
		Last Modified: Tue, 17 Jul 2018 04:10:02 GMT  
		Size: 6.4 MB (6419032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e7cc6e96e5776bd9ef9f2b36a4359f1ee9dac059a4128e04b15960a312f73e`  
		Last Modified: Tue, 17 Jul 2018 04:10:00 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164f6fbe4344c52ec936596c191b21b0f6050681e6b1e25be4130c2478e70a1`  
		Last Modified: Tue, 17 Jul 2018 04:10:40 GMT  
		Size: 107.2 MB (107188853 bytes)  
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
$ docker pull mono@sha256:fc29e4184759b87a2ccd0803d0d7ecac3fcc9f3124b8fca82958620ed53ef437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153054010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913bc284e376e83d2a8b3ca2b12fa2673830304cc32be1cdf2a1a59feb3d24e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:49:16 GMT
ADD file:d40801b865e65cc6b87379ebf0411c4eab5e5b94c02de103dd8e75ef16aedb97 in / 
# Wed, 27 Jun 2018 10:49:21 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:45:26 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 27 Jun 2018 12:45:26 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 27 Jun 2018 12:45:48 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:45:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:48:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4bf8262684df8a752a20a3e6b45f60585658f70a4dc9110885e7456952812957`  
		Last Modified: Wed, 27 Jun 2018 11:14:00 GMT  
		Size: 40.5 MB (40532864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98e1ff0964ba64b520e4071798250cf1719e91671a7cb4d8f374efa161521e0`  
		Last Modified: Wed, 27 Jun 2018 12:58:04 GMT  
		Size: 6.4 MB (6428584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5f6416cd6f9eac1c10ef86dac95858457ae5001be44c98cd201cb348898e46`  
		Last Modified: Wed, 27 Jun 2018 12:57:51 GMT  
		Size: 29.9 KB (29911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f4dc12704d5b0797bb09b1c15fd541019f9b6df8db94389a60283482ece0b3`  
		Last Modified: Wed, 27 Jun 2018 12:58:43 GMT  
		Size: 106.1 MB (106062651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:c000c99e448bcf5c9103008b754c4919d7e6be80fbe986b1aa797a4af031b9c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:38e4ce38740a9ddcc191736a2084078b8ae044c1e293146d1c81fcde2b7e8f70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98da674874d5e0654d7f927ee20e8ed0c7db98e4673eba865ce7f42360a7bfe8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:59:43 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jul 2018 03:59:43 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 17 Jul 2018 03:59:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:59:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 04:01:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6ceb72deac369c74c285f33bb768188869defc0a6d952e634b54a9f34bb184`  
		Last Modified: Tue, 17 Jul 2018 04:10:02 GMT  
		Size: 6.4 MB (6419032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e7cc6e96e5776bd9ef9f2b36a4359f1ee9dac059a4128e04b15960a312f73e`  
		Last Modified: Tue, 17 Jul 2018 04:10:00 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164f6fbe4344c52ec936596c191b21b0f6050681e6b1e25be4130c2478e70a1`  
		Last Modified: Tue, 17 Jul 2018 04:10:40 GMT  
		Size: 107.2 MB (107188853 bytes)  
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
$ docker pull mono@sha256:fc29e4184759b87a2ccd0803d0d7ecac3fcc9f3124b8fca82958620ed53ef437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153054010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913bc284e376e83d2a8b3ca2b12fa2673830304cc32be1cdf2a1a59feb3d24e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:49:16 GMT
ADD file:d40801b865e65cc6b87379ebf0411c4eab5e5b94c02de103dd8e75ef16aedb97 in / 
# Wed, 27 Jun 2018 10:49:21 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:45:26 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 27 Jun 2018 12:45:26 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 27 Jun 2018 12:45:48 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:45:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:48:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4bf8262684df8a752a20a3e6b45f60585658f70a4dc9110885e7456952812957`  
		Last Modified: Wed, 27 Jun 2018 11:14:00 GMT  
		Size: 40.5 MB (40532864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98e1ff0964ba64b520e4071798250cf1719e91671a7cb4d8f374efa161521e0`  
		Last Modified: Wed, 27 Jun 2018 12:58:04 GMT  
		Size: 6.4 MB (6428584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5f6416cd6f9eac1c10ef86dac95858457ae5001be44c98cd201cb348898e46`  
		Last Modified: Wed, 27 Jun 2018 12:57:51 GMT  
		Size: 29.9 KB (29911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f4dc12704d5b0797bb09b1c15fd541019f9b6df8db94389a60283482ece0b3`  
		Last Modified: Wed, 27 Jun 2018 12:58:43 GMT  
		Size: 106.1 MB (106062651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:c000c99e448bcf5c9103008b754c4919d7e6be80fbe986b1aa797a4af031b9c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:38e4ce38740a9ddcc191736a2084078b8ae044c1e293146d1c81fcde2b7e8f70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152977086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98da674874d5e0654d7f927ee20e8ed0c7db98e4673eba865ce7f42360a7bfe8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:59:43 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 17 Jul 2018 03:59:43 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 17 Jul 2018 03:59:57 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:59:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 04:01:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6ceb72deac369c74c285f33bb768188869defc0a6d952e634b54a9f34bb184`  
		Last Modified: Tue, 17 Jul 2018 04:10:02 GMT  
		Size: 6.4 MB (6419032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e7cc6e96e5776bd9ef9f2b36a4359f1ee9dac059a4128e04b15960a312f73e`  
		Last Modified: Tue, 17 Jul 2018 04:10:00 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a164f6fbe4344c52ec936596c191b21b0f6050681e6b1e25be4130c2478e70a1`  
		Last Modified: Tue, 17 Jul 2018 04:10:40 GMT  
		Size: 107.2 MB (107188853 bytes)  
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
$ docker pull mono@sha256:fc29e4184759b87a2ccd0803d0d7ecac3fcc9f3124b8fca82958620ed53ef437
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153054010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7913bc284e376e83d2a8b3ca2b12fa2673830304cc32be1cdf2a1a59feb3d24e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:49:16 GMT
ADD file:d40801b865e65cc6b87379ebf0411c4eab5e5b94c02de103dd8e75ef16aedb97 in / 
# Wed, 27 Jun 2018 10:49:21 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:45:26 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 27 Jun 2018 12:45:26 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 27 Jun 2018 12:45:48 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:45:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:48:08 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4bf8262684df8a752a20a3e6b45f60585658f70a4dc9110885e7456952812957`  
		Last Modified: Wed, 27 Jun 2018 11:14:00 GMT  
		Size: 40.5 MB (40532864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98e1ff0964ba64b520e4071798250cf1719e91671a7cb4d8f374efa161521e0`  
		Last Modified: Wed, 27 Jun 2018 12:58:04 GMT  
		Size: 6.4 MB (6428584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5f6416cd6f9eac1c10ef86dac95858457ae5001be44c98cd201cb348898e46`  
		Last Modified: Wed, 27 Jun 2018 12:57:51 GMT  
		Size: 29.9 KB (29911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f4dc12704d5b0797bb09b1c15fd541019f9b6df8db94389a60283482ece0b3`  
		Last Modified: Wed, 27 Jun 2018 12:58:43 GMT  
		Size: 106.1 MB (106062651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:385d98263e4e476fe83f7b06bda2b2be18f8339464bacdf1e503fb619efaee91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:e2322225eb91d5fdae26d01f9b5b58ec7dd1e37ee7a822c106564879f9140c55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178465528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97a97863975bb34ab5060ec9e30195c066e981b5d4e450308b16ccd55ead4a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:55:37 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 03:55:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:56:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 04:04:00 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bbf1585e765b8c4d0c62f6a4e8cec1b0c7b4f68fd7522fe987bc17f4e18e0`  
		Last Modified: Tue, 17 Jul 2018 04:07:28 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553c336a96610482d3923562a665ed3348cf94429d34a31c2b669989c26a18c`  
		Last Modified: Tue, 17 Jul 2018 04:07:40 GMT  
		Size: 27.6 MB (27639513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026b60ebd5c160aa98d9b051f03b75c9aac073b0bce8a0a2e1bcdf25a3f0da6d`  
		Last Modified: Tue, 17 Jul 2018 04:12:26 GMT  
		Size: 120.7 MB (120703784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:1b03050e23bb1ad70cc3aa76d74f110ae8cdcbcc99de1e5630c19095e1855745
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152499177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b8f4fbee22cbad3091fd2336e363e5d16d1b68438fd0c8c6a8e935a9d464aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:57:59 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:58:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:59:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 13:07:12 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fca8f38e9ec2259ee81c5f066b7dba9f8354b10a0488ffaef034e54f013145`  
		Last Modified: Wed, 27 Jun 2018 13:13:54 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434db766ca9433eac9b1b3795283198330f6215dda46937bffa8ea8c78069d1e`  
		Last Modified: Wed, 27 Jun 2018 13:14:02 GMT  
		Size: 22.5 MB (22460183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57308a983926a2eaa8a8fac568089ade0819f6ba88388ae8e73ff5d5b59d3b7`  
		Last Modified: Wed, 27 Jun 2018 13:15:58 GMT  
		Size: 103.8 MB (103750121 bytes)  
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
$ docker pull mono@sha256:9729b8de5ec5017a2b0dabda0664a6852e24e7c126cf2e2590c800b0d9f176d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180869176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f73adab39f30695b9f886db87d5ee867b07a82d27163dd0fd71ea8653495c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:54 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:41:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 12:51:29 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562875946dd3a966cef5bfdcd2bb521fc6e2f77d328419d6fc60a57b7b01b4ff`  
		Last Modified: Wed, 27 Jun 2018 12:55:45 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e690444b13b8206faf44e30c46a92883de5e8a43a7218e136b6d3a2631943d3`  
		Last Modified: Wed, 27 Jun 2018 12:56:00 GMT  
		Size: 29.6 MB (29552355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19c266f82d0c61ebc25aa48cec2abd396a0ea413555ad3023307409dd489fb4`  
		Last Modified: Wed, 27 Jun 2018 13:00:43 GMT  
		Size: 121.0 MB (121045074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10`

```console
$ docker pull mono@sha256:9b243f0c7b037d5cd06a6897a2ced2ac6123bb731f55f6b2211a34ab629a5c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10` - linux; amd64

```console
$ docker pull mono@sha256:65453d7934c190246e2b0ccd53c670fc63846b142aac545a11cc02f94c916136
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175440213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07110ca4072695842b7842a884b42f5f682ea7a16d447fe2d6a07bd02b693f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:57:33 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 17 Jul 2018 03:57:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:58:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 04:07:01 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e3752569b751ec6b65d1ededf38ace6c1e6323a33ed6a1156bbb65e7cf65aa`  
		Last Modified: Tue, 17 Jul 2018 04:09:00 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdba372c9bb94bbffe24b4dd4a054279f7cbd9cedf92605847cf723ea70f2bae`  
		Last Modified: Tue, 17 Jul 2018 04:09:11 GMT  
		Size: 27.5 MB (27482806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f17cb426b6c1b0f2a2ddac453b3f377efbdb45f98781151b4bf2f3f4cac0e4`  
		Last Modified: Tue, 17 Jul 2018 04:14:41 GMT  
		Size: 117.8 MB (117835179 bytes)  
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
$ docker pull mono@sha256:f7ade1234daa1b0dbc915cc9e478f35ef5d15fa454304e9b2d294a849c125465
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177799164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb3c27188fa1f66c6c159d68c0661521f3ae76d424d2c8178f2ddbc319a86e2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:43:16 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 27 Jun 2018 12:43:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:45:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 12:55:26 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a9420f8e228396c3780d63f3fa59124caeaecf8bc1bf4e9f0e11c214970e40`  
		Last Modified: Wed, 27 Jun 2018 12:56:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2a67bee6e0d4aedf104b69d914ba617a92ff5c4758668db2f162b7fc77e298`  
		Last Modified: Wed, 27 Jun 2018 12:57:16 GMT  
		Size: 29.4 MB (29380738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f4b18e1604a86f6003c62ad56f852b4a747b168333a44a3731a22141700181`  
		Last Modified: Wed, 27 Jun 2018 13:02:53 GMT  
		Size: 118.1 MB (118146682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1`

```console
$ docker pull mono@sha256:9b243f0c7b037d5cd06a6897a2ced2ac6123bb731f55f6b2211a34ab629a5c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.1` - linux; amd64

```console
$ docker pull mono@sha256:65453d7934c190246e2b0ccd53c670fc63846b142aac545a11cc02f94c916136
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175440213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07110ca4072695842b7842a884b42f5f682ea7a16d447fe2d6a07bd02b693f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:57:33 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 17 Jul 2018 03:57:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:58:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 04:07:01 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e3752569b751ec6b65d1ededf38ace6c1e6323a33ed6a1156bbb65e7cf65aa`  
		Last Modified: Tue, 17 Jul 2018 04:09:00 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdba372c9bb94bbffe24b4dd4a054279f7cbd9cedf92605847cf723ea70f2bae`  
		Last Modified: Tue, 17 Jul 2018 04:09:11 GMT  
		Size: 27.5 MB (27482806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f17cb426b6c1b0f2a2ddac453b3f377efbdb45f98781151b4bf2f3f4cac0e4`  
		Last Modified: Tue, 17 Jul 2018 04:14:41 GMT  
		Size: 117.8 MB (117835179 bytes)  
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
$ docker pull mono@sha256:f7ade1234daa1b0dbc915cc9e478f35ef5d15fa454304e9b2d294a849c125465
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177799164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb3c27188fa1f66c6c159d68c0661521f3ae76d424d2c8178f2ddbc319a86e2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:43:16 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 27 Jun 2018 12:43:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:45:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 12:55:26 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a9420f8e228396c3780d63f3fa59124caeaecf8bc1bf4e9f0e11c214970e40`  
		Last Modified: Wed, 27 Jun 2018 12:56:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2a67bee6e0d4aedf104b69d914ba617a92ff5c4758668db2f162b7fc77e298`  
		Last Modified: Wed, 27 Jun 2018 12:57:16 GMT  
		Size: 29.4 MB (29380738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f4b18e1604a86f6003c62ad56f852b4a747b168333a44a3731a22141700181`  
		Last Modified: Wed, 27 Jun 2018 13:02:53 GMT  
		Size: 118.1 MB (118146682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1.47`

```console
$ docker pull mono@sha256:9b243f0c7b037d5cd06a6897a2ced2ac6123bb731f55f6b2211a34ab629a5c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.1.47` - linux; amd64

```console
$ docker pull mono@sha256:65453d7934c190246e2b0ccd53c670fc63846b142aac545a11cc02f94c916136
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.4 MB (175440213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07110ca4072695842b7842a884b42f5f682ea7a16d447fe2d6a07bd02b693f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:57:33 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 17 Jul 2018 03:57:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:58:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 04:07:01 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e3752569b751ec6b65d1ededf38ace6c1e6323a33ed6a1156bbb65e7cf65aa`  
		Last Modified: Tue, 17 Jul 2018 04:09:00 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdba372c9bb94bbffe24b4dd4a054279f7cbd9cedf92605847cf723ea70f2bae`  
		Last Modified: Tue, 17 Jul 2018 04:09:11 GMT  
		Size: 27.5 MB (27482806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f17cb426b6c1b0f2a2ddac453b3f377efbdb45f98781151b4bf2f3f4cac0e4`  
		Last Modified: Tue, 17 Jul 2018 04:14:41 GMT  
		Size: 117.8 MB (117835179 bytes)  
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
$ docker pull mono@sha256:f7ade1234daa1b0dbc915cc9e478f35ef5d15fa454304e9b2d294a849c125465
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177799164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb3c27188fa1f66c6c159d68c0661521f3ae76d424d2c8178f2ddbc319a86e2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:43:16 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 27 Jun 2018 12:43:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:45:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 12:55:26 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a9420f8e228396c3780d63f3fa59124caeaecf8bc1bf4e9f0e11c214970e40`  
		Last Modified: Wed, 27 Jun 2018 12:56:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2a67bee6e0d4aedf104b69d914ba617a92ff5c4758668db2f162b7fc77e298`  
		Last Modified: Wed, 27 Jun 2018 12:57:16 GMT  
		Size: 29.4 MB (29380738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f4b18e1604a86f6003c62ad56f852b4a747b168333a44a3731a22141700181`  
		Last Modified: Wed, 27 Jun 2018 13:02:53 GMT  
		Size: 118.1 MB (118146682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1.47-slim`

```console
$ docker pull mono@sha256:2637699955e653e64f96ffd86ae6893c046ea130870ed5d4d9d7ad1565c72afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.1.47-slim` - linux; amd64

```console
$ docker pull mono@sha256:8729ba2a78bf074025e012adc92e02b014bfc5332fd7e9ea7202df3f9f811c0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57605034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517284544f447db7c62a00688e82a097d78d7e6b0b8bad8ac60ebd1d0830876c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:57:33 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 17 Jul 2018 03:57:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:58:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e3752569b751ec6b65d1ededf38ace6c1e6323a33ed6a1156bbb65e7cf65aa`  
		Last Modified: Tue, 17 Jul 2018 04:09:00 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdba372c9bb94bbffe24b4dd4a054279f7cbd9cedf92605847cf723ea70f2bae`  
		Last Modified: Tue, 17 Jul 2018 04:09:11 GMT  
		Size: 27.5 MB (27482806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1.47-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:4f6b1fb3f385966ba2abb97fb8d0080df17e42ce9aef8bc6ede2f34e52b4a74f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48219592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38739d70822ec91d3a2dfc341de8488d84cb0563577f478923ec223851d4162`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:59:36 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 27 Jun 2018 12:59:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 13:00:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09b71cd4e3f68d62251a04145868c8b2eff04658b657be8e42c51f955a5c786`  
		Last Modified: Wed, 27 Jun 2018 13:14:34 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c490f5d9e88095c256a6ad8df8b1f96514e7d05ee4539a5a9a8945e8d7b9a153`  
		Last Modified: Wed, 27 Jun 2018 13:14:42 GMT  
		Size: 21.9 MB (21930721 bytes)  
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
$ docker pull mono@sha256:a4f5dbf1da6252120f78907bfc465a81b80cf49382c16ddda24a97dc55236e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59652482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5173e3ead29a156f57f7339ff057eefbba4a83ebab3a10c16d023bbfba4f5794`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:43:16 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 27 Jun 2018 12:43:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:45:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a9420f8e228396c3780d63f3fa59124caeaecf8bc1bf4e9f0e11c214970e40`  
		Last Modified: Wed, 27 Jun 2018 12:56:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2a67bee6e0d4aedf104b69d914ba617a92ff5c4758668db2f162b7fc77e298`  
		Last Modified: Wed, 27 Jun 2018 12:57:16 GMT  
		Size: 29.4 MB (29380738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10.1-slim`

```console
$ docker pull mono@sha256:2637699955e653e64f96ffd86ae6893c046ea130870ed5d4d9d7ad1565c72afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:8729ba2a78bf074025e012adc92e02b014bfc5332fd7e9ea7202df3f9f811c0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57605034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517284544f447db7c62a00688e82a097d78d7e6b0b8bad8ac60ebd1d0830876c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:57:33 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 17 Jul 2018 03:57:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:58:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e3752569b751ec6b65d1ededf38ace6c1e6323a33ed6a1156bbb65e7cf65aa`  
		Last Modified: Tue, 17 Jul 2018 04:09:00 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdba372c9bb94bbffe24b4dd4a054279f7cbd9cedf92605847cf723ea70f2bae`  
		Last Modified: Tue, 17 Jul 2018 04:09:11 GMT  
		Size: 27.5 MB (27482806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10.1-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:4f6b1fb3f385966ba2abb97fb8d0080df17e42ce9aef8bc6ede2f34e52b4a74f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48219592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38739d70822ec91d3a2dfc341de8488d84cb0563577f478923ec223851d4162`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:59:36 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 27 Jun 2018 12:59:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 13:00:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09b71cd4e3f68d62251a04145868c8b2eff04658b657be8e42c51f955a5c786`  
		Last Modified: Wed, 27 Jun 2018 13:14:34 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c490f5d9e88095c256a6ad8df8b1f96514e7d05ee4539a5a9a8945e8d7b9a153`  
		Last Modified: Wed, 27 Jun 2018 13:14:42 GMT  
		Size: 21.9 MB (21930721 bytes)  
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
$ docker pull mono@sha256:a4f5dbf1da6252120f78907bfc465a81b80cf49382c16ddda24a97dc55236e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59652482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5173e3ead29a156f57f7339ff057eefbba4a83ebab3a10c16d023bbfba4f5794`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:43:16 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 27 Jun 2018 12:43:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:45:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a9420f8e228396c3780d63f3fa59124caeaecf8bc1bf4e9f0e11c214970e40`  
		Last Modified: Wed, 27 Jun 2018 12:56:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2a67bee6e0d4aedf104b69d914ba617a92ff5c4758668db2f162b7fc77e298`  
		Last Modified: Wed, 27 Jun 2018 12:57:16 GMT  
		Size: 29.4 MB (29380738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.10-slim`

```console
$ docker pull mono@sha256:2637699955e653e64f96ffd86ae6893c046ea130870ed5d4d9d7ad1565c72afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.10-slim` - linux; amd64

```console
$ docker pull mono@sha256:8729ba2a78bf074025e012adc92e02b014bfc5332fd7e9ea7202df3f9f811c0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.6 MB (57605034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517284544f447db7c62a00688e82a097d78d7e6b0b8bad8ac60ebd1d0830876c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:57:33 GMT
ENV MONO_VERSION=5.10.1.47
# Tue, 17 Jul 2018 03:57:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:58:58 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e3752569b751ec6b65d1ededf38ace6c1e6323a33ed6a1156bbb65e7cf65aa`  
		Last Modified: Tue, 17 Jul 2018 04:09:00 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdba372c9bb94bbffe24b4dd4a054279f7cbd9cedf92605847cf723ea70f2bae`  
		Last Modified: Tue, 17 Jul 2018 04:09:11 GMT  
		Size: 27.5 MB (27482806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.10-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:4f6b1fb3f385966ba2abb97fb8d0080df17e42ce9aef8bc6ede2f34e52b4a74f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48219592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38739d70822ec91d3a2dfc341de8488d84cb0563577f478923ec223851d4162`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:59:36 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 27 Jun 2018 12:59:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 13:00:47 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09b71cd4e3f68d62251a04145868c8b2eff04658b657be8e42c51f955a5c786`  
		Last Modified: Wed, 27 Jun 2018 13:14:34 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c490f5d9e88095c256a6ad8df8b1f96514e7d05ee4539a5a9a8945e8d7b9a153`  
		Last Modified: Wed, 27 Jun 2018 13:14:42 GMT  
		Size: 21.9 MB (21930721 bytes)  
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
$ docker pull mono@sha256:a4f5dbf1da6252120f78907bfc465a81b80cf49382c16ddda24a97dc55236e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59652482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5173e3ead29a156f57f7339ff057eefbba4a83ebab3a10c16d023bbfba4f5794`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:43:16 GMT
ENV MONO_VERSION=5.10.1.47
# Wed, 27 Jun 2018 12:43:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:45:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a9420f8e228396c3780d63f3fa59124caeaecf8bc1bf4e9f0e11c214970e40`  
		Last Modified: Wed, 27 Jun 2018 12:56:59 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2a67bee6e0d4aedf104b69d914ba617a92ff5c4758668db2f162b7fc77e298`  
		Last Modified: Wed, 27 Jun 2018 12:57:16 GMT  
		Size: 29.4 MB (29380738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12`

```console
$ docker pull mono@sha256:385d98263e4e476fe83f7b06bda2b2be18f8339464bacdf1e503fb619efaee91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12` - linux; amd64

```console
$ docker pull mono@sha256:e2322225eb91d5fdae26d01f9b5b58ec7dd1e37ee7a822c106564879f9140c55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178465528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97a97863975bb34ab5060ec9e30195c066e981b5d4e450308b16ccd55ead4a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:55:37 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 03:55:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:56:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 04:04:00 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bbf1585e765b8c4d0c62f6a4e8cec1b0c7b4f68fd7522fe987bc17f4e18e0`  
		Last Modified: Tue, 17 Jul 2018 04:07:28 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553c336a96610482d3923562a665ed3348cf94429d34a31c2b669989c26a18c`  
		Last Modified: Tue, 17 Jul 2018 04:07:40 GMT  
		Size: 27.6 MB (27639513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026b60ebd5c160aa98d9b051f03b75c9aac073b0bce8a0a2e1bcdf25a3f0da6d`  
		Last Modified: Tue, 17 Jul 2018 04:12:26 GMT  
		Size: 120.7 MB (120703784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12` - linux; arm variant v7

```console
$ docker pull mono@sha256:1b03050e23bb1ad70cc3aa76d74f110ae8cdcbcc99de1e5630c19095e1855745
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152499177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b8f4fbee22cbad3091fd2336e363e5d16d1b68438fd0c8c6a8e935a9d464aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:57:59 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:58:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:59:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 13:07:12 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fca8f38e9ec2259ee81c5f066b7dba9f8354b10a0488ffaef034e54f013145`  
		Last Modified: Wed, 27 Jun 2018 13:13:54 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434db766ca9433eac9b1b3795283198330f6215dda46937bffa8ea8c78069d1e`  
		Last Modified: Wed, 27 Jun 2018 13:14:02 GMT  
		Size: 22.5 MB (22460183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57308a983926a2eaa8a8fac568089ade0819f6ba88388ae8e73ff5d5b59d3b7`  
		Last Modified: Wed, 27 Jun 2018 13:15:58 GMT  
		Size: 103.8 MB (103750121 bytes)  
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
$ docker pull mono@sha256:9729b8de5ec5017a2b0dabda0664a6852e24e7c126cf2e2590c800b0d9f176d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180869176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f73adab39f30695b9f886db87d5ee867b07a82d27163dd0fd71ea8653495c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:54 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:41:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 12:51:29 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562875946dd3a966cef5bfdcd2bb521fc6e2f77d328419d6fc60a57b7b01b4ff`  
		Last Modified: Wed, 27 Jun 2018 12:55:45 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e690444b13b8206faf44e30c46a92883de5e8a43a7218e136b6d3a2631943d3`  
		Last Modified: Wed, 27 Jun 2018 12:56:00 GMT  
		Size: 29.6 MB (29552355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19c266f82d0c61ebc25aa48cec2abd396a0ea413555ad3023307409dd489fb4`  
		Last Modified: Wed, 27 Jun 2018 13:00:43 GMT  
		Size: 121.0 MB (121045074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0`

```console
$ docker pull mono@sha256:385d98263e4e476fe83f7b06bda2b2be18f8339464bacdf1e503fb619efaee91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0` - linux; amd64

```console
$ docker pull mono@sha256:e2322225eb91d5fdae26d01f9b5b58ec7dd1e37ee7a822c106564879f9140c55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178465528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97a97863975bb34ab5060ec9e30195c066e981b5d4e450308b16ccd55ead4a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:55:37 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 03:55:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:56:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 04:04:00 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bbf1585e765b8c4d0c62f6a4e8cec1b0c7b4f68fd7522fe987bc17f4e18e0`  
		Last Modified: Tue, 17 Jul 2018 04:07:28 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553c336a96610482d3923562a665ed3348cf94429d34a31c2b669989c26a18c`  
		Last Modified: Tue, 17 Jul 2018 04:07:40 GMT  
		Size: 27.6 MB (27639513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026b60ebd5c160aa98d9b051f03b75c9aac073b0bce8a0a2e1bcdf25a3f0da6d`  
		Last Modified: Tue, 17 Jul 2018 04:12:26 GMT  
		Size: 120.7 MB (120703784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:1b03050e23bb1ad70cc3aa76d74f110ae8cdcbcc99de1e5630c19095e1855745
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152499177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b8f4fbee22cbad3091fd2336e363e5d16d1b68438fd0c8c6a8e935a9d464aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:57:59 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:58:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:59:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 13:07:12 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fca8f38e9ec2259ee81c5f066b7dba9f8354b10a0488ffaef034e54f013145`  
		Last Modified: Wed, 27 Jun 2018 13:13:54 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434db766ca9433eac9b1b3795283198330f6215dda46937bffa8ea8c78069d1e`  
		Last Modified: Wed, 27 Jun 2018 13:14:02 GMT  
		Size: 22.5 MB (22460183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57308a983926a2eaa8a8fac568089ade0819f6ba88388ae8e73ff5d5b59d3b7`  
		Last Modified: Wed, 27 Jun 2018 13:15:58 GMT  
		Size: 103.8 MB (103750121 bytes)  
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
$ docker pull mono@sha256:9729b8de5ec5017a2b0dabda0664a6852e24e7c126cf2e2590c800b0d9f176d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180869176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f73adab39f30695b9f886db87d5ee867b07a82d27163dd0fd71ea8653495c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:54 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:41:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 12:51:29 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562875946dd3a966cef5bfdcd2bb521fc6e2f77d328419d6fc60a57b7b01b4ff`  
		Last Modified: Wed, 27 Jun 2018 12:55:45 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e690444b13b8206faf44e30c46a92883de5e8a43a7218e136b6d3a2631943d3`  
		Last Modified: Wed, 27 Jun 2018 12:56:00 GMT  
		Size: 29.6 MB (29552355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19c266f82d0c61ebc25aa48cec2abd396a0ea413555ad3023307409dd489fb4`  
		Last Modified: Wed, 27 Jun 2018 13:00:43 GMT  
		Size: 121.0 MB (121045074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0.226`

```console
$ docker pull mono@sha256:385d98263e4e476fe83f7b06bda2b2be18f8339464bacdf1e503fb619efaee91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0.226` - linux; amd64

```console
$ docker pull mono@sha256:e2322225eb91d5fdae26d01f9b5b58ec7dd1e37ee7a822c106564879f9140c55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178465528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97a97863975bb34ab5060ec9e30195c066e981b5d4e450308b16ccd55ead4a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:55:37 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 03:55:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:56:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 04:04:00 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bbf1585e765b8c4d0c62f6a4e8cec1b0c7b4f68fd7522fe987bc17f4e18e0`  
		Last Modified: Tue, 17 Jul 2018 04:07:28 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553c336a96610482d3923562a665ed3348cf94429d34a31c2b669989c26a18c`  
		Last Modified: Tue, 17 Jul 2018 04:07:40 GMT  
		Size: 27.6 MB (27639513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026b60ebd5c160aa98d9b051f03b75c9aac073b0bce8a0a2e1bcdf25a3f0da6d`  
		Last Modified: Tue, 17 Jul 2018 04:12:26 GMT  
		Size: 120.7 MB (120703784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226` - linux; arm variant v7

```console
$ docker pull mono@sha256:1b03050e23bb1ad70cc3aa76d74f110ae8cdcbcc99de1e5630c19095e1855745
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152499177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b8f4fbee22cbad3091fd2336e363e5d16d1b68438fd0c8c6a8e935a9d464aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:57:59 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:58:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:59:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 13:07:12 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fca8f38e9ec2259ee81c5f066b7dba9f8354b10a0488ffaef034e54f013145`  
		Last Modified: Wed, 27 Jun 2018 13:13:54 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434db766ca9433eac9b1b3795283198330f6215dda46937bffa8ea8c78069d1e`  
		Last Modified: Wed, 27 Jun 2018 13:14:02 GMT  
		Size: 22.5 MB (22460183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57308a983926a2eaa8a8fac568089ade0819f6ba88388ae8e73ff5d5b59d3b7`  
		Last Modified: Wed, 27 Jun 2018 13:15:58 GMT  
		Size: 103.8 MB (103750121 bytes)  
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
$ docker pull mono@sha256:9729b8de5ec5017a2b0dabda0664a6852e24e7c126cf2e2590c800b0d9f176d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180869176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f73adab39f30695b9f886db87d5ee867b07a82d27163dd0fd71ea8653495c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:54 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:41:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 12:51:29 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562875946dd3a966cef5bfdcd2bb521fc6e2f77d328419d6fc60a57b7b01b4ff`  
		Last Modified: Wed, 27 Jun 2018 12:55:45 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e690444b13b8206faf44e30c46a92883de5e8a43a7218e136b6d3a2631943d3`  
		Last Modified: Wed, 27 Jun 2018 12:56:00 GMT  
		Size: 29.6 MB (29552355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19c266f82d0c61ebc25aa48cec2abd396a0ea413555ad3023307409dd489fb4`  
		Last Modified: Wed, 27 Jun 2018 13:00:43 GMT  
		Size: 121.0 MB (121045074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0.226-slim`

```console
$ docker pull mono@sha256:2616be300d3134f1773995daa8a6756d3f28cea9ae7375afedeedeb3201b51a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0.226-slim` - linux; amd64

```console
$ docker pull mono@sha256:1f8ef496a80912c43ae707a40e9c91076a77c0e8cff7b1316ff528d45d37094b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57761744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f86f6485e80a9e1ea6242f6e883917f4ad0f97d3c40ca4f71616b3c6546cd3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:55:37 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 03:55:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:56:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bbf1585e765b8c4d0c62f6a4e8cec1b0c7b4f68fd7522fe987bc17f4e18e0`  
		Last Modified: Tue, 17 Jul 2018 04:07:28 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553c336a96610482d3923562a665ed3348cf94429d34a31c2b669989c26a18c`  
		Last Modified: Tue, 17 Jul 2018 04:07:40 GMT  
		Size: 27.6 MB (27639513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0.226-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:e10b947add330debea38aaed30565e1c5319f3167de17627723700d7de7cdf74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48749056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7993f60f4b93ca36c6287565afee2c14e887380e9645d13756d5ceeb1963ccdf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:57:59 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:58:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:59:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fca8f38e9ec2259ee81c5f066b7dba9f8354b10a0488ffaef034e54f013145`  
		Last Modified: Wed, 27 Jun 2018 13:13:54 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434db766ca9433eac9b1b3795283198330f6215dda46937bffa8ea8c78069d1e`  
		Last Modified: Wed, 27 Jun 2018 13:14:02 GMT  
		Size: 22.5 MB (22460183 bytes)  
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
$ docker pull mono@sha256:3323b882bb7621b47009f3a0736fad8ef173f7007294fe91c7f31666aabb3761
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59824102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f10d32c479604040f45615a08a0692e5816c6b899abc011b97771fc00d6371b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:54 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:41:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562875946dd3a966cef5bfdcd2bb521fc6e2f77d328419d6fc60a57b7b01b4ff`  
		Last Modified: Wed, 27 Jun 2018 12:55:45 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e690444b13b8206faf44e30c46a92883de5e8a43a7218e136b6d3a2631943d3`  
		Last Modified: Wed, 27 Jun 2018 12:56:00 GMT  
		Size: 29.6 MB (29552355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12.0-slim`

```console
$ docker pull mono@sha256:2616be300d3134f1773995daa8a6756d3f28cea9ae7375afedeedeb3201b51a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:1f8ef496a80912c43ae707a40e9c91076a77c0e8cff7b1316ff528d45d37094b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57761744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f86f6485e80a9e1ea6242f6e883917f4ad0f97d3c40ca4f71616b3c6546cd3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:55:37 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 03:55:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:56:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bbf1585e765b8c4d0c62f6a4e8cec1b0c7b4f68fd7522fe987bc17f4e18e0`  
		Last Modified: Tue, 17 Jul 2018 04:07:28 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553c336a96610482d3923562a665ed3348cf94429d34a31c2b669989c26a18c`  
		Last Modified: Tue, 17 Jul 2018 04:07:40 GMT  
		Size: 27.6 MB (27639513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:e10b947add330debea38aaed30565e1c5319f3167de17627723700d7de7cdf74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48749056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7993f60f4b93ca36c6287565afee2c14e887380e9645d13756d5ceeb1963ccdf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:57:59 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:58:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:59:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fca8f38e9ec2259ee81c5f066b7dba9f8354b10a0488ffaef034e54f013145`  
		Last Modified: Wed, 27 Jun 2018 13:13:54 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434db766ca9433eac9b1b3795283198330f6215dda46937bffa8ea8c78069d1e`  
		Last Modified: Wed, 27 Jun 2018 13:14:02 GMT  
		Size: 22.5 MB (22460183 bytes)  
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
$ docker pull mono@sha256:3323b882bb7621b47009f3a0736fad8ef173f7007294fe91c7f31666aabb3761
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59824102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f10d32c479604040f45615a08a0692e5816c6b899abc011b97771fc00d6371b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:54 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:41:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562875946dd3a966cef5bfdcd2bb521fc6e2f77d328419d6fc60a57b7b01b4ff`  
		Last Modified: Wed, 27 Jun 2018 12:55:45 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e690444b13b8206faf44e30c46a92883de5e8a43a7218e136b6d3a2631943d3`  
		Last Modified: Wed, 27 Jun 2018 12:56:00 GMT  
		Size: 29.6 MB (29552355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.12-slim`

```console
$ docker pull mono@sha256:2616be300d3134f1773995daa8a6756d3f28cea9ae7375afedeedeb3201b51a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.12-slim` - linux; amd64

```console
$ docker pull mono@sha256:1f8ef496a80912c43ae707a40e9c91076a77c0e8cff7b1316ff528d45d37094b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57761744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f86f6485e80a9e1ea6242f6e883917f4ad0f97d3c40ca4f71616b3c6546cd3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:55:37 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 03:55:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:56:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bbf1585e765b8c4d0c62f6a4e8cec1b0c7b4f68fd7522fe987bc17f4e18e0`  
		Last Modified: Tue, 17 Jul 2018 04:07:28 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553c336a96610482d3923562a665ed3348cf94429d34a31c2b669989c26a18c`  
		Last Modified: Tue, 17 Jul 2018 04:07:40 GMT  
		Size: 27.6 MB (27639513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.12-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:e10b947add330debea38aaed30565e1c5319f3167de17627723700d7de7cdf74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48749056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7993f60f4b93ca36c6287565afee2c14e887380e9645d13756d5ceeb1963ccdf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:57:59 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:58:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:59:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fca8f38e9ec2259ee81c5f066b7dba9f8354b10a0488ffaef034e54f013145`  
		Last Modified: Wed, 27 Jun 2018 13:13:54 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434db766ca9433eac9b1b3795283198330f6215dda46937bffa8ea8c78069d1e`  
		Last Modified: Wed, 27 Jun 2018 13:14:02 GMT  
		Size: 22.5 MB (22460183 bytes)  
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
$ docker pull mono@sha256:3323b882bb7621b47009f3a0736fad8ef173f7007294fe91c7f31666aabb3761
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59824102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f10d32c479604040f45615a08a0692e5816c6b899abc011b97771fc00d6371b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:54 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:41:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562875946dd3a966cef5bfdcd2bb521fc6e2f77d328419d6fc60a57b7b01b4ff`  
		Last Modified: Wed, 27 Jun 2018 12:55:45 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e690444b13b8206faf44e30c46a92883de5e8a43a7218e136b6d3a2631943d3`  
		Last Modified: Wed, 27 Jun 2018 12:56:00 GMT  
		Size: 29.6 MB (29552355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:2616be300d3134f1773995daa8a6756d3f28cea9ae7375afedeedeb3201b51a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:1f8ef496a80912c43ae707a40e9c91076a77c0e8cff7b1316ff528d45d37094b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57761744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f86f6485e80a9e1ea6242f6e883917f4ad0f97d3c40ca4f71616b3c6546cd3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:55:37 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 03:55:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:56:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bbf1585e765b8c4d0c62f6a4e8cec1b0c7b4f68fd7522fe987bc17f4e18e0`  
		Last Modified: Tue, 17 Jul 2018 04:07:28 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553c336a96610482d3923562a665ed3348cf94429d34a31c2b669989c26a18c`  
		Last Modified: Tue, 17 Jul 2018 04:07:40 GMT  
		Size: 27.6 MB (27639513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:e10b947add330debea38aaed30565e1c5319f3167de17627723700d7de7cdf74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48749056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7993f60f4b93ca36c6287565afee2c14e887380e9645d13756d5ceeb1963ccdf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:57:59 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:58:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:59:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fca8f38e9ec2259ee81c5f066b7dba9f8354b10a0488ffaef034e54f013145`  
		Last Modified: Wed, 27 Jun 2018 13:13:54 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434db766ca9433eac9b1b3795283198330f6215dda46937bffa8ea8c78069d1e`  
		Last Modified: Wed, 27 Jun 2018 13:14:02 GMT  
		Size: 22.5 MB (22460183 bytes)  
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
$ docker pull mono@sha256:3323b882bb7621b47009f3a0736fad8ef173f7007294fe91c7f31666aabb3761
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59824102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f10d32c479604040f45615a08a0692e5816c6b899abc011b97771fc00d6371b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:54 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:41:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562875946dd3a966cef5bfdcd2bb521fc6e2f77d328419d6fc60a57b7b01b4ff`  
		Last Modified: Wed, 27 Jun 2018 12:55:45 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e690444b13b8206faf44e30c46a92883de5e8a43a7218e136b6d3a2631943d3`  
		Last Modified: Wed, 27 Jun 2018 12:56:00 GMT  
		Size: 29.6 MB (29552355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:385d98263e4e476fe83f7b06bda2b2be18f8339464bacdf1e503fb619efaee91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:e2322225eb91d5fdae26d01f9b5b58ec7dd1e37ee7a822c106564879f9140c55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178465528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97a97863975bb34ab5060ec9e30195c066e981b5d4e450308b16ccd55ead4a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:55:37 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 03:55:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:56:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 17 Jul 2018 04:04:00 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bbf1585e765b8c4d0c62f6a4e8cec1b0c7b4f68fd7522fe987bc17f4e18e0`  
		Last Modified: Tue, 17 Jul 2018 04:07:28 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553c336a96610482d3923562a665ed3348cf94429d34a31c2b669989c26a18c`  
		Last Modified: Tue, 17 Jul 2018 04:07:40 GMT  
		Size: 27.6 MB (27639513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026b60ebd5c160aa98d9b051f03b75c9aac073b0bce8a0a2e1bcdf25a3f0da6d`  
		Last Modified: Tue, 17 Jul 2018 04:12:26 GMT  
		Size: 120.7 MB (120703784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:1b03050e23bb1ad70cc3aa76d74f110ae8cdcbcc99de1e5630c19095e1855745
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152499177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b8f4fbee22cbad3091fd2336e363e5d16d1b68438fd0c8c6a8e935a9d464aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:57:59 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:58:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:59:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 13:07:12 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fca8f38e9ec2259ee81c5f066b7dba9f8354b10a0488ffaef034e54f013145`  
		Last Modified: Wed, 27 Jun 2018 13:13:54 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434db766ca9433eac9b1b3795283198330f6215dda46937bffa8ea8c78069d1e`  
		Last Modified: Wed, 27 Jun 2018 13:14:02 GMT  
		Size: 22.5 MB (22460183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57308a983926a2eaa8a8fac568089ade0819f6ba88388ae8e73ff5d5b59d3b7`  
		Last Modified: Wed, 27 Jun 2018 13:15:58 GMT  
		Size: 103.8 MB (103750121 bytes)  
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
$ docker pull mono@sha256:9729b8de5ec5017a2b0dabda0664a6852e24e7c126cf2e2590c800b0d9f176d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180869176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9f73adab39f30695b9f886db87d5ee867b07a82d27163dd0fd71ea8653495c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:54 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:41:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Jun 2018 12:51:29 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562875946dd3a966cef5bfdcd2bb521fc6e2f77d328419d6fc60a57b7b01b4ff`  
		Last Modified: Wed, 27 Jun 2018 12:55:45 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e690444b13b8206faf44e30c46a92883de5e8a43a7218e136b6d3a2631943d3`  
		Last Modified: Wed, 27 Jun 2018 12:56:00 GMT  
		Size: 29.6 MB (29552355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19c266f82d0c61ebc25aa48cec2abd396a0ea413555ad3023307409dd489fb4`  
		Last Modified: Wed, 27 Jun 2018 13:00:43 GMT  
		Size: 121.0 MB (121045074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:2616be300d3134f1773995daa8a6756d3f28cea9ae7375afedeedeb3201b51a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:1f8ef496a80912c43ae707a40e9c91076a77c0e8cff7b1316ff528d45d37094b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57761744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f86f6485e80a9e1ea6242f6e883917f4ad0f97d3c40ca4f71616b3c6546cd3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:55:37 GMT
ENV MONO_VERSION=5.12.0.226
# Tue, 17 Jul 2018 03:55:47 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 17 Jul 2018 03:56:59 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1bbf1585e765b8c4d0c62f6a4e8cec1b0c7b4f68fd7522fe987bc17f4e18e0`  
		Last Modified: Tue, 17 Jul 2018 04:07:28 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553c336a96610482d3923562a665ed3348cf94429d34a31c2b669989c26a18c`  
		Last Modified: Tue, 17 Jul 2018 04:07:40 GMT  
		Size: 27.6 MB (27639513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:e10b947add330debea38aaed30565e1c5319f3167de17627723700d7de7cdf74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48749056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7993f60f4b93ca36c6287565afee2c14e887380e9645d13756d5ceeb1963ccdf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:57:59 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:58:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:59:13 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fca8f38e9ec2259ee81c5f066b7dba9f8354b10a0488ffaef034e54f013145`  
		Last Modified: Wed, 27 Jun 2018 13:13:54 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434db766ca9433eac9b1b3795283198330f6215dda46937bffa8ea8c78069d1e`  
		Last Modified: Wed, 27 Jun 2018 13:14:02 GMT  
		Size: 22.5 MB (22460183 bytes)  
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
$ docker pull mono@sha256:3323b882bb7621b47009f3a0736fad8ef173f7007294fe91c7f31666aabb3761
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.8 MB (59824102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f10d32c479604040f45615a08a0692e5816c6b899abc011b97771fc00d6371b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:54 GMT
ENV MONO_VERSION=5.12.0.226
# Wed, 27 Jun 2018 12:41:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Jun 2018 12:42:52 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562875946dd3a966cef5bfdcd2bb521fc6e2f77d328419d6fc60a57b7b01b4ff`  
		Last Modified: Wed, 27 Jun 2018 12:55:45 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e690444b13b8206faf44e30c46a92883de5e8a43a7218e136b6d3a2631943d3`  
		Last Modified: Wed, 27 Jun 2018 12:56:00 GMT  
		Size: 29.6 MB (29552355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

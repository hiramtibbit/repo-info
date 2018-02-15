## `mono:latest`

```console
$ docker pull mono@sha256:625d4c7189f5f5357760ab467f0c1ed51023c9ae9a04291a79ad52008160cfc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:d4454a8b7a055c8f44d2e2934823323938d99a1c08d7f05881cee1fcae6921d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171173315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18dea4a6ab854f08fe030d8a72c11d9f745570a010abf1c4ce5124dea1c279d6`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:10:42 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 06:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 06:11:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 15 Feb 2018 06:28:22 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa415898c88d72d862ac4fa07151c8df3f91d6274741846a47da670b18cad0`  
		Last Modified: Thu, 15 Feb 2018 07:08:17 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3e1276e8b8c43e09ab636e28392a56bb03641919c252b98a9b4e40b9f5f5fd`  
		Last Modified: Thu, 15 Feb 2018 07:08:27 GMT  
		Size: 27.4 MB (27361631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d69243595644ce277d0808909ee91fa218c66bee3d49ea2affe3c8b70c533b`  
		Last Modified: Thu, 15 Feb 2018 07:22:32 GMT  
		Size: 113.7 MB (113687237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b510028e539a1b97b76bb6a4b39f92012d9591eb7df12f06a2ffabe9af45bdbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160245090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592d1bb3f480eb69031a347324bdaeffd2f37611bd3bfac1a2ed9e586ca13774`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:26:03 GMT
ADD file:da6be268a98d89a43438155746ca6d08f474e9aa85c64699f50445352b46c348 in / 
# Tue, 12 Dec 2017 18:26:04 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 20:45:37 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 20:45:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 20:47:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 20:52:36 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:8e9df51286bbe86a4cb3ffe54327681ab34b9b6d62c3f4e187ffc677125e4780`  
		Last Modified: Tue, 12 Dec 2017 18:41:37 GMT  
		Size: 27.5 MB (27480582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69803b2669c97639d9ceea748308bb4668a8bdab4d71ead4c50e224a0bf1ff4`  
		Last Modified: Sat, 03 Feb 2018 20:53:08 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe2659d8fed409cead4bf42758cf5ae8c9ed5365d28949adb0d28db83fe764`  
		Last Modified: Sat, 03 Feb 2018 20:53:19 GMT  
		Size: 26.2 MB (26198101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6c6004f64c60ef7c1c309c891ac02bd8b927cd386ca76a4d82d16fceea1168`  
		Last Modified: Sat, 03 Feb 2018 20:54:56 GMT  
		Size: 106.6 MB (106564340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:35d400599540382dc6f774aa1ff1e6f170eea00de5f990094f2e52fc37e3e674
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168260413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2176960fa66c73bafc98d18d8c0521c7e222546085e745d47f0e13256c90c68d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 14:21:05 GMT
ADD file:d31765999b40e32b628f3ec72b762f007f4918b08c507484e425adc990c87c26 in / 
# Tue, 12 Dec 2017 14:21:05 GMT
CMD ["bash"]
# Sat, 03 Feb 2018 02:09:20 GMT
ENV MONO_VERSION=5.8.0.108
# Sat, 03 Feb 2018 02:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 03 Feb 2018 02:10:15 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 03 Feb 2018 02:19:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:6b323e7c684c46ec9e577d3acb692c7e1c0c26ffbea6a4530dbe784a7eedf0f7`  
		Last Modified: Tue, 12 Dec 2017 14:49:35 GMT  
		Size: 30.3 MB (30266257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34523f9c285730fc8f44566b6a192e11a7b79324c1a4895c253274a39de564c`  
		Last Modified: Sat, 03 Feb 2018 02:29:27 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178d0c35e62f5c389c425e10aa55d9903e68f63465bf559ca84d52913c7d648`  
		Last Modified: Sat, 03 Feb 2018 02:29:40 GMT  
		Size: 29.1 MB (29054263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5142169cf7291b38fc239a98a12aab5ebaf9d222ebc05835dcc68432ddc5b65`  
		Last Modified: Sat, 03 Feb 2018 02:33:10 GMT  
		Size: 108.9 MB (108937825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

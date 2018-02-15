## `mono:5-slim`

```console
$ docker pull mono@sha256:9f6f0cd5ccef84589523a0b9eeb3a24da636f1077a40327bfe4e839dab906381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:8a136b1ada1404f130c07ebbfe1e0ffe04bc602ca9da75cfc9356af95b313efd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.5 MB (57486078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750609e2af595e1874bb31f6ca8ba1cf93c791d8ccccdc5c485ddecaa6a0b70c`
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

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c397df2720a2f160e1796e9588b3ddefb2389b57fc3a93f0a08a5b7807273a34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48084143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6581f502848e1b85ed77a6b1fce53b779f53ba38bcc57a460f6393cec67c3774`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:02 GMT
ADD file:93c7ef253ac06f9011215f1bb9c9f62f9ce89ba664e894251a9e324fc6e8d3aa in / 
# Thu, 15 Feb 2018 13:27:02 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 14:29:21 GMT
ENV MONO_VERSION=5.8.0.108
# Thu, 15 Feb 2018 14:29:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 15 Feb 2018 14:30:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0172d99052b787811768cdf05d717087e0c1e28761dbc7c7b19d943e6decaec5`  
		Last Modified: Thu, 15 Feb 2018 13:36:28 GMT  
		Size: 26.3 MB (26290245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174dc83a5977d06eb34a9c8beb8af53efb0dc8ededb68a89249b46ee2d35bd40`  
		Last Modified: Thu, 15 Feb 2018 14:47:22 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4b90191ab730658fd69b6ce3f08563be814b72c8f2a034b61029313d7bfaa9`  
		Last Modified: Thu, 15 Feb 2018 14:47:30 GMT  
		Size: 21.8 MB (21791832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:3a149fec6da988e3bfecf6e9ad2f5401d6ae256dd04e1cd8fa92bb73f1101815
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53680750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb8bddd9ab41da0bf2b7167a2b1d4eb9e61623fb40c76dd334b03ff5daf06e0`
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

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:6f4815c9949603e2227e52bbbc5d80f5eaac8b08349103ecbd7c8e8deeac85e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59322588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f8b4662473aeaa0fca032091617fdfebb14feb60a00e8f8a8fd1e94beac4e`
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

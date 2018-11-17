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

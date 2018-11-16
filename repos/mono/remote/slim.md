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

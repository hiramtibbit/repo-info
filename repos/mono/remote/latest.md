## `mono:latest`

```console
$ docker pull mono@sha256:a5354218c01de8038afd1c67e5d91479a8e7d009182ecbea9ca39db3c5f723e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:f8a8ec26165babce287753b7807b2fb0a153c638eebc98597e93a35694ec5cdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196313225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faf2b4f61580ca271acc03e575c20b3e88fcd798001585e811e14133651138a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Mon, 08 Oct 2018 23:19:47 GMT
ENV MONO_VERSION=5.16.0.179
# Mon, 08 Oct 2018 23:19:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 08 Oct 2018 23:20:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 08 Oct 2018 23:26:40 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0f4af43ff70e4518f30f241e5ff13a13c829be035317ffd0237e8eeb6c8a19`  
		Last Modified: Mon, 08 Oct 2018 23:26:56 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1271b8c88308664054b6046dab2d0446a7417a436ac806b4f06e88e36df84ba1`  
		Last Modified: Mon, 08 Oct 2018 23:27:09 GMT  
		Size: 45.5 MB (45510726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6b5b8ca42459f7e68087971f4e30994b99172a11786aa02722444f867653e7`  
		Last Modified: Mon, 08 Oct 2018 23:28:14 GMT  
		Size: 120.7 MB (120679867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

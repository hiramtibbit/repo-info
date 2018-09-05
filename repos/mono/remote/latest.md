## `mono:latest`

```console
$ docker pull mono@sha256:d26703df051dc6228d141ef035bf704860ae3902e82c198050f5b60cf2351f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:aaff7d2ca3dd5f22aeb65965afd7cfddae287175cdc5c7a32d8a9264e411cacb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199299884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bc07ec171b72c454fc4dc1c31598b1a82a9d0baefe465fb5d7dbd31253f382`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:21:36 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 05 Sep 2018 00:21:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 05 Sep 2018 00:22:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 05 Sep 2018 00:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e12527f40e4676499d845db2bade295dd462c100fc85118d2de83a221a8bb3c`  
		Last Modified: Wed, 05 Sep 2018 00:34:38 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbaa7554294ee63ac26a87e39a7076e14dd115718e4d986e9bf8832f062cb8c`  
		Last Modified: Wed, 05 Sep 2018 00:34:52 GMT  
		Size: 50.6 MB (50622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d0fbddc66c2952c064079c751ddbfc060e2c5f00b583ba303b4ff66737839b`  
		Last Modified: Wed, 05 Sep 2018 00:36:21 GMT  
		Size: 118.6 MB (118555176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:47626db302906c09f4ce29a861fd2f328ddc0dfea6ab9c844bf6160ee42fe195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (176959925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b9c34a003208a74b9755aab30644d3428e1575223d76fd0dcd103368fa61a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 12:07:45 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 12:07:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 12:09:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 12:17:54 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a39be0e6b450726cface1c1a4a9577b25028c9243be904622e391e4a408ddb7`  
		Last Modified: Thu, 09 Aug 2018 12:18:26 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac13d36cbff9fd5e8039911ce3b8e6ecd1aedf73057c9fc968f21c22c17a8307`  
		Last Modified: Thu, 09 Aug 2018 12:18:39 GMT  
		Size: 41.8 MB (41842167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ba26f9fa402e0eec83d1312aa0c1a9fec603356067e533662ad5ecd9351c27`  
		Last Modified: Thu, 09 Aug 2018 12:19:42 GMT  
		Size: 108.8 MB (108828729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:31e88cab5f20d6c7e61395bb20f777ffd06398cd3642868718a46b6fb7502eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208577474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432a70a10348af2c76c4408eb8e839f1ddf80ad38fd17b2425ee9bd46cc04efa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 10:46:21 GMT
ENV MONO_VERSION=5.14.0.177
# Thu, 09 Aug 2018 10:46:36 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 09 Aug 2018 10:48:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 09 Aug 2018 10:52:09 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a3207333acacf0da26d35650baa43c3853c917d9536e9f060aef996cbfc83`  
		Last Modified: Thu, 09 Aug 2018 10:52:49 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5855409112fb2ca6239e6c24be0ca0d8cf55e0455dc9f81617278a6dd4b92`  
		Last Modified: Thu, 09 Aug 2018 10:53:15 GMT  
		Size: 54.5 MB (54460911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1336dcd581ca7255a898ccf686303650474213feddbfea2251d1e041594a7e9b`  
		Last Modified: Thu, 09 Aug 2018 10:55:48 GMT  
		Size: 123.8 MB (123844487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

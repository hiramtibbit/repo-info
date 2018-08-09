## `mono:slim`

```console
$ docker pull mono@sha256:8c8c125a70409666714fa6778f93b8449f08be1a89457449bbe19ce92fe7f11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:ac4bbc34fbb69b9ac8736a3d576d481aa6ada220ffdcdd6f1ca91e20fbff35b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80744380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91d4458d55d74c485e582708f1d954342bc2a9af4c0e9feb7c27b95c5c6c7f4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Wed, 08 Aug 2018 14:23:40 GMT
ENV MONO_VERSION=5.14.0.177
# Wed, 08 Aug 2018 14:23:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 08 Aug 2018 14:25:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc78331fc0c6869d6ceda25b8deddf57db8f0a874b6b1012b80b421d9032cab3`  
		Last Modified: Wed, 08 Aug 2018 14:33:11 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a399f8a21e7a83c455d502354d6c7982e52a1d5b32db0dfdd0e00be5193dcdf0`  
		Last Modified: Wed, 08 Aug 2018 14:33:31 GMT  
		Size: 50.6 MB (50622147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:f5546f7e61b8fdfad4de770788225f2caaf6bdf2c789ea6970def88992e64005
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68131196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d621ee0fb58324c6da92e200a2c61aaeb13ebb1e712321552ff5cddacce4d55`
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

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:80ced1271958d6eaf9ff5a916b611503a6f97bb8cdc342cd2d3611d0790c8d2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84732987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83165fd3636badc40efb8666284925748525a61ad89fcf0dee7e81f71627d92e`
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

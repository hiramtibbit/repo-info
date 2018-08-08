## `mono:slim`

```console
$ docker pull mono@sha256:90f5b134aba0b8857ed633d17d50acad73d3909f856970478261fc7a47698b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

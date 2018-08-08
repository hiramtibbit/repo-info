## `mono:latest`

```console
$ docker pull mono@sha256:8fab1317d386f77c6b9545f17c1f0e6326f6a0d9528156c7a1b36a2b71a0caae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:73d15057bce739ae02f46f70595c8c3953520ac425b0aa446359082a5da11db1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199300337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5a419d3d984def55469a9da38003902880856ca278aea1fbfeafd2f1bfaabe`
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
# Wed, 08 Aug 2018 14:32:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:557cf733d82a08937718ca7f723c64d4fe1f3a23dcce762ff700aa908bb7690f`  
		Last Modified: Wed, 08 Aug 2018 14:35:51 GMT  
		Size: 118.6 MB (118555957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

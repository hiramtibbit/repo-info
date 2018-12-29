## `mono:latest`

```console
$ docker pull mono@sha256:4109408ece47decc62a460290f7900bb5e54b4bc80ddcd0cb33d9662a1c7fb02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:80dad65328b411da939a97f1a65eeaa2cf85110416dfb67db6a585c6a50f8840
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196327797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b163438786ccb9fd0290cc492c984400e80afa2e4b4bb3b230c96a92c4dfa42`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 08:49:50 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 08:50:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 08:52:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 09:04:59 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f7d18b0b86da02e9dcd7c505262f3cccbc27f47cf1216cec69944a0b3bf3ea`  
		Last Modified: Sat, 29 Dec 2018 09:13:03 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3efd86d768a6ad1498b080d48dc4abae11ccb889726c7173d8bb8cdd10fe33`  
		Last Modified: Sat, 29 Dec 2018 09:13:13 GMT  
		Size: 45.5 MB (45509635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543882081064e0a31b1eece3e11bb0d65cf3d50aebbe51ec6e5c86dbd58281df`  
		Last Modified: Sat, 29 Dec 2018 09:14:32 GMT  
		Size: 120.7 MB (120662144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:c3124ec2b4d3fd72cf1257e3b3e9ee96c6a978db47867d9e07f8b25812aba837
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169164909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb48cdd9464a27200110a14784dba2f76401b21fd15c8aced5d0a4a15fbefe3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:50 GMT
ADD file:6c1f2291eccb45d62542420c7fb4ef5afa8d7e9060f07f4b318457e090d2197b in / 
# Sat, 29 Dec 2018 12:59:51 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:47:13 GMT
ENV MONO_VERSION=5.16.0.179
# Sat, 29 Dec 2018 14:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Sat, 29 Dec 2018 14:49:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 29 Dec 2018 15:04:55 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d1df0b8dad813cd907570b40c56cc21e9462178415e2a8dfb3401347e36f08a2`  
		Last Modified: Sat, 29 Dec 2018 13:09:57 GMT  
		Size: 26.3 MB (26310383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facf554927b4749d437116e125088e79fd470c379271afdcdddee83844b13641`  
		Last Modified: Sat, 29 Dec 2018 15:11:09 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caee870642c5b6371e9f8e675a09ef9b330a499903fe36634fe49d36a6c43fdf`  
		Last Modified: Sat, 29 Dec 2018 15:11:21 GMT  
		Size: 37.5 MB (37525335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5888ea9fdfb3df29d3fd1ff2cf2705a3a95fda71e092dd09f5d05a0f84b31cdb`  
		Last Modified: Sat, 29 Dec 2018 15:13:16 GMT  
		Size: 105.3 MB (105327125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:6c0975f9f485377db79acddb866a2158e7f66aa8ad8539932f77f7010fb6ccc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.2 MB (205167733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6621409848c8cba379d96e083658f000c03de8ce72da6ec414f0e2faf25ed331`
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
# Sat, 17 Nov 2018 12:52:24 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
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
	-	`sha256:163eafdcb6b051ba786a058018edc740a740254394d9761d4a4ee46c7c8c7458`  
		Last Modified: Sat, 17 Nov 2018 13:04:25 GMT  
		Size: 125.9 MB (125946453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

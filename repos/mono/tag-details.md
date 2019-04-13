<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:5`](#mono5)
-	[`mono:5.18`](#mono518)
-	[`mono:5.18.1`](#mono5181)
-	[`mono:5.18.1.3`](#mono51813)
-	[`mono:5.18.1.3-slim`](#mono51813-slim)
-	[`mono:5.18.1-slim`](#mono5181-slim)
-	[`mono:5.18-slim`](#mono518-slim)
-	[`mono:5.20`](#mono520)
-	[`mono:5.20.1`](#mono5201)
-	[`mono:5.20.1.19`](#mono520119)
-	[`mono:5.20.1.19-slim`](#mono520119-slim)
-	[`mono:5.20.1-slim`](#mono5201-slim)
-	[`mono:5.20-slim`](#mono520-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:5`

```console
$ docker pull mono@sha256:f2427253ba19922ab3e69391dd969a644c31b57735e66b22657b9273f2102413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:d92e424eedfc258d6b3b35df43da930ebcc5f37c7c155887bc458189f0259325
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218649824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba8bd8172742003bc61509e93b824fdc3b30b0d5fc521449a8c7c971d48451f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:34:39 GMT
ENV MONO_VERSION=5.20.1.19
# Fri, 12 Apr 2019 22:34:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:35:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 12 Apr 2019 22:43:30 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a588ebeaccd5c9eeb0fa7a4ee26f49422da716f0bf08bc9f5bdd5a06efc4636`  
		Last Modified: Fri, 12 Apr 2019 22:50:38 GMT  
		Size: 244.4 KB (244443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6650e20d9a10db792528b3eb35f4202af5ad5dc6de43755c23780f89b4f65feb`  
		Last Modified: Fri, 12 Apr 2019 22:50:52 GMT  
		Size: 55.5 MB (55512055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ace23b3b038971c8af045107b800e043c5ef9464e1a985fa063fa136e0a8355`  
		Last Modified: Fri, 12 Apr 2019 22:51:52 GMT  
		Size: 140.4 MB (140397278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18`

```console
$ docker pull mono@sha256:8146c891e727678c16f38fd4962c49822eb2fd7b3ab5f53619dd68dc46bc170b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18` - linux; amd64

```console
$ docker pull mono@sha256:ac4e69ff9aa37fa90fa588ef8d3ec05df712e0340b729dd88174c445b67a71c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218216343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a3cf2c4bf65e0bd840f0c94f50b29cf5ad13a33a09e362922719494281b55b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:35:41 GMT
ENV MONO_VERSION=5.18.1.3
# Fri, 12 Apr 2019 22:35:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:36:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 12 Apr 2019 22:50:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e9ad07bd6a521b3200f7de315f6920976d98ed2a8ea4df2f5cbe241d1ba6a6`  
		Last Modified: Fri, 12 Apr 2019 22:50:57 GMT  
		Size: 244.5 KB (244451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3255b6ec49db8ada9bc9f63a014fb328cd736b08837bdfd4932c43d65399ce56`  
		Last Modified: Fri, 12 Apr 2019 22:51:17 GMT  
		Size: 55.3 MB (55339609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f30b53635e2a213848decbb67d792ba25b24f935ffeb2f62798546f041eb153`  
		Last Modified: Fri, 12 Apr 2019 22:52:31 GMT  
		Size: 140.1 MB (140136235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1`

```console
$ docker pull mono@sha256:8146c891e727678c16f38fd4962c49822eb2fd7b3ab5f53619dd68dc46bc170b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18.1` - linux; amd64

```console
$ docker pull mono@sha256:ac4e69ff9aa37fa90fa588ef8d3ec05df712e0340b729dd88174c445b67a71c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218216343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a3cf2c4bf65e0bd840f0c94f50b29cf5ad13a33a09e362922719494281b55b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:35:41 GMT
ENV MONO_VERSION=5.18.1.3
# Fri, 12 Apr 2019 22:35:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:36:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 12 Apr 2019 22:50:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e9ad07bd6a521b3200f7de315f6920976d98ed2a8ea4df2f5cbe241d1ba6a6`  
		Last Modified: Fri, 12 Apr 2019 22:50:57 GMT  
		Size: 244.5 KB (244451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3255b6ec49db8ada9bc9f63a014fb328cd736b08837bdfd4932c43d65399ce56`  
		Last Modified: Fri, 12 Apr 2019 22:51:17 GMT  
		Size: 55.3 MB (55339609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f30b53635e2a213848decbb67d792ba25b24f935ffeb2f62798546f041eb153`  
		Last Modified: Fri, 12 Apr 2019 22:52:31 GMT  
		Size: 140.1 MB (140136235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1.3`

```console
$ docker pull mono@sha256:8146c891e727678c16f38fd4962c49822eb2fd7b3ab5f53619dd68dc46bc170b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18.1.3` - linux; amd64

```console
$ docker pull mono@sha256:ac4e69ff9aa37fa90fa588ef8d3ec05df712e0340b729dd88174c445b67a71c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218216343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a3cf2c4bf65e0bd840f0c94f50b29cf5ad13a33a09e362922719494281b55b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:35:41 GMT
ENV MONO_VERSION=5.18.1.3
# Fri, 12 Apr 2019 22:35:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:36:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 12 Apr 2019 22:50:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e9ad07bd6a521b3200f7de315f6920976d98ed2a8ea4df2f5cbe241d1ba6a6`  
		Last Modified: Fri, 12 Apr 2019 22:50:57 GMT  
		Size: 244.5 KB (244451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3255b6ec49db8ada9bc9f63a014fb328cd736b08837bdfd4932c43d65399ce56`  
		Last Modified: Fri, 12 Apr 2019 22:51:17 GMT  
		Size: 55.3 MB (55339609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f30b53635e2a213848decbb67d792ba25b24f935ffeb2f62798546f041eb153`  
		Last Modified: Fri, 12 Apr 2019 22:52:31 GMT  
		Size: 140.1 MB (140136235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1.3-slim`

```console
$ docker pull mono@sha256:d42248bd898c826ef4bce9c40b70fcc892d411f963fa154456151937734f5d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18.1.3-slim` - linux; amd64

```console
$ docker pull mono@sha256:ad499bb9119aa7589442a4ce2ed77fa63bd28c060caae51de2555207d4dfe0af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78080108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c797bc6f279aefb1df20a769baf97930224619e57ef8412d00b4af2fc30048dd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:35:41 GMT
ENV MONO_VERSION=5.18.1.3
# Fri, 12 Apr 2019 22:35:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:36:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e9ad07bd6a521b3200f7de315f6920976d98ed2a8ea4df2f5cbe241d1ba6a6`  
		Last Modified: Fri, 12 Apr 2019 22:50:57 GMT  
		Size: 244.5 KB (244451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3255b6ec49db8ada9bc9f63a014fb328cd736b08837bdfd4932c43d65399ce56`  
		Last Modified: Fri, 12 Apr 2019 22:51:17 GMT  
		Size: 55.3 MB (55339609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1-slim`

```console
$ docker pull mono@sha256:d42248bd898c826ef4bce9c40b70fcc892d411f963fa154456151937734f5d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:ad499bb9119aa7589442a4ce2ed77fa63bd28c060caae51de2555207d4dfe0af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78080108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c797bc6f279aefb1df20a769baf97930224619e57ef8412d00b4af2fc30048dd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:35:41 GMT
ENV MONO_VERSION=5.18.1.3
# Fri, 12 Apr 2019 22:35:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:36:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e9ad07bd6a521b3200f7de315f6920976d98ed2a8ea4df2f5cbe241d1ba6a6`  
		Last Modified: Fri, 12 Apr 2019 22:50:57 GMT  
		Size: 244.5 KB (244451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3255b6ec49db8ada9bc9f63a014fb328cd736b08837bdfd4932c43d65399ce56`  
		Last Modified: Fri, 12 Apr 2019 22:51:17 GMT  
		Size: 55.3 MB (55339609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18-slim`

```console
$ docker pull mono@sha256:d42248bd898c826ef4bce9c40b70fcc892d411f963fa154456151937734f5d15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.18-slim` - linux; amd64

```console
$ docker pull mono@sha256:ad499bb9119aa7589442a4ce2ed77fa63bd28c060caae51de2555207d4dfe0af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78080108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c797bc6f279aefb1df20a769baf97930224619e57ef8412d00b4af2fc30048dd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:35:41 GMT
ENV MONO_VERSION=5.18.1.3
# Fri, 12 Apr 2019 22:35:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:36:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5e9ad07bd6a521b3200f7de315f6920976d98ed2a8ea4df2f5cbe241d1ba6a6`  
		Last Modified: Fri, 12 Apr 2019 22:50:57 GMT  
		Size: 244.5 KB (244451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3255b6ec49db8ada9bc9f63a014fb328cd736b08837bdfd4932c43d65399ce56`  
		Last Modified: Fri, 12 Apr 2019 22:51:17 GMT  
		Size: 55.3 MB (55339609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20`

```console
$ docker pull mono@sha256:f2427253ba19922ab3e69391dd969a644c31b57735e66b22657b9273f2102413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.20` - linux; amd64

```console
$ docker pull mono@sha256:d92e424eedfc258d6b3b35df43da930ebcc5f37c7c155887bc458189f0259325
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218649824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba8bd8172742003bc61509e93b824fdc3b30b0d5fc521449a8c7c971d48451f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:34:39 GMT
ENV MONO_VERSION=5.20.1.19
# Fri, 12 Apr 2019 22:34:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:35:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 12 Apr 2019 22:43:30 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a588ebeaccd5c9eeb0fa7a4ee26f49422da716f0bf08bc9f5bdd5a06efc4636`  
		Last Modified: Fri, 12 Apr 2019 22:50:38 GMT  
		Size: 244.4 KB (244443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6650e20d9a10db792528b3eb35f4202af5ad5dc6de43755c23780f89b4f65feb`  
		Last Modified: Fri, 12 Apr 2019 22:50:52 GMT  
		Size: 55.5 MB (55512055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ace23b3b038971c8af045107b800e043c5ef9464e1a985fa063fa136e0a8355`  
		Last Modified: Fri, 12 Apr 2019 22:51:52 GMT  
		Size: 140.4 MB (140397278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1`

```console
$ docker pull mono@sha256:f2427253ba19922ab3e69391dd969a644c31b57735e66b22657b9273f2102413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.20.1` - linux; amd64

```console
$ docker pull mono@sha256:d92e424eedfc258d6b3b35df43da930ebcc5f37c7c155887bc458189f0259325
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218649824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba8bd8172742003bc61509e93b824fdc3b30b0d5fc521449a8c7c971d48451f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:34:39 GMT
ENV MONO_VERSION=5.20.1.19
# Fri, 12 Apr 2019 22:34:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:35:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 12 Apr 2019 22:43:30 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a588ebeaccd5c9eeb0fa7a4ee26f49422da716f0bf08bc9f5bdd5a06efc4636`  
		Last Modified: Fri, 12 Apr 2019 22:50:38 GMT  
		Size: 244.4 KB (244443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6650e20d9a10db792528b3eb35f4202af5ad5dc6de43755c23780f89b4f65feb`  
		Last Modified: Fri, 12 Apr 2019 22:50:52 GMT  
		Size: 55.5 MB (55512055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ace23b3b038971c8af045107b800e043c5ef9464e1a985fa063fa136e0a8355`  
		Last Modified: Fri, 12 Apr 2019 22:51:52 GMT  
		Size: 140.4 MB (140397278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1.19`

```console
$ docker pull mono@sha256:f2427253ba19922ab3e69391dd969a644c31b57735e66b22657b9273f2102413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.20.1.19` - linux; amd64

```console
$ docker pull mono@sha256:d92e424eedfc258d6b3b35df43da930ebcc5f37c7c155887bc458189f0259325
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218649824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba8bd8172742003bc61509e93b824fdc3b30b0d5fc521449a8c7c971d48451f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:34:39 GMT
ENV MONO_VERSION=5.20.1.19
# Fri, 12 Apr 2019 22:34:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:35:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 12 Apr 2019 22:43:30 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a588ebeaccd5c9eeb0fa7a4ee26f49422da716f0bf08bc9f5bdd5a06efc4636`  
		Last Modified: Fri, 12 Apr 2019 22:50:38 GMT  
		Size: 244.4 KB (244443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6650e20d9a10db792528b3eb35f4202af5ad5dc6de43755c23780f89b4f65feb`  
		Last Modified: Fri, 12 Apr 2019 22:50:52 GMT  
		Size: 55.5 MB (55512055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ace23b3b038971c8af045107b800e043c5ef9464e1a985fa063fa136e0a8355`  
		Last Modified: Fri, 12 Apr 2019 22:51:52 GMT  
		Size: 140.4 MB (140397278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1.19-slim`

```console
$ docker pull mono@sha256:a6fb535bc02448b6149016d413a533e0361c7d78454714b15328d7a5ca115c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.20.1.19-slim` - linux; amd64

```console
$ docker pull mono@sha256:364659d98b57f90056ed82a8b0f2ee612229d022716eef39abbf91986f7908d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78252546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54781bfffb1a04253caf9b8aad0292bbd0193171d66abb18def02fc479f29c8b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:34:39 GMT
ENV MONO_VERSION=5.20.1.19
# Fri, 12 Apr 2019 22:34:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:35:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a588ebeaccd5c9eeb0fa7a4ee26f49422da716f0bf08bc9f5bdd5a06efc4636`  
		Last Modified: Fri, 12 Apr 2019 22:50:38 GMT  
		Size: 244.4 KB (244443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6650e20d9a10db792528b3eb35f4202af5ad5dc6de43755c23780f89b4f65feb`  
		Last Modified: Fri, 12 Apr 2019 22:50:52 GMT  
		Size: 55.5 MB (55512055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1-slim`

```console
$ docker pull mono@sha256:a6fb535bc02448b6149016d413a533e0361c7d78454714b15328d7a5ca115c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.20.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:364659d98b57f90056ed82a8b0f2ee612229d022716eef39abbf91986f7908d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78252546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54781bfffb1a04253caf9b8aad0292bbd0193171d66abb18def02fc479f29c8b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:34:39 GMT
ENV MONO_VERSION=5.20.1.19
# Fri, 12 Apr 2019 22:34:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:35:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a588ebeaccd5c9eeb0fa7a4ee26f49422da716f0bf08bc9f5bdd5a06efc4636`  
		Last Modified: Fri, 12 Apr 2019 22:50:38 GMT  
		Size: 244.4 KB (244443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6650e20d9a10db792528b3eb35f4202af5ad5dc6de43755c23780f89b4f65feb`  
		Last Modified: Fri, 12 Apr 2019 22:50:52 GMT  
		Size: 55.5 MB (55512055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20-slim`

```console
$ docker pull mono@sha256:a6fb535bc02448b6149016d413a533e0361c7d78454714b15328d7a5ca115c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.20-slim` - linux; amd64

```console
$ docker pull mono@sha256:364659d98b57f90056ed82a8b0f2ee612229d022716eef39abbf91986f7908d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78252546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54781bfffb1a04253caf9b8aad0292bbd0193171d66abb18def02fc479f29c8b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:34:39 GMT
ENV MONO_VERSION=5.20.1.19
# Fri, 12 Apr 2019 22:34:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:35:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a588ebeaccd5c9eeb0fa7a4ee26f49422da716f0bf08bc9f5bdd5a06efc4636`  
		Last Modified: Fri, 12 Apr 2019 22:50:38 GMT  
		Size: 244.4 KB (244443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6650e20d9a10db792528b3eb35f4202af5ad5dc6de43755c23780f89b4f65feb`  
		Last Modified: Fri, 12 Apr 2019 22:50:52 GMT  
		Size: 55.5 MB (55512055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:a6fb535bc02448b6149016d413a533e0361c7d78454714b15328d7a5ca115c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:364659d98b57f90056ed82a8b0f2ee612229d022716eef39abbf91986f7908d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78252546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54781bfffb1a04253caf9b8aad0292bbd0193171d66abb18def02fc479f29c8b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:34:39 GMT
ENV MONO_VERSION=5.20.1.19
# Fri, 12 Apr 2019 22:34:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:35:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a588ebeaccd5c9eeb0fa7a4ee26f49422da716f0bf08bc9f5bdd5a06efc4636`  
		Last Modified: Fri, 12 Apr 2019 22:50:38 GMT  
		Size: 244.4 KB (244443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6650e20d9a10db792528b3eb35f4202af5ad5dc6de43755c23780f89b4f65feb`  
		Last Modified: Fri, 12 Apr 2019 22:50:52 GMT  
		Size: 55.5 MB (55512055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:f2427253ba19922ab3e69391dd969a644c31b57735e66b22657b9273f2102413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:d92e424eedfc258d6b3b35df43da930ebcc5f37c7c155887bc458189f0259325
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218649824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba8bd8172742003bc61509e93b824fdc3b30b0d5fc521449a8c7c971d48451f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:34:39 GMT
ENV MONO_VERSION=5.20.1.19
# Fri, 12 Apr 2019 22:34:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:35:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 12 Apr 2019 22:43:30 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a588ebeaccd5c9eeb0fa7a4ee26f49422da716f0bf08bc9f5bdd5a06efc4636`  
		Last Modified: Fri, 12 Apr 2019 22:50:38 GMT  
		Size: 244.4 KB (244443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6650e20d9a10db792528b3eb35f4202af5ad5dc6de43755c23780f89b4f65feb`  
		Last Modified: Fri, 12 Apr 2019 22:50:52 GMT  
		Size: 55.5 MB (55512055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ace23b3b038971c8af045107b800e043c5ef9464e1a985fa063fa136e0a8355`  
		Last Modified: Fri, 12 Apr 2019 22:51:52 GMT  
		Size: 140.4 MB (140397278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:a6fb535bc02448b6149016d413a533e0361c7d78454714b15328d7a5ca115c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:364659d98b57f90056ed82a8b0f2ee612229d022716eef39abbf91986f7908d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78252546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54781bfffb1a04253caf9b8aad0292bbd0193171d66abb18def02fc479f29c8b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Fri, 12 Apr 2019 22:34:39 GMT
ENV MONO_VERSION=5.20.1.19
# Fri, 12 Apr 2019 22:34:59 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Fri, 12 Apr 2019 22:35:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a588ebeaccd5c9eeb0fa7a4ee26f49422da716f0bf08bc9f5bdd5a06efc4636`  
		Last Modified: Fri, 12 Apr 2019 22:50:38 GMT  
		Size: 244.4 KB (244443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6650e20d9a10db792528b3eb35f4202af5ad5dc6de43755c23780f89b4f65feb`  
		Last Modified: Fri, 12 Apr 2019 22:50:52 GMT  
		Size: 55.5 MB (55512055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

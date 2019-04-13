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
$ docker pull mono@sha256:6211616e5edaa9d432d49005157ce499a75dd013eedf53a1921bcc36d0f663f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5` - linux; arm variant v5

```console
$ docker pull mono@sha256:383f10a2ee8e677929dfe8873e1b92c83d9118b96e9ba9bab8ccc61ef057666f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171309503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e7b541fe20d5a5013d6d5c84348b6c6877060eebd0cb3b6f405ddbb5e76068`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:48:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 08:49:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:49:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 08:53:32 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e445752b189d0847aadded94f6aa464ca447685e4e2404717c07e5e8dd2137a8`  
		Last Modified: Sat, 13 Apr 2019 08:56:26 GMT  
		Size: 244.5 KB (244497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1924433d9076d998ab49803e3185a6e2dbceb10c911839b44bfb615ef75acb69`  
		Last Modified: Sat, 13 Apr 2019 08:56:36 GMT  
		Size: 24.3 MB (24264734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ae8628451afe2705af346d8be2139a51063a1c4b8da1a9ee7b90bbb53643d`  
		Last Modified: Sat, 13 Apr 2019 08:57:39 GMT  
		Size: 125.6 MB (125639609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; ppc64le

```console
$ docker pull mono@sha256:3a7a382ebb3b7def7d4c90efdb13758bfc51a06dc505a54fcd584c0b2dce4f67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173717864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336682c081c89bf59863a4ae57a2b386054710a64c68bbc969143fe27c13f981`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:00:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 09:02:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:04:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 09:13:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2231fae1e3e6f5bef33d24ca0a865ce319913f21d90a1be4d83d44d138d3a`  
		Last Modified: Sat, 13 Apr 2019 09:21:16 GMT  
		Size: 244.6 KB (244592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff2e650dc9b84ce171affb109ec7df3133095333eb10f935186cf9c1e6bde0`  
		Last Modified: Sat, 13 Apr 2019 09:21:31 GMT  
		Size: 24.6 MB (24639841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376594e02d3f2aa7beb5b832f6dc295b3c849530b1d0aecb605a7bc5bd73b28e`  
		Last Modified: Sat, 13 Apr 2019 09:22:54 GMT  
		Size: 126.1 MB (126082046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18`

```console
$ docker pull mono@sha256:29269413439568c12eed12ff0c31aaafba4098ec0754f7b6ccde7f212594ee85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.18` - linux; arm variant v5

```console
$ docker pull mono@sha256:0921dc8e7ad20b8702490f70db4e6199a71f00f8d1507a06e75fbec3b21de92e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171276397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e361f29be78a0e3c9962d9ff18338a4e14ad85adeaeec1afb46ad962a9d64c27`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:49:56 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 08:50:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:50:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 08:56:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214aa6e461399821b929175cbd9ff2096120ff56b71505374cff5a5b0949804`  
		Last Modified: Sat, 13 Apr 2019 08:56:44 GMT  
		Size: 244.5 KB (244501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8b0dd2389f7940df8f072a75efcdf014a47a114495a5c31f8c1e99ab2b28df`  
		Last Modified: Sat, 13 Apr 2019 08:56:53 GMT  
		Size: 24.3 MB (24279433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da4ab2a77d56acf5c809e801e4cd94ddf70087a792dbea497cdb3edb740e63`  
		Last Modified: Sat, 13 Apr 2019 08:58:35 GMT  
		Size: 125.6 MB (125591800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; ppc64le

```console
$ docker pull mono@sha256:df748e666e6021b066430a9c8c697fc97861bab9fa3c925164dc0a43aff1295e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173696157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a20964ab0fae09a0b31eeaad3221637e3e70d9b5174ef038f613d102f4de8e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:04:39 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 09:05:53 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:07:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 09:20:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaa86fc59ed181c30c41f4dab59fa509c7faa2063adde7e3a96cbdf7e854241`  
		Last Modified: Sat, 13 Apr 2019 09:21:49 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6956f0cae5fbb23c1777e0329244e5da883dea4ef63d83921065c8b77e2249c`  
		Last Modified: Sat, 13 Apr 2019 09:22:00 GMT  
		Size: 24.7 MB (24651736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf08d9b7d450dbaeb2af8160531bbc249c88a34d659812478758622a775766e`  
		Last Modified: Sat, 13 Apr 2019 09:23:47 GMT  
		Size: 126.0 MB (126048480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1`

```console
$ docker pull mono@sha256:29269413439568c12eed12ff0c31aaafba4098ec0754f7b6ccde7f212594ee85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.18.1` - linux; arm variant v5

```console
$ docker pull mono@sha256:0921dc8e7ad20b8702490f70db4e6199a71f00f8d1507a06e75fbec3b21de92e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171276397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e361f29be78a0e3c9962d9ff18338a4e14ad85adeaeec1afb46ad962a9d64c27`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:49:56 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 08:50:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:50:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 08:56:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214aa6e461399821b929175cbd9ff2096120ff56b71505374cff5a5b0949804`  
		Last Modified: Sat, 13 Apr 2019 08:56:44 GMT  
		Size: 244.5 KB (244501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8b0dd2389f7940df8f072a75efcdf014a47a114495a5c31f8c1e99ab2b28df`  
		Last Modified: Sat, 13 Apr 2019 08:56:53 GMT  
		Size: 24.3 MB (24279433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da4ab2a77d56acf5c809e801e4cd94ddf70087a792dbea497cdb3edb740e63`  
		Last Modified: Sat, 13 Apr 2019 08:58:35 GMT  
		Size: 125.6 MB (125591800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; ppc64le

```console
$ docker pull mono@sha256:df748e666e6021b066430a9c8c697fc97861bab9fa3c925164dc0a43aff1295e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173696157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a20964ab0fae09a0b31eeaad3221637e3e70d9b5174ef038f613d102f4de8e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:04:39 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 09:05:53 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:07:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 09:20:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaa86fc59ed181c30c41f4dab59fa509c7faa2063adde7e3a96cbdf7e854241`  
		Last Modified: Sat, 13 Apr 2019 09:21:49 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6956f0cae5fbb23c1777e0329244e5da883dea4ef63d83921065c8b77e2249c`  
		Last Modified: Sat, 13 Apr 2019 09:22:00 GMT  
		Size: 24.7 MB (24651736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf08d9b7d450dbaeb2af8160531bbc249c88a34d659812478758622a775766e`  
		Last Modified: Sat, 13 Apr 2019 09:23:47 GMT  
		Size: 126.0 MB (126048480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1.3`

```console
$ docker pull mono@sha256:29269413439568c12eed12ff0c31aaafba4098ec0754f7b6ccde7f212594ee85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.18.1.3` - linux; arm variant v5

```console
$ docker pull mono@sha256:0921dc8e7ad20b8702490f70db4e6199a71f00f8d1507a06e75fbec3b21de92e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171276397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e361f29be78a0e3c9962d9ff18338a4e14ad85adeaeec1afb46ad962a9d64c27`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:49:56 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 08:50:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:50:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 08:56:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214aa6e461399821b929175cbd9ff2096120ff56b71505374cff5a5b0949804`  
		Last Modified: Sat, 13 Apr 2019 08:56:44 GMT  
		Size: 244.5 KB (244501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8b0dd2389f7940df8f072a75efcdf014a47a114495a5c31f8c1e99ab2b28df`  
		Last Modified: Sat, 13 Apr 2019 08:56:53 GMT  
		Size: 24.3 MB (24279433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da4ab2a77d56acf5c809e801e4cd94ddf70087a792dbea497cdb3edb740e63`  
		Last Modified: Sat, 13 Apr 2019 08:58:35 GMT  
		Size: 125.6 MB (125591800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3` - linux; ppc64le

```console
$ docker pull mono@sha256:df748e666e6021b066430a9c8c697fc97861bab9fa3c925164dc0a43aff1295e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173696157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a20964ab0fae09a0b31eeaad3221637e3e70d9b5174ef038f613d102f4de8e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:04:39 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 09:05:53 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:07:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 09:20:38 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaa86fc59ed181c30c41f4dab59fa509c7faa2063adde7e3a96cbdf7e854241`  
		Last Modified: Sat, 13 Apr 2019 09:21:49 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6956f0cae5fbb23c1777e0329244e5da883dea4ef63d83921065c8b77e2249c`  
		Last Modified: Sat, 13 Apr 2019 09:22:00 GMT  
		Size: 24.7 MB (24651736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf08d9b7d450dbaeb2af8160531bbc249c88a34d659812478758622a775766e`  
		Last Modified: Sat, 13 Apr 2019 09:23:47 GMT  
		Size: 126.0 MB (126048480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1.3-slim`

```console
$ docker pull mono@sha256:f2a1946e07ec9855b40aa8cd3f3c16977cbbc4b215b687adce66be9a6b747a9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.18.1.3-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:2f768cda57405974b1d96ed6af17c9898ed4fe2415dfc78e36123ff49298cab3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45684597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b70a030f374a6f267eb218f77dba917d4f36f38b73966243db71762f56b07f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:49:56 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 08:50:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:50:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214aa6e461399821b929175cbd9ff2096120ff56b71505374cff5a5b0949804`  
		Last Modified: Sat, 13 Apr 2019 08:56:44 GMT  
		Size: 244.5 KB (244501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8b0dd2389f7940df8f072a75efcdf014a47a114495a5c31f8c1e99ab2b28df`  
		Last Modified: Sat, 13 Apr 2019 08:56:53 GMT  
		Size: 24.3 MB (24279433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:c2efd2a09703b802b0fff5ac9f4e22257a3d61a60fc194622a5ac0463af12d0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47647677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77383030d318441a07075f3e6075b4f11cb97635f81f70fb3e7a2528302a338c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:04:39 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 09:05:53 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:07:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaa86fc59ed181c30c41f4dab59fa509c7faa2063adde7e3a96cbdf7e854241`  
		Last Modified: Sat, 13 Apr 2019 09:21:49 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6956f0cae5fbb23c1777e0329244e5da883dea4ef63d83921065c8b77e2249c`  
		Last Modified: Sat, 13 Apr 2019 09:22:00 GMT  
		Size: 24.7 MB (24651736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1-slim`

```console
$ docker pull mono@sha256:f2a1946e07ec9855b40aa8cd3f3c16977cbbc4b215b687adce66be9a6b747a9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.18.1-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:2f768cda57405974b1d96ed6af17c9898ed4fe2415dfc78e36123ff49298cab3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45684597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b70a030f374a6f267eb218f77dba917d4f36f38b73966243db71762f56b07f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:49:56 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 08:50:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:50:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214aa6e461399821b929175cbd9ff2096120ff56b71505374cff5a5b0949804`  
		Last Modified: Sat, 13 Apr 2019 08:56:44 GMT  
		Size: 244.5 KB (244501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8b0dd2389f7940df8f072a75efcdf014a47a114495a5c31f8c1e99ab2b28df`  
		Last Modified: Sat, 13 Apr 2019 08:56:53 GMT  
		Size: 24.3 MB (24279433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:c2efd2a09703b802b0fff5ac9f4e22257a3d61a60fc194622a5ac0463af12d0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47647677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77383030d318441a07075f3e6075b4f11cb97635f81f70fb3e7a2528302a338c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:04:39 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 09:05:53 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:07:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaa86fc59ed181c30c41f4dab59fa509c7faa2063adde7e3a96cbdf7e854241`  
		Last Modified: Sat, 13 Apr 2019 09:21:49 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6956f0cae5fbb23c1777e0329244e5da883dea4ef63d83921065c8b77e2249c`  
		Last Modified: Sat, 13 Apr 2019 09:22:00 GMT  
		Size: 24.7 MB (24651736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18-slim`

```console
$ docker pull mono@sha256:f2a1946e07ec9855b40aa8cd3f3c16977cbbc4b215b687adce66be9a6b747a9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.18-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:2f768cda57405974b1d96ed6af17c9898ed4fe2415dfc78e36123ff49298cab3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45684597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b70a030f374a6f267eb218f77dba917d4f36f38b73966243db71762f56b07f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:49:56 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 08:50:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:50:53 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1214aa6e461399821b929175cbd9ff2096120ff56b71505374cff5a5b0949804`  
		Last Modified: Sat, 13 Apr 2019 08:56:44 GMT  
		Size: 244.5 KB (244501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8b0dd2389f7940df8f072a75efcdf014a47a114495a5c31f8c1e99ab2b28df`  
		Last Modified: Sat, 13 Apr 2019 08:56:53 GMT  
		Size: 24.3 MB (24279433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:c2efd2a09703b802b0fff5ac9f4e22257a3d61a60fc194622a5ac0463af12d0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47647677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77383030d318441a07075f3e6075b4f11cb97635f81f70fb3e7a2528302a338c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:04:39 GMT
ENV MONO_VERSION=5.18.1.3
# Sat, 13 Apr 2019 09:05:53 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:07:16 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaa86fc59ed181c30c41f4dab59fa509c7faa2063adde7e3a96cbdf7e854241`  
		Last Modified: Sat, 13 Apr 2019 09:21:49 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6956f0cae5fbb23c1777e0329244e5da883dea4ef63d83921065c8b77e2249c`  
		Last Modified: Sat, 13 Apr 2019 09:22:00 GMT  
		Size: 24.7 MB (24651736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20`

```console
$ docker pull mono@sha256:6211616e5edaa9d432d49005157ce499a75dd013eedf53a1921bcc36d0f663f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.20` - linux; arm variant v5

```console
$ docker pull mono@sha256:383f10a2ee8e677929dfe8873e1b92c83d9118b96e9ba9bab8ccc61ef057666f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171309503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e7b541fe20d5a5013d6d5c84348b6c6877060eebd0cb3b6f405ddbb5e76068`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:48:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 08:49:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:49:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 08:53:32 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e445752b189d0847aadded94f6aa464ca447685e4e2404717c07e5e8dd2137a8`  
		Last Modified: Sat, 13 Apr 2019 08:56:26 GMT  
		Size: 244.5 KB (244497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1924433d9076d998ab49803e3185a6e2dbceb10c911839b44bfb615ef75acb69`  
		Last Modified: Sat, 13 Apr 2019 08:56:36 GMT  
		Size: 24.3 MB (24264734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ae8628451afe2705af346d8be2139a51063a1c4b8da1a9ee7b90bbb53643d`  
		Last Modified: Sat, 13 Apr 2019 08:57:39 GMT  
		Size: 125.6 MB (125639609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20` - linux; ppc64le

```console
$ docker pull mono@sha256:3a7a382ebb3b7def7d4c90efdb13758bfc51a06dc505a54fcd584c0b2dce4f67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173717864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336682c081c89bf59863a4ae57a2b386054710a64c68bbc969143fe27c13f981`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:00:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 09:02:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:04:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 09:13:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2231fae1e3e6f5bef33d24ca0a865ce319913f21d90a1be4d83d44d138d3a`  
		Last Modified: Sat, 13 Apr 2019 09:21:16 GMT  
		Size: 244.6 KB (244592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff2e650dc9b84ce171affb109ec7df3133095333eb10f935186cf9c1e6bde0`  
		Last Modified: Sat, 13 Apr 2019 09:21:31 GMT  
		Size: 24.6 MB (24639841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376594e02d3f2aa7beb5b832f6dc295b3c849530b1d0aecb605a7bc5bd73b28e`  
		Last Modified: Sat, 13 Apr 2019 09:22:54 GMT  
		Size: 126.1 MB (126082046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1`

```console
$ docker pull mono@sha256:6211616e5edaa9d432d49005157ce499a75dd013eedf53a1921bcc36d0f663f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.20.1` - linux; arm variant v5

```console
$ docker pull mono@sha256:383f10a2ee8e677929dfe8873e1b92c83d9118b96e9ba9bab8ccc61ef057666f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171309503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e7b541fe20d5a5013d6d5c84348b6c6877060eebd0cb3b6f405ddbb5e76068`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:48:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 08:49:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:49:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 08:53:32 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e445752b189d0847aadded94f6aa464ca447685e4e2404717c07e5e8dd2137a8`  
		Last Modified: Sat, 13 Apr 2019 08:56:26 GMT  
		Size: 244.5 KB (244497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1924433d9076d998ab49803e3185a6e2dbceb10c911839b44bfb615ef75acb69`  
		Last Modified: Sat, 13 Apr 2019 08:56:36 GMT  
		Size: 24.3 MB (24264734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ae8628451afe2705af346d8be2139a51063a1c4b8da1a9ee7b90bbb53643d`  
		Last Modified: Sat, 13 Apr 2019 08:57:39 GMT  
		Size: 125.6 MB (125639609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1` - linux; ppc64le

```console
$ docker pull mono@sha256:3a7a382ebb3b7def7d4c90efdb13758bfc51a06dc505a54fcd584c0b2dce4f67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173717864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336682c081c89bf59863a4ae57a2b386054710a64c68bbc969143fe27c13f981`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:00:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 09:02:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:04:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 09:13:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2231fae1e3e6f5bef33d24ca0a865ce319913f21d90a1be4d83d44d138d3a`  
		Last Modified: Sat, 13 Apr 2019 09:21:16 GMT  
		Size: 244.6 KB (244592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff2e650dc9b84ce171affb109ec7df3133095333eb10f935186cf9c1e6bde0`  
		Last Modified: Sat, 13 Apr 2019 09:21:31 GMT  
		Size: 24.6 MB (24639841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376594e02d3f2aa7beb5b832f6dc295b3c849530b1d0aecb605a7bc5bd73b28e`  
		Last Modified: Sat, 13 Apr 2019 09:22:54 GMT  
		Size: 126.1 MB (126082046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1.19`

```console
$ docker pull mono@sha256:6211616e5edaa9d432d49005157ce499a75dd013eedf53a1921bcc36d0f663f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.20.1.19` - linux; arm variant v5

```console
$ docker pull mono@sha256:383f10a2ee8e677929dfe8873e1b92c83d9118b96e9ba9bab8ccc61ef057666f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171309503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e7b541fe20d5a5013d6d5c84348b6c6877060eebd0cb3b6f405ddbb5e76068`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:48:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 08:49:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:49:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 08:53:32 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e445752b189d0847aadded94f6aa464ca447685e4e2404717c07e5e8dd2137a8`  
		Last Modified: Sat, 13 Apr 2019 08:56:26 GMT  
		Size: 244.5 KB (244497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1924433d9076d998ab49803e3185a6e2dbceb10c911839b44bfb615ef75acb69`  
		Last Modified: Sat, 13 Apr 2019 08:56:36 GMT  
		Size: 24.3 MB (24264734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ae8628451afe2705af346d8be2139a51063a1c4b8da1a9ee7b90bbb53643d`  
		Last Modified: Sat, 13 Apr 2019 08:57:39 GMT  
		Size: 125.6 MB (125639609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19` - linux; ppc64le

```console
$ docker pull mono@sha256:3a7a382ebb3b7def7d4c90efdb13758bfc51a06dc505a54fcd584c0b2dce4f67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173717864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336682c081c89bf59863a4ae57a2b386054710a64c68bbc969143fe27c13f981`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:00:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 09:02:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:04:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 09:13:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2231fae1e3e6f5bef33d24ca0a865ce319913f21d90a1be4d83d44d138d3a`  
		Last Modified: Sat, 13 Apr 2019 09:21:16 GMT  
		Size: 244.6 KB (244592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff2e650dc9b84ce171affb109ec7df3133095333eb10f935186cf9c1e6bde0`  
		Last Modified: Sat, 13 Apr 2019 09:21:31 GMT  
		Size: 24.6 MB (24639841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376594e02d3f2aa7beb5b832f6dc295b3c849530b1d0aecb605a7bc5bd73b28e`  
		Last Modified: Sat, 13 Apr 2019 09:22:54 GMT  
		Size: 126.1 MB (126082046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1.19-slim`

```console
$ docker pull mono@sha256:e6c2e3a54602eeb0af695d7ebb7e8d3f3d75e932e1752cb0b7e9c0fcf62b8b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.20.1.19-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:b8e5c2b6af7e7c08eb33d48b630e66f1f5c590f1874b6b37d0c761889e85efbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45669894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7847f90779ba77dd26937aa8ecfc73866b98dc7d8970f514b0a26a69f52c70`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:48:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 08:49:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:49:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e445752b189d0847aadded94f6aa464ca447685e4e2404717c07e5e8dd2137a8`  
		Last Modified: Sat, 13 Apr 2019 08:56:26 GMT  
		Size: 244.5 KB (244497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1924433d9076d998ab49803e3185a6e2dbceb10c911839b44bfb615ef75acb69`  
		Last Modified: Sat, 13 Apr 2019 08:56:36 GMT  
		Size: 24.3 MB (24264734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:01b37377d75a35d997eef7b02835ccfb44920e75dcc0960c95affefa264131d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47635818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ea3404b2804662009dab9677c5bd87dfe93492c2885c602c35df7afd1e76c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:00:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 09:02:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:04:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2231fae1e3e6f5bef33d24ca0a865ce319913f21d90a1be4d83d44d138d3a`  
		Last Modified: Sat, 13 Apr 2019 09:21:16 GMT  
		Size: 244.6 KB (244592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff2e650dc9b84ce171affb109ec7df3133095333eb10f935186cf9c1e6bde0`  
		Last Modified: Sat, 13 Apr 2019 09:21:31 GMT  
		Size: 24.6 MB (24639841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1-slim`

```console
$ docker pull mono@sha256:e6c2e3a54602eeb0af695d7ebb7e8d3f3d75e932e1752cb0b7e9c0fcf62b8b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.20.1-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:b8e5c2b6af7e7c08eb33d48b630e66f1f5c590f1874b6b37d0c761889e85efbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45669894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7847f90779ba77dd26937aa8ecfc73866b98dc7d8970f514b0a26a69f52c70`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:48:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 08:49:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:49:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e445752b189d0847aadded94f6aa464ca447685e4e2404717c07e5e8dd2137a8`  
		Last Modified: Sat, 13 Apr 2019 08:56:26 GMT  
		Size: 244.5 KB (244497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1924433d9076d998ab49803e3185a6e2dbceb10c911839b44bfb615ef75acb69`  
		Last Modified: Sat, 13 Apr 2019 08:56:36 GMT  
		Size: 24.3 MB (24264734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:01b37377d75a35d997eef7b02835ccfb44920e75dcc0960c95affefa264131d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47635818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ea3404b2804662009dab9677c5bd87dfe93492c2885c602c35df7afd1e76c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:00:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 09:02:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:04:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2231fae1e3e6f5bef33d24ca0a865ce319913f21d90a1be4d83d44d138d3a`  
		Last Modified: Sat, 13 Apr 2019 09:21:16 GMT  
		Size: 244.6 KB (244592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff2e650dc9b84ce171affb109ec7df3133095333eb10f935186cf9c1e6bde0`  
		Last Modified: Sat, 13 Apr 2019 09:21:31 GMT  
		Size: 24.6 MB (24639841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20-slim`

```console
$ docker pull mono@sha256:e6c2e3a54602eeb0af695d7ebb7e8d3f3d75e932e1752cb0b7e9c0fcf62b8b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5.20-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:b8e5c2b6af7e7c08eb33d48b630e66f1f5c590f1874b6b37d0c761889e85efbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45669894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7847f90779ba77dd26937aa8ecfc73866b98dc7d8970f514b0a26a69f52c70`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:48:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 08:49:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:49:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e445752b189d0847aadded94f6aa464ca447685e4e2404717c07e5e8dd2137a8`  
		Last Modified: Sat, 13 Apr 2019 08:56:26 GMT  
		Size: 244.5 KB (244497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1924433d9076d998ab49803e3185a6e2dbceb10c911839b44bfb615ef75acb69`  
		Last Modified: Sat, 13 Apr 2019 08:56:36 GMT  
		Size: 24.3 MB (24264734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:01b37377d75a35d997eef7b02835ccfb44920e75dcc0960c95affefa264131d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47635818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ea3404b2804662009dab9677c5bd87dfe93492c2885c602c35df7afd1e76c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:00:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 09:02:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:04:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2231fae1e3e6f5bef33d24ca0a865ce319913f21d90a1be4d83d44d138d3a`  
		Last Modified: Sat, 13 Apr 2019 09:21:16 GMT  
		Size: 244.6 KB (244592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff2e650dc9b84ce171affb109ec7df3133095333eb10f935186cf9c1e6bde0`  
		Last Modified: Sat, 13 Apr 2019 09:21:31 GMT  
		Size: 24.6 MB (24639841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:e6c2e3a54602eeb0af695d7ebb7e8d3f3d75e932e1752cb0b7e9c0fcf62b8b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:5-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:b8e5c2b6af7e7c08eb33d48b630e66f1f5c590f1874b6b37d0c761889e85efbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45669894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7847f90779ba77dd26937aa8ecfc73866b98dc7d8970f514b0a26a69f52c70`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:48:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 08:49:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:49:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e445752b189d0847aadded94f6aa464ca447685e4e2404717c07e5e8dd2137a8`  
		Last Modified: Sat, 13 Apr 2019 08:56:26 GMT  
		Size: 244.5 KB (244497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1924433d9076d998ab49803e3185a6e2dbceb10c911839b44bfb615ef75acb69`  
		Last Modified: Sat, 13 Apr 2019 08:56:36 GMT  
		Size: 24.3 MB (24264734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:01b37377d75a35d997eef7b02835ccfb44920e75dcc0960c95affefa264131d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47635818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ea3404b2804662009dab9677c5bd87dfe93492c2885c602c35df7afd1e76c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:00:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 09:02:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:04:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2231fae1e3e6f5bef33d24ca0a865ce319913f21d90a1be4d83d44d138d3a`  
		Last Modified: Sat, 13 Apr 2019 09:21:16 GMT  
		Size: 244.6 KB (244592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff2e650dc9b84ce171affb109ec7df3133095333eb10f935186cf9c1e6bde0`  
		Last Modified: Sat, 13 Apr 2019 09:21:31 GMT  
		Size: 24.6 MB (24639841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:6211616e5edaa9d432d49005157ce499a75dd013eedf53a1921bcc36d0f663f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:latest` - linux; arm variant v5

```console
$ docker pull mono@sha256:383f10a2ee8e677929dfe8873e1b92c83d9118b96e9ba9bab8ccc61ef057666f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171309503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e7b541fe20d5a5013d6d5c84348b6c6877060eebd0cb3b6f405ddbb5e76068`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:48:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 08:49:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:49:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 08:53:32 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e445752b189d0847aadded94f6aa464ca447685e4e2404717c07e5e8dd2137a8`  
		Last Modified: Sat, 13 Apr 2019 08:56:26 GMT  
		Size: 244.5 KB (244497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1924433d9076d998ab49803e3185a6e2dbceb10c911839b44bfb615ef75acb69`  
		Last Modified: Sat, 13 Apr 2019 08:56:36 GMT  
		Size: 24.3 MB (24264734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ae8628451afe2705af346d8be2139a51063a1c4b8da1a9ee7b90bbb53643d`  
		Last Modified: Sat, 13 Apr 2019 08:57:39 GMT  
		Size: 125.6 MB (125639609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; ppc64le

```console
$ docker pull mono@sha256:3a7a382ebb3b7def7d4c90efdb13758bfc51a06dc505a54fcd584c0b2dce4f67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173717864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336682c081c89bf59863a4ae57a2b386054710a64c68bbc969143fe27c13f981`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:00:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 09:02:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:04:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Sat, 13 Apr 2019 09:13:52 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2231fae1e3e6f5bef33d24ca0a865ce319913f21d90a1be4d83d44d138d3a`  
		Last Modified: Sat, 13 Apr 2019 09:21:16 GMT  
		Size: 244.6 KB (244592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff2e650dc9b84ce171affb109ec7df3133095333eb10f935186cf9c1e6bde0`  
		Last Modified: Sat, 13 Apr 2019 09:21:31 GMT  
		Size: 24.6 MB (24639841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376594e02d3f2aa7beb5b832f6dc295b3c849530b1d0aecb605a7bc5bd73b28e`  
		Last Modified: Sat, 13 Apr 2019 09:22:54 GMT  
		Size: 126.1 MB (126082046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:e6c2e3a54602eeb0af695d7ebb7e8d3f3d75e932e1752cb0b7e9c0fcf62b8b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `mono:slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:b8e5c2b6af7e7c08eb33d48b630e66f1f5c590f1874b6b37d0c761889e85efbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45669894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7847f90779ba77dd26937aa8ecfc73866b98dc7d8970f514b0a26a69f52c70`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 08:48:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 08:49:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 08:49:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e445752b189d0847aadded94f6aa464ca447685e4e2404717c07e5e8dd2137a8`  
		Last Modified: Sat, 13 Apr 2019 08:56:26 GMT  
		Size: 244.5 KB (244497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1924433d9076d998ab49803e3185a6e2dbceb10c911839b44bfb615ef75acb69`  
		Last Modified: Sat, 13 Apr 2019 08:56:36 GMT  
		Size: 24.3 MB (24264734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; ppc64le

```console
$ docker pull mono@sha256:01b37377d75a35d997eef7b02835ccfb44920e75dcc0960c95affefa264131d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47635818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ea3404b2804662009dab9677c5bd87dfe93492c2885c602c35df7afd1e76c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 09:00:41 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 09:02:46 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 09:04:21 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a2231fae1e3e6f5bef33d24ca0a865ce319913f21d90a1be4d83d44d138d3a`  
		Last Modified: Sat, 13 Apr 2019 09:21:16 GMT  
		Size: 244.6 KB (244592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ff2e650dc9b84ce171affb109ec7df3133095333eb10f935186cf9c1e6bde0`  
		Last Modified: Sat, 13 Apr 2019 09:21:31 GMT  
		Size: 24.6 MB (24639841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

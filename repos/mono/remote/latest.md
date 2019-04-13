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

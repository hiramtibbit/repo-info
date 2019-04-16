## `mono:slim`

```console
$ docker pull mono@sha256:3cb28910e3360b157439f8e312b7fed254a51c45d817fb95913c9974f040c11c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
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

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:4e4c259eabad1f0ed20221df61ac6ac4a2f1683e47ea4973d5f9ed76b7ef167d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43084815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95bfed480fd0b2a07bbb880ac96400163c5bd8b599c23363368d9b05aa5c6290`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Tue, 16 Apr 2019 12:07:33 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 16 Apr 2019 12:07:49 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 16 Apr 2019 12:08:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1888837132b0b3b1c620f4cc07ff57faaeb016a9c2f74fe04b5828e83720518d`  
		Last Modified: Tue, 16 Apr 2019 12:14:41 GMT  
		Size: 244.5 KB (244493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17635fc0da7467637b8bc0e4b166b33139c0b8dc7e5e12105c6b74a68eacb322`  
		Last Modified: Tue, 16 Apr 2019 12:14:50 GMT  
		Size: 23.6 MB (23557880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b92b1bf21ca912416f8635815200007880ebd120cf099cef78d9d9fd58207e99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48734286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c1a74eb87cfb8c6bc57cfd9d459ec4511151865fb4dc946b16f5d0b834c36c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Tue, 16 Apr 2019 09:40:45 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 16 Apr 2019 09:41:32 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 16 Apr 2019 09:42:35 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c2f7a91b6aef422d3a30ec29e47f4ab2b290959e3de7aea2dffdcee4d17e78`  
		Last Modified: Tue, 16 Apr 2019 10:11:56 GMT  
		Size: 244.4 KB (244418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4a4e8d4e2046ff71cb4d011b87bd28b6ff7c4471c8b37ad929ca941d3827cf`  
		Last Modified: Tue, 16 Apr 2019 10:12:08 GMT  
		Size: 28.1 MB (28149689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:5378224eba25a61af5a75a294ebd50409524ce8e4d86c0c3f7405b40b1f91e0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81915121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee9eb733d67a13d6c1c847ded417357f19f7752817eb0e552e96c5b4893d4a4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Sat, 13 Apr 2019 11:32:40 GMT
ENV MONO_VERSION=5.20.1.19
# Sat, 13 Apr 2019 11:32:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Sat, 13 Apr 2019 11:33:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7633b77a6203f1b47beb5d521a3246e9e0cb65b4f4730bce1fe024d9f08d0713`  
		Last Modified: Sat, 13 Apr 2019 11:38:20 GMT  
		Size: 244.5 KB (244460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e8d107b3511e229cb2a9d963c5d002524e7f90dade25cc77d20b4b9f37b7c4`  
		Last Modified: Sat, 13 Apr 2019 11:38:35 GMT  
		Size: 58.5 MB (58544916 bytes)  
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

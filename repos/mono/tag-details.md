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
$ docker pull mono@sha256:7ae91528be5c00951f9f5e2c9a337b29167ae354f997dbf94e2faad73428f72d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:964322bdd837fa4ff035b691b9478244d902b2af918bff6a4b284df0d38f0a7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218647390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831a16f6ca106650b5873500bf8dae27395879120e93c70d791aafdd7683e9b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:34:54 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 05:35:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:35:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 05:44:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83c8821ccbf9dc776e73e062825c10f7427b8cd11ca429e42caf4930bd27ca7`  
		Last Modified: Wed, 08 May 2019 05:51:46 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779befe89074617e69193a8a610a57ddf4d6d0bbbe99fdac3cc3be7d8fb4afb`  
		Last Modified: Wed, 08 May 2019 05:51:56 GMT  
		Size: 55.5 MB (55512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d12fd312caf439f1778660fe437aa9144a84d1501feee05da6803140cd3ad82`  
		Last Modified: Wed, 08 May 2019 05:52:47 GMT  
		Size: 140.4 MB (140400869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v5

```console
$ docker pull mono@sha256:a6265bdd117a8ec5164eba6887439cbd97a797fa84e625be1b653b4db70fed10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171305250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a36469316fd8998152efaffc63007b59b61c73f8b7297d16b9fb3501a134807`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:37 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:40:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:41:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:45:51 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b24f837c0138cf9969ea27f515af55f3caabc3d24f1d7a43613c9273042fb`  
		Last Modified: Tue, 11 Jun 2019 00:49:37 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0352124a6be6ac0624313e86f8d7e31d34592b858672b01d94c4fc42a40d8`  
		Last Modified: Tue, 11 Jun 2019 00:49:46 GMT  
		Size: 24.3 MB (24264980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b78f3c9f8cbbd728f7dac847a26c73fac15acba9cd1bf736ad7c29e243554f8`  
		Last Modified: Tue, 11 Jun 2019 00:50:55 GMT  
		Size: 125.6 MB (125639945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:ca9a180fe9ebcee6add38375e3664403471915b1b695ff49c4c9006d4e3f9185
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167378271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eac13718208848d89d7506285df7e7a8dc1fa707810c8de5cf22fed46570fcc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:43:51 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:44:10 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:44:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:48:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df93aef30eda5aaa697d32a789a4558033de73bfdabc57f0755d6d4499a3ce`  
		Last Modified: Tue, 11 Jun 2019 00:51:40 GMT  
		Size: 244.5 KB (244486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf58e9ba07395bc33d02cbae2aeabd6b618a931e068f8cacbe1e47295c990d`  
		Last Modified: Tue, 11 Jun 2019 00:51:49 GMT  
		Size: 23.6 MB (23558139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b778fdeed0411539669b5114a89bdb8fce4806a0c16059c0765704d9d5514ad1`  
		Last Modified: Tue, 11 Jun 2019 00:53:01 GMT  
		Size: 124.3 MB (124299461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:39cb0b52e730e689adcd87d930e471e8769ab17a085a3668c3efb7a6bbf9d989
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188184054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ff9733dc4ca63921367cc6fce2aa7c62af5b8d6e1e81ee96c729ceeeded384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:02:47 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 01:03:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:03:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 01:07:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957e51c87206f5141ae0b7be005a0462ede462d0540f679e3550d01a9b55c51`  
		Last Modified: Tue, 11 Jun 2019 01:10:05 GMT  
		Size: 244.3 KB (244337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbe6c0bf2cdb4fcd63c731636fe37c2a5c71e081ef97667b582c97e1a97bb`  
		Last Modified: Tue, 11 Jun 2019 01:10:15 GMT  
		Size: 28.2 MB (28152527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15889e71ae788f5aa7adb7aa69ae438c302482db2dfb76175b10706ad55be583`  
		Last Modified: Tue, 11 Jun 2019 01:11:52 GMT  
		Size: 139.5 MB (139453400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:69fab949d251c6d9983c5caacbd73b4d9e860008e3644a02c2c3cfa18c360f56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228146260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7b0006b5b1b85f30dc8a970d17a7c492bc809b6ed6dce2161503345b63581c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:33 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 19:32:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 19:35:47 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c295dce532aae39ef9a7dc0a20f25a3cc82c42034e0ba67c62a523e2537efb5a`  
		Last Modified: Wed, 08 May 2019 19:38:06 GMT  
		Size: 244.5 KB (244494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fe2d42b9589843ed6a73d2ac9313727475bfd85a84d73e7a1a52c150efd33`  
		Last Modified: Wed, 08 May 2019 19:38:20 GMT  
		Size: 58.5 MB (58544853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3ee1131727013afba87ef1f4c64805a24a7fe2906c5507d7fd4bb4c11c6144`  
		Last Modified: Wed, 08 May 2019 19:39:29 GMT  
		Size: 146.2 MB (146236070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; ppc64le

```console
$ docker pull mono@sha256:a7c9e19eb169fdbf833b3b8ec9c772ac760907edc0854741a50b0488ad6f15a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173712799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e33910605fa94eb0f8e2bd33cc9e075d729944c3facee462bedd7dd7e99f3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:57:46 GMT
ENV MONO_VERSION=5.20.1.19
# Mon, 10 Jun 2019 23:59:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:13:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6413d22dd176b8413685788712ca04583b7321ceec01036dade31515eaaa2c3c`  
		Last Modified: Tue, 11 Jun 2019 00:24:57 GMT  
		Size: 244.6 KB (244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57b7c8e538cad284e8762f3dbd2fcc2e45c11544ec86225c2f17f9e96b6ed62`  
		Last Modified: Tue, 11 Jun 2019 00:25:06 GMT  
		Size: 24.6 MB (24639940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb6fc98add64ea81407e012e6eaaa55517116dafdd7701a0bcab23c658e5a6b`  
		Last Modified: Tue, 11 Jun 2019 00:26:22 GMT  
		Size: 126.1 MB (126083374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18`

```console
$ docker pull mono@sha256:d0059ba682bae11eb203d38e69107eca0cb2197f8c2a7d7769739de9fedd8e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18` - linux; amd64

```console
$ docker pull mono@sha256:93715f9268ede7a37917cf32f6c884a516cb33f25aaca9c77e7c452c133018db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218213687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779214cc4fb7275d8f0d9ddd4948ed0d83546656028ed7b9ce84ebf2d95630d7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:35:46 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 05:35:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:36:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 05:51:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d10193ee2045968e1733c33b76f68fbb8ca70b43332f5fe2d39bf243a72627f`  
		Last Modified: Wed, 08 May 2019 05:52:02 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607059fc72517181151cf26bf29e2f6c239a5627b9d6d594d230cc4e4cbdda3`  
		Last Modified: Wed, 08 May 2019 05:52:13 GMT  
		Size: 55.3 MB (55340122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab6b3163ebebcff04360ac65907e75afaa6cd6b0fb296a5775cd89995c89494`  
		Last Modified: Wed, 08 May 2019 05:53:19 GMT  
		Size: 140.1 MB (140139744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm variant v5

```console
$ docker pull mono@sha256:208d050ed89c72bda42a87f3c10949ccac1de8de0b1b21a0e0426cd14f9be075
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171283422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4f015c8c09ad3d12524b58c49e9d3afa131963fa266e9009f67a258eeaa62b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:41:52 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:42:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:42:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:49:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689a4ffd336a12df3f1237577b57d2e74984bc2a549751cb4b4b4c6f80f5fc61`  
		Last Modified: Tue, 11 Jun 2019 00:49:55 GMT  
		Size: 244.5 KB (244495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a99567e57e55b7045d65abce7b4fe67c622ace82e97ce1bda9b848172b0655`  
		Last Modified: Tue, 11 Jun 2019 00:50:04 GMT  
		Size: 24.3 MB (24280025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682deb4e47c29c8b684fa0b84cfd86da9a4d881ca17d18c7031dd4205a7dfd52`  
		Last Modified: Tue, 11 Jun 2019 00:51:52 GMT  
		Size: 125.6 MB (125603060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm variant v7

```console
$ docker pull mono@sha256:1899d86ebff87d77db82142937e5a520035c93e15bf1ca58a678f16d88acf186
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167362718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66480cf185ce76c34fa1977ea54e606ee3ad3bde1fb6f742d08b2c0ede1fcbb4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:45:08 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:45:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:46:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:51:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738f72657b86be77f587e3e7c9d1de659edafe9f033995b62cd0ed467a29953`  
		Last Modified: Tue, 11 Jun 2019 00:51:59 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1f3b63b1cbcb6bda7458d33f8e62ae2b7406645b97f6909c61ee0af2a8fc9`  
		Last Modified: Tue, 11 Jun 2019 00:52:08 GMT  
		Size: 23.6 MB (23571002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ef13b2e80016d906579ade2d0d1e2174418a7bab22cbb039d40279059d7d53`  
		Last Modified: Tue, 11 Jun 2019 00:53:57 GMT  
		Size: 124.3 MB (124271060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:cead081397873e36b0fae7e409f635cc5026e26b248a9d423be5f2e924df80c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188204224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e0218328810113313813c2f620ad84d943d4643905243a4c29a2b97d9ea53d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:03:51 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 01:04:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:04:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 01:09:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe1465bf5961aa9797becdebf5d3783a679f64bf56c9971d5713272549af06e`  
		Last Modified: Tue, 11 Jun 2019 01:10:37 GMT  
		Size: 244.3 KB (244336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c34be92b243dfa8e742a7580e3e4973d2c4f66c58a8ca896862d06ef906e4`  
		Last Modified: Tue, 11 Jun 2019 01:10:50 GMT  
		Size: 28.2 MB (28231536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6b91dc37968ee531ea9879e591ac35cbfee22cc363bb4bd35dc4bea590325e`  
		Last Modified: Tue, 11 Jun 2019 01:12:53 GMT  
		Size: 139.4 MB (139394562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; 386

```console
$ docker pull mono@sha256:f7449a32197ad1377f1df04c5bce002ce015b4d1760094e37d2c7c3cb12613e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227558489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d534e0bb0bba637b88e33e43f1665eeca475981876df2e10c782c027e28f82b9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:33:18 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 19:33:28 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 19:37:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a010c69826ab91526f486d9223653e4c7cc8e278eae37c184f65904c5b4399`  
		Last Modified: Wed, 08 May 2019 19:38:29 GMT  
		Size: 244.5 KB (244478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32caaa4104865dd83b7c3b014142af0fb1034042464b617add050fb2093a40f`  
		Last Modified: Wed, 08 May 2019 19:38:47 GMT  
		Size: 58.5 MB (58479019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb1c88d8f2051ccbbbc3c184fb88181e6531272259d24faff43806b43e66d2`  
		Last Modified: Wed, 08 May 2019 19:40:12 GMT  
		Size: 145.7 MB (145714149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18` - linux; ppc64le

```console
$ docker pull mono@sha256:0248217f093ac5169a8f44cd0747fcf29843bb4be93db3b35f87e94e7b9b0e1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173695926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2225395a715d2aba967f2ca22e655d47bbb2e20cd3c0bda4f1219e60b30608`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:01:54 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:04:23 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:06:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:24:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aac6ede6db4bd715b1539dc421e8f56cd999f0f9f90050e277bded6f73290e`  
		Last Modified: Tue, 11 Jun 2019 00:25:24 GMT  
		Size: 244.7 KB (244652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0935b1abbaf6616e2ebe60a7736d8d400184ce3a56be723e8c72e2946b1d2066`  
		Last Modified: Tue, 11 Jun 2019 00:25:33 GMT  
		Size: 24.7 MB (24652813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffda89b414c7f16ebb7251646ef9e2cbfd16f64958b4c73b8bd078bc42ad8e8`  
		Last Modified: Tue, 11 Jun 2019 00:27:25 GMT  
		Size: 126.1 MB (126053551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1`

```console
$ docker pull mono@sha256:d0059ba682bae11eb203d38e69107eca0cb2197f8c2a7d7769739de9fedd8e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.1` - linux; amd64

```console
$ docker pull mono@sha256:93715f9268ede7a37917cf32f6c884a516cb33f25aaca9c77e7c452c133018db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218213687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779214cc4fb7275d8f0d9ddd4948ed0d83546656028ed7b9ce84ebf2d95630d7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:35:46 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 05:35:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:36:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 05:51:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d10193ee2045968e1733c33b76f68fbb8ca70b43332f5fe2d39bf243a72627f`  
		Last Modified: Wed, 08 May 2019 05:52:02 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607059fc72517181151cf26bf29e2f6c239a5627b9d6d594d230cc4e4cbdda3`  
		Last Modified: Wed, 08 May 2019 05:52:13 GMT  
		Size: 55.3 MB (55340122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab6b3163ebebcff04360ac65907e75afaa6cd6b0fb296a5775cd89995c89494`  
		Last Modified: Wed, 08 May 2019 05:53:19 GMT  
		Size: 140.1 MB (140139744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; arm variant v5

```console
$ docker pull mono@sha256:208d050ed89c72bda42a87f3c10949ccac1de8de0b1b21a0e0426cd14f9be075
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171283422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4f015c8c09ad3d12524b58c49e9d3afa131963fa266e9009f67a258eeaa62b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:41:52 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:42:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:42:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:49:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689a4ffd336a12df3f1237577b57d2e74984bc2a549751cb4b4b4c6f80f5fc61`  
		Last Modified: Tue, 11 Jun 2019 00:49:55 GMT  
		Size: 244.5 KB (244495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a99567e57e55b7045d65abce7b4fe67c622ace82e97ce1bda9b848172b0655`  
		Last Modified: Tue, 11 Jun 2019 00:50:04 GMT  
		Size: 24.3 MB (24280025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682deb4e47c29c8b684fa0b84cfd86da9a4d881ca17d18c7031dd4205a7dfd52`  
		Last Modified: Tue, 11 Jun 2019 00:51:52 GMT  
		Size: 125.6 MB (125603060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; arm variant v7

```console
$ docker pull mono@sha256:1899d86ebff87d77db82142937e5a520035c93e15bf1ca58a678f16d88acf186
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167362718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66480cf185ce76c34fa1977ea54e606ee3ad3bde1fb6f742d08b2c0ede1fcbb4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:45:08 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:45:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:46:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:51:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738f72657b86be77f587e3e7c9d1de659edafe9f033995b62cd0ed467a29953`  
		Last Modified: Tue, 11 Jun 2019 00:51:59 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1f3b63b1cbcb6bda7458d33f8e62ae2b7406645b97f6909c61ee0af2a8fc9`  
		Last Modified: Tue, 11 Jun 2019 00:52:08 GMT  
		Size: 23.6 MB (23571002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ef13b2e80016d906579ade2d0d1e2174418a7bab22cbb039d40279059d7d53`  
		Last Modified: Tue, 11 Jun 2019 00:53:57 GMT  
		Size: 124.3 MB (124271060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:cead081397873e36b0fae7e409f635cc5026e26b248a9d423be5f2e924df80c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188204224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e0218328810113313813c2f620ad84d943d4643905243a4c29a2b97d9ea53d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:03:51 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 01:04:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:04:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 01:09:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe1465bf5961aa9797becdebf5d3783a679f64bf56c9971d5713272549af06e`  
		Last Modified: Tue, 11 Jun 2019 01:10:37 GMT  
		Size: 244.3 KB (244336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c34be92b243dfa8e742a7580e3e4973d2c4f66c58a8ca896862d06ef906e4`  
		Last Modified: Tue, 11 Jun 2019 01:10:50 GMT  
		Size: 28.2 MB (28231536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6b91dc37968ee531ea9879e591ac35cbfee22cc363bb4bd35dc4bea590325e`  
		Last Modified: Tue, 11 Jun 2019 01:12:53 GMT  
		Size: 139.4 MB (139394562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; 386

```console
$ docker pull mono@sha256:f7449a32197ad1377f1df04c5bce002ce015b4d1760094e37d2c7c3cb12613e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227558489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d534e0bb0bba637b88e33e43f1665eeca475981876df2e10c782c027e28f82b9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:33:18 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 19:33:28 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 19:37:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a010c69826ab91526f486d9223653e4c7cc8e278eae37c184f65904c5b4399`  
		Last Modified: Wed, 08 May 2019 19:38:29 GMT  
		Size: 244.5 KB (244478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32caaa4104865dd83b7c3b014142af0fb1034042464b617add050fb2093a40f`  
		Last Modified: Wed, 08 May 2019 19:38:47 GMT  
		Size: 58.5 MB (58479019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb1c88d8f2051ccbbbc3c184fb88181e6531272259d24faff43806b43e66d2`  
		Last Modified: Wed, 08 May 2019 19:40:12 GMT  
		Size: 145.7 MB (145714149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1` - linux; ppc64le

```console
$ docker pull mono@sha256:0248217f093ac5169a8f44cd0747fcf29843bb4be93db3b35f87e94e7b9b0e1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173695926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2225395a715d2aba967f2ca22e655d47bbb2e20cd3c0bda4f1219e60b30608`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:01:54 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:04:23 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:06:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:24:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aac6ede6db4bd715b1539dc421e8f56cd999f0f9f90050e277bded6f73290e`  
		Last Modified: Tue, 11 Jun 2019 00:25:24 GMT  
		Size: 244.7 KB (244652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0935b1abbaf6616e2ebe60a7736d8d400184ce3a56be723e8c72e2946b1d2066`  
		Last Modified: Tue, 11 Jun 2019 00:25:33 GMT  
		Size: 24.7 MB (24652813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffda89b414c7f16ebb7251646ef9e2cbfd16f64958b4c73b8bd078bc42ad8e8`  
		Last Modified: Tue, 11 Jun 2019 00:27:25 GMT  
		Size: 126.1 MB (126053551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1.3`

```console
$ docker pull mono@sha256:d0059ba682bae11eb203d38e69107eca0cb2197f8c2a7d7769739de9fedd8e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.1.3` - linux; amd64

```console
$ docker pull mono@sha256:93715f9268ede7a37917cf32f6c884a516cb33f25aaca9c77e7c452c133018db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218213687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779214cc4fb7275d8f0d9ddd4948ed0d83546656028ed7b9ce84ebf2d95630d7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:35:46 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 05:35:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:36:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 05:51:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d10193ee2045968e1733c33b76f68fbb8ca70b43332f5fe2d39bf243a72627f`  
		Last Modified: Wed, 08 May 2019 05:52:02 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607059fc72517181151cf26bf29e2f6c239a5627b9d6d594d230cc4e4cbdda3`  
		Last Modified: Wed, 08 May 2019 05:52:13 GMT  
		Size: 55.3 MB (55340122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab6b3163ebebcff04360ac65907e75afaa6cd6b0fb296a5775cd89995c89494`  
		Last Modified: Wed, 08 May 2019 05:53:19 GMT  
		Size: 140.1 MB (140139744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3` - linux; arm variant v5

```console
$ docker pull mono@sha256:208d050ed89c72bda42a87f3c10949ccac1de8de0b1b21a0e0426cd14f9be075
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171283422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff4f015c8c09ad3d12524b58c49e9d3afa131963fa266e9009f67a258eeaa62b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:41:52 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:42:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:42:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:49:05 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689a4ffd336a12df3f1237577b57d2e74984bc2a549751cb4b4b4c6f80f5fc61`  
		Last Modified: Tue, 11 Jun 2019 00:49:55 GMT  
		Size: 244.5 KB (244495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a99567e57e55b7045d65abce7b4fe67c622ace82e97ce1bda9b848172b0655`  
		Last Modified: Tue, 11 Jun 2019 00:50:04 GMT  
		Size: 24.3 MB (24280025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682deb4e47c29c8b684fa0b84cfd86da9a4d881ca17d18c7031dd4205a7dfd52`  
		Last Modified: Tue, 11 Jun 2019 00:51:52 GMT  
		Size: 125.6 MB (125603060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3` - linux; arm variant v7

```console
$ docker pull mono@sha256:1899d86ebff87d77db82142937e5a520035c93e15bf1ca58a678f16d88acf186
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167362718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66480cf185ce76c34fa1977ea54e606ee3ad3bde1fb6f742d08b2c0ede1fcbb4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:45:08 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:45:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:46:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:51:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738f72657b86be77f587e3e7c9d1de659edafe9f033995b62cd0ed467a29953`  
		Last Modified: Tue, 11 Jun 2019 00:51:59 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1f3b63b1cbcb6bda7458d33f8e62ae2b7406645b97f6909c61ee0af2a8fc9`  
		Last Modified: Tue, 11 Jun 2019 00:52:08 GMT  
		Size: 23.6 MB (23571002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ef13b2e80016d906579ade2d0d1e2174418a7bab22cbb039d40279059d7d53`  
		Last Modified: Tue, 11 Jun 2019 00:53:57 GMT  
		Size: 124.3 MB (124271060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:cead081397873e36b0fae7e409f635cc5026e26b248a9d423be5f2e924df80c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188204224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e0218328810113313813c2f620ad84d943d4643905243a4c29a2b97d9ea53d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:03:51 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 01:04:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:04:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 01:09:43 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe1465bf5961aa9797becdebf5d3783a679f64bf56c9971d5713272549af06e`  
		Last Modified: Tue, 11 Jun 2019 01:10:37 GMT  
		Size: 244.3 KB (244336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c34be92b243dfa8e742a7580e3e4973d2c4f66c58a8ca896862d06ef906e4`  
		Last Modified: Tue, 11 Jun 2019 01:10:50 GMT  
		Size: 28.2 MB (28231536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6b91dc37968ee531ea9879e591ac35cbfee22cc363bb4bd35dc4bea590325e`  
		Last Modified: Tue, 11 Jun 2019 01:12:53 GMT  
		Size: 139.4 MB (139394562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3` - linux; 386

```console
$ docker pull mono@sha256:f7449a32197ad1377f1df04c5bce002ce015b4d1760094e37d2c7c3cb12613e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227558489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d534e0bb0bba637b88e33e43f1665eeca475981876df2e10c782c027e28f82b9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:33:18 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 19:33:28 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 19:37:45 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a010c69826ab91526f486d9223653e4c7cc8e278eae37c184f65904c5b4399`  
		Last Modified: Wed, 08 May 2019 19:38:29 GMT  
		Size: 244.5 KB (244478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32caaa4104865dd83b7c3b014142af0fb1034042464b617add050fb2093a40f`  
		Last Modified: Wed, 08 May 2019 19:38:47 GMT  
		Size: 58.5 MB (58479019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb1c88d8f2051ccbbbc3c184fb88181e6531272259d24faff43806b43e66d2`  
		Last Modified: Wed, 08 May 2019 19:40:12 GMT  
		Size: 145.7 MB (145714149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3` - linux; ppc64le

```console
$ docker pull mono@sha256:0248217f093ac5169a8f44cd0747fcf29843bb4be93db3b35f87e94e7b9b0e1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173695926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2225395a715d2aba967f2ca22e655d47bbb2e20cd3c0bda4f1219e60b30608`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:01:54 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:04:23 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:06:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:24:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aac6ede6db4bd715b1539dc421e8f56cd999f0f9f90050e277bded6f73290e`  
		Last Modified: Tue, 11 Jun 2019 00:25:24 GMT  
		Size: 244.7 KB (244652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0935b1abbaf6616e2ebe60a7736d8d400184ce3a56be723e8c72e2946b1d2066`  
		Last Modified: Tue, 11 Jun 2019 00:25:33 GMT  
		Size: 24.7 MB (24652813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffda89b414c7f16ebb7251646ef9e2cbfd16f64958b4c73b8bd078bc42ad8e8`  
		Last Modified: Tue, 11 Jun 2019 00:27:25 GMT  
		Size: 126.1 MB (126053551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1.3-slim`

```console
$ docker pull mono@sha256:52d896c3e1b589a3d0e0f668336bc7f033acf8cd759e89ff3b0815c9559506f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.1.3-slim` - linux; amd64

```console
$ docker pull mono@sha256:48771e28d509576c81f49d12dd7ac1917d7a8d47ea49852774b1c9f47ff3414a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78073943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f68f0521dab8295ac668752c6eb2f645e5d5499467138f129f7c413749ccfd6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:35:46 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 05:35:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:36:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d10193ee2045968e1733c33b76f68fbb8ca70b43332f5fe2d39bf243a72627f`  
		Last Modified: Wed, 08 May 2019 05:52:02 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607059fc72517181151cf26bf29e2f6c239a5627b9d6d594d230cc4e4cbdda3`  
		Last Modified: Wed, 08 May 2019 05:52:13 GMT  
		Size: 55.3 MB (55340122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:d63b77eb6864de2d4e2a962ea1676ed0c78c7a949f0e494d984a11fe7c90e8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45680362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e024f1c6fd914c4de8fce5fdb21b99ef094adc6395474221b4a307a8a74c95`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:41:52 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:42:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:42:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689a4ffd336a12df3f1237577b57d2e74984bc2a549751cb4b4b4c6f80f5fc61`  
		Last Modified: Tue, 11 Jun 2019 00:49:55 GMT  
		Size: 244.5 KB (244495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a99567e57e55b7045d65abce7b4fe67c622ace82e97ce1bda9b848172b0655`  
		Last Modified: Tue, 11 Jun 2019 00:50:04 GMT  
		Size: 24.3 MB (24280025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:39261a8ed2c33b242e1ab640eb0428bd9d4f8acb511162043aa49f24ff11cd18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43091658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70f8535acd94264bb574a6376fcef6a020447b06abff7aec0d09f58a399c200`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:45:08 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:45:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:46:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738f72657b86be77f587e3e7c9d1de659edafe9f033995b62cd0ed467a29953`  
		Last Modified: Tue, 11 Jun 2019 00:51:59 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1f3b63b1cbcb6bda7458d33f8e62ae2b7406645b97f6909c61ee0af2a8fc9`  
		Last Modified: Tue, 11 Jun 2019 00:52:08 GMT  
		Size: 23.6 MB (23571002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:9a1eb863ee7fce57ad79a90cc23248d65c9727e58b053717d210db0235bf21d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48809662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:879816e47598d764c03b8a995a15a6b002bc22145aa87edcf23837aca6fdc70f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:03:51 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 01:04:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:04:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe1465bf5961aa9797becdebf5d3783a679f64bf56c9971d5713272549af06e`  
		Last Modified: Tue, 11 Jun 2019 01:10:37 GMT  
		Size: 244.3 KB (244336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c34be92b243dfa8e742a7580e3e4973d2c4f66c58a8ca896862d06ef906e4`  
		Last Modified: Tue, 11 Jun 2019 01:10:50 GMT  
		Size: 28.2 MB (28231536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3-slim` - linux; 386

```console
$ docker pull mono@sha256:296a086850bc3d0074494119d16d143d1e12fe80b3cf83b853a23ce6e2245708
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81844340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ca54eec9b010be7bbc79ec3235e45b5e48c869cbde363ea9107ae3c76d4ade`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:33:18 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 19:33:28 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a010c69826ab91526f486d9223653e4c7cc8e278eae37c184f65904c5b4399`  
		Last Modified: Wed, 08 May 2019 19:38:29 GMT  
		Size: 244.5 KB (244478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32caaa4104865dd83b7c3b014142af0fb1034042464b617add050fb2093a40f`  
		Last Modified: Wed, 08 May 2019 19:38:47 GMT  
		Size: 58.5 MB (58479019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1.3-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:733c100b9c11ec939ecd6cc7e0ba4c617d1498e4bac3fe86264af611b3b76402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47642375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f8509965acad056811ca1a6780bee59a834ba44b0d97dc09c78228db9e81c5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:01:54 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:04:23 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:06:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aac6ede6db4bd715b1539dc421e8f56cd999f0f9f90050e277bded6f73290e`  
		Last Modified: Tue, 11 Jun 2019 00:25:24 GMT  
		Size: 244.7 KB (244652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0935b1abbaf6616e2ebe60a7736d8d400184ce3a56be723e8c72e2946b1d2066`  
		Last Modified: Tue, 11 Jun 2019 00:25:33 GMT  
		Size: 24.7 MB (24652813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18.1-slim`

```console
$ docker pull mono@sha256:52d896c3e1b589a3d0e0f668336bc7f033acf8cd759e89ff3b0815c9559506f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:48771e28d509576c81f49d12dd7ac1917d7a8d47ea49852774b1c9f47ff3414a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78073943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f68f0521dab8295ac668752c6eb2f645e5d5499467138f129f7c413749ccfd6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:35:46 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 05:35:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:36:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d10193ee2045968e1733c33b76f68fbb8ca70b43332f5fe2d39bf243a72627f`  
		Last Modified: Wed, 08 May 2019 05:52:02 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607059fc72517181151cf26bf29e2f6c239a5627b9d6d594d230cc4e4cbdda3`  
		Last Modified: Wed, 08 May 2019 05:52:13 GMT  
		Size: 55.3 MB (55340122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:d63b77eb6864de2d4e2a962ea1676ed0c78c7a949f0e494d984a11fe7c90e8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45680362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e024f1c6fd914c4de8fce5fdb21b99ef094adc6395474221b4a307a8a74c95`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:41:52 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:42:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:42:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689a4ffd336a12df3f1237577b57d2e74984bc2a549751cb4b4b4c6f80f5fc61`  
		Last Modified: Tue, 11 Jun 2019 00:49:55 GMT  
		Size: 244.5 KB (244495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a99567e57e55b7045d65abce7b4fe67c622ace82e97ce1bda9b848172b0655`  
		Last Modified: Tue, 11 Jun 2019 00:50:04 GMT  
		Size: 24.3 MB (24280025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:39261a8ed2c33b242e1ab640eb0428bd9d4f8acb511162043aa49f24ff11cd18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43091658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70f8535acd94264bb574a6376fcef6a020447b06abff7aec0d09f58a399c200`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:45:08 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:45:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:46:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738f72657b86be77f587e3e7c9d1de659edafe9f033995b62cd0ed467a29953`  
		Last Modified: Tue, 11 Jun 2019 00:51:59 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1f3b63b1cbcb6bda7458d33f8e62ae2b7406645b97f6909c61ee0af2a8fc9`  
		Last Modified: Tue, 11 Jun 2019 00:52:08 GMT  
		Size: 23.6 MB (23571002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:9a1eb863ee7fce57ad79a90cc23248d65c9727e58b053717d210db0235bf21d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48809662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:879816e47598d764c03b8a995a15a6b002bc22145aa87edcf23837aca6fdc70f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:03:51 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 01:04:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:04:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe1465bf5961aa9797becdebf5d3783a679f64bf56c9971d5713272549af06e`  
		Last Modified: Tue, 11 Jun 2019 01:10:37 GMT  
		Size: 244.3 KB (244336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c34be92b243dfa8e742a7580e3e4973d2c4f66c58a8ca896862d06ef906e4`  
		Last Modified: Tue, 11 Jun 2019 01:10:50 GMT  
		Size: 28.2 MB (28231536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; 386

```console
$ docker pull mono@sha256:296a086850bc3d0074494119d16d143d1e12fe80b3cf83b853a23ce6e2245708
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81844340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ca54eec9b010be7bbc79ec3235e45b5e48c869cbde363ea9107ae3c76d4ade`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:33:18 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 19:33:28 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a010c69826ab91526f486d9223653e4c7cc8e278eae37c184f65904c5b4399`  
		Last Modified: Wed, 08 May 2019 19:38:29 GMT  
		Size: 244.5 KB (244478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32caaa4104865dd83b7c3b014142af0fb1034042464b617add050fb2093a40f`  
		Last Modified: Wed, 08 May 2019 19:38:47 GMT  
		Size: 58.5 MB (58479019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18.1-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:733c100b9c11ec939ecd6cc7e0ba4c617d1498e4bac3fe86264af611b3b76402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47642375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f8509965acad056811ca1a6780bee59a834ba44b0d97dc09c78228db9e81c5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:01:54 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:04:23 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:06:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aac6ede6db4bd715b1539dc421e8f56cd999f0f9f90050e277bded6f73290e`  
		Last Modified: Tue, 11 Jun 2019 00:25:24 GMT  
		Size: 244.7 KB (244652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0935b1abbaf6616e2ebe60a7736d8d400184ce3a56be723e8c72e2946b1d2066`  
		Last Modified: Tue, 11 Jun 2019 00:25:33 GMT  
		Size: 24.7 MB (24652813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.18-slim`

```console
$ docker pull mono@sha256:52d896c3e1b589a3d0e0f668336bc7f033acf8cd759e89ff3b0815c9559506f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.18-slim` - linux; amd64

```console
$ docker pull mono@sha256:48771e28d509576c81f49d12dd7ac1917d7a8d47ea49852774b1c9f47ff3414a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78073943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f68f0521dab8295ac668752c6eb2f645e5d5499467138f129f7c413749ccfd6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:35:46 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 05:35:55 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:36:23 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d10193ee2045968e1733c33b76f68fbb8ca70b43332f5fe2d39bf243a72627f`  
		Last Modified: Wed, 08 May 2019 05:52:02 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607059fc72517181151cf26bf29e2f6c239a5627b9d6d594d230cc4e4cbdda3`  
		Last Modified: Wed, 08 May 2019 05:52:13 GMT  
		Size: 55.3 MB (55340122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:d63b77eb6864de2d4e2a962ea1676ed0c78c7a949f0e494d984a11fe7c90e8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45680362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e024f1c6fd914c4de8fce5fdb21b99ef094adc6395474221b4a307a8a74c95`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:41:52 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:42:12 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:42:55 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689a4ffd336a12df3f1237577b57d2e74984bc2a549751cb4b4b4c6f80f5fc61`  
		Last Modified: Tue, 11 Jun 2019 00:49:55 GMT  
		Size: 244.5 KB (244495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a99567e57e55b7045d65abce7b4fe67c622ace82e97ce1bda9b848172b0655`  
		Last Modified: Tue, 11 Jun 2019 00:50:04 GMT  
		Size: 24.3 MB (24280025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:39261a8ed2c33b242e1ab640eb0428bd9d4f8acb511162043aa49f24ff11cd18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43091658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70f8535acd94264bb574a6376fcef6a020447b06abff7aec0d09f58a399c200`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:45:08 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:45:25 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:46:03 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c738f72657b86be77f587e3e7c9d1de659edafe9f033995b62cd0ed467a29953`  
		Last Modified: Tue, 11 Jun 2019 00:51:59 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1f3b63b1cbcb6bda7458d33f8e62ae2b7406645b97f6909c61ee0af2a8fc9`  
		Last Modified: Tue, 11 Jun 2019 00:52:08 GMT  
		Size: 23.6 MB (23571002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:9a1eb863ee7fce57ad79a90cc23248d65c9727e58b053717d210db0235bf21d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48809662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:879816e47598d764c03b8a995a15a6b002bc22145aa87edcf23837aca6fdc70f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:03:51 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 01:04:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:04:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe1465bf5961aa9797becdebf5d3783a679f64bf56c9971d5713272549af06e`  
		Last Modified: Tue, 11 Jun 2019 01:10:37 GMT  
		Size: 244.3 KB (244336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036c34be92b243dfa8e742a7580e3e4973d2c4f66c58a8ca896862d06ef906e4`  
		Last Modified: Tue, 11 Jun 2019 01:10:50 GMT  
		Size: 28.2 MB (28231536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; 386

```console
$ docker pull mono@sha256:296a086850bc3d0074494119d16d143d1e12fe80b3cf83b853a23ce6e2245708
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81844340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ca54eec9b010be7bbc79ec3235e45b5e48c869cbde363ea9107ae3c76d4ade`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:33:18 GMT
ENV MONO_VERSION=5.18.1.3
# Wed, 08 May 2019 19:33:28 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:56 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a010c69826ab91526f486d9223653e4c7cc8e278eae37c184f65904c5b4399`  
		Last Modified: Wed, 08 May 2019 19:38:29 GMT  
		Size: 244.5 KB (244478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32caaa4104865dd83b7c3b014142af0fb1034042464b617add050fb2093a40f`  
		Last Modified: Wed, 08 May 2019 19:38:47 GMT  
		Size: 58.5 MB (58479019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.18-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:733c100b9c11ec939ecd6cc7e0ba4c617d1498e4bac3fe86264af611b3b76402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47642375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09f8509965acad056811ca1a6780bee59a834ba44b0d97dc09c78228db9e81c5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:01:54 GMT
ENV MONO_VERSION=5.18.1.3
# Tue, 11 Jun 2019 00:04:23 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:06:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aac6ede6db4bd715b1539dc421e8f56cd999f0f9f90050e277bded6f73290e`  
		Last Modified: Tue, 11 Jun 2019 00:25:24 GMT  
		Size: 244.7 KB (244652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0935b1abbaf6616e2ebe60a7736d8d400184ce3a56be723e8c72e2946b1d2066`  
		Last Modified: Tue, 11 Jun 2019 00:25:33 GMT  
		Size: 24.7 MB (24652813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20`

```console
$ docker pull mono@sha256:7ae91528be5c00951f9f5e2c9a337b29167ae354f997dbf94e2faad73428f72d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.20` - linux; amd64

```console
$ docker pull mono@sha256:964322bdd837fa4ff035b691b9478244d902b2af918bff6a4b284df0d38f0a7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218647390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831a16f6ca106650b5873500bf8dae27395879120e93c70d791aafdd7683e9b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:34:54 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 05:35:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:35:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 05:44:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83c8821ccbf9dc776e73e062825c10f7427b8cd11ca429e42caf4930bd27ca7`  
		Last Modified: Wed, 08 May 2019 05:51:46 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779befe89074617e69193a8a610a57ddf4d6d0bbbe99fdac3cc3be7d8fb4afb`  
		Last Modified: Wed, 08 May 2019 05:51:56 GMT  
		Size: 55.5 MB (55512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d12fd312caf439f1778660fe437aa9144a84d1501feee05da6803140cd3ad82`  
		Last Modified: Wed, 08 May 2019 05:52:47 GMT  
		Size: 140.4 MB (140400869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20` - linux; arm variant v5

```console
$ docker pull mono@sha256:a6265bdd117a8ec5164eba6887439cbd97a797fa84e625be1b653b4db70fed10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171305250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a36469316fd8998152efaffc63007b59b61c73f8b7297d16b9fb3501a134807`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:37 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:40:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:41:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:45:51 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b24f837c0138cf9969ea27f515af55f3caabc3d24f1d7a43613c9273042fb`  
		Last Modified: Tue, 11 Jun 2019 00:49:37 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0352124a6be6ac0624313e86f8d7e31d34592b858672b01d94c4fc42a40d8`  
		Last Modified: Tue, 11 Jun 2019 00:49:46 GMT  
		Size: 24.3 MB (24264980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b78f3c9f8cbbd728f7dac847a26c73fac15acba9cd1bf736ad7c29e243554f8`  
		Last Modified: Tue, 11 Jun 2019 00:50:55 GMT  
		Size: 125.6 MB (125639945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20` - linux; arm variant v7

```console
$ docker pull mono@sha256:ca9a180fe9ebcee6add38375e3664403471915b1b695ff49c4c9006d4e3f9185
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167378271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eac13718208848d89d7506285df7e7a8dc1fa707810c8de5cf22fed46570fcc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:43:51 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:44:10 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:44:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:48:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df93aef30eda5aaa697d32a789a4558033de73bfdabc57f0755d6d4499a3ce`  
		Last Modified: Tue, 11 Jun 2019 00:51:40 GMT  
		Size: 244.5 KB (244486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf58e9ba07395bc33d02cbae2aeabd6b618a931e068f8cacbe1e47295c990d`  
		Last Modified: Tue, 11 Jun 2019 00:51:49 GMT  
		Size: 23.6 MB (23558139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b778fdeed0411539669b5114a89bdb8fce4806a0c16059c0765704d9d5514ad1`  
		Last Modified: Tue, 11 Jun 2019 00:53:01 GMT  
		Size: 124.3 MB (124299461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:39cb0b52e730e689adcd87d930e471e8769ab17a085a3668c3efb7a6bbf9d989
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188184054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ff9733dc4ca63921367cc6fce2aa7c62af5b8d6e1e81ee96c729ceeeded384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:02:47 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 01:03:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:03:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 01:07:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957e51c87206f5141ae0b7be005a0462ede462d0540f679e3550d01a9b55c51`  
		Last Modified: Tue, 11 Jun 2019 01:10:05 GMT  
		Size: 244.3 KB (244337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbe6c0bf2cdb4fcd63c731636fe37c2a5c71e081ef97667b582c97e1a97bb`  
		Last Modified: Tue, 11 Jun 2019 01:10:15 GMT  
		Size: 28.2 MB (28152527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15889e71ae788f5aa7adb7aa69ae438c302482db2dfb76175b10706ad55be583`  
		Last Modified: Tue, 11 Jun 2019 01:11:52 GMT  
		Size: 139.5 MB (139453400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20` - linux; 386

```console
$ docker pull mono@sha256:69fab949d251c6d9983c5caacbd73b4d9e860008e3644a02c2c3cfa18c360f56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228146260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7b0006b5b1b85f30dc8a970d17a7c492bc809b6ed6dce2161503345b63581c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:33 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 19:32:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 19:35:47 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c295dce532aae39ef9a7dc0a20f25a3cc82c42034e0ba67c62a523e2537efb5a`  
		Last Modified: Wed, 08 May 2019 19:38:06 GMT  
		Size: 244.5 KB (244494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fe2d42b9589843ed6a73d2ac9313727475bfd85a84d73e7a1a52c150efd33`  
		Last Modified: Wed, 08 May 2019 19:38:20 GMT  
		Size: 58.5 MB (58544853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3ee1131727013afba87ef1f4c64805a24a7fe2906c5507d7fd4bb4c11c6144`  
		Last Modified: Wed, 08 May 2019 19:39:29 GMT  
		Size: 146.2 MB (146236070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20` - linux; ppc64le

```console
$ docker pull mono@sha256:a7c9e19eb169fdbf833b3b8ec9c772ac760907edc0854741a50b0488ad6f15a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173712799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e33910605fa94eb0f8e2bd33cc9e075d729944c3facee462bedd7dd7e99f3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:57:46 GMT
ENV MONO_VERSION=5.20.1.19
# Mon, 10 Jun 2019 23:59:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:13:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6413d22dd176b8413685788712ca04583b7321ceec01036dade31515eaaa2c3c`  
		Last Modified: Tue, 11 Jun 2019 00:24:57 GMT  
		Size: 244.6 KB (244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57b7c8e538cad284e8762f3dbd2fcc2e45c11544ec86225c2f17f9e96b6ed62`  
		Last Modified: Tue, 11 Jun 2019 00:25:06 GMT  
		Size: 24.6 MB (24639940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb6fc98add64ea81407e012e6eaaa55517116dafdd7701a0bcab23c658e5a6b`  
		Last Modified: Tue, 11 Jun 2019 00:26:22 GMT  
		Size: 126.1 MB (126083374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1`

```console
$ docker pull mono@sha256:7ae91528be5c00951f9f5e2c9a337b29167ae354f997dbf94e2faad73428f72d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.20.1` - linux; amd64

```console
$ docker pull mono@sha256:964322bdd837fa4ff035b691b9478244d902b2af918bff6a4b284df0d38f0a7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218647390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831a16f6ca106650b5873500bf8dae27395879120e93c70d791aafdd7683e9b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:34:54 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 05:35:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:35:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 05:44:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83c8821ccbf9dc776e73e062825c10f7427b8cd11ca429e42caf4930bd27ca7`  
		Last Modified: Wed, 08 May 2019 05:51:46 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779befe89074617e69193a8a610a57ddf4d6d0bbbe99fdac3cc3be7d8fb4afb`  
		Last Modified: Wed, 08 May 2019 05:51:56 GMT  
		Size: 55.5 MB (55512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d12fd312caf439f1778660fe437aa9144a84d1501feee05da6803140cd3ad82`  
		Last Modified: Wed, 08 May 2019 05:52:47 GMT  
		Size: 140.4 MB (140400869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1` - linux; arm variant v5

```console
$ docker pull mono@sha256:a6265bdd117a8ec5164eba6887439cbd97a797fa84e625be1b653b4db70fed10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171305250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a36469316fd8998152efaffc63007b59b61c73f8b7297d16b9fb3501a134807`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:37 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:40:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:41:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:45:51 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b24f837c0138cf9969ea27f515af55f3caabc3d24f1d7a43613c9273042fb`  
		Last Modified: Tue, 11 Jun 2019 00:49:37 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0352124a6be6ac0624313e86f8d7e31d34592b858672b01d94c4fc42a40d8`  
		Last Modified: Tue, 11 Jun 2019 00:49:46 GMT  
		Size: 24.3 MB (24264980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b78f3c9f8cbbd728f7dac847a26c73fac15acba9cd1bf736ad7c29e243554f8`  
		Last Modified: Tue, 11 Jun 2019 00:50:55 GMT  
		Size: 125.6 MB (125639945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1` - linux; arm variant v7

```console
$ docker pull mono@sha256:ca9a180fe9ebcee6add38375e3664403471915b1b695ff49c4c9006d4e3f9185
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167378271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eac13718208848d89d7506285df7e7a8dc1fa707810c8de5cf22fed46570fcc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:43:51 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:44:10 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:44:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:48:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df93aef30eda5aaa697d32a789a4558033de73bfdabc57f0755d6d4499a3ce`  
		Last Modified: Tue, 11 Jun 2019 00:51:40 GMT  
		Size: 244.5 KB (244486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf58e9ba07395bc33d02cbae2aeabd6b618a931e068f8cacbe1e47295c990d`  
		Last Modified: Tue, 11 Jun 2019 00:51:49 GMT  
		Size: 23.6 MB (23558139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b778fdeed0411539669b5114a89bdb8fce4806a0c16059c0765704d9d5514ad1`  
		Last Modified: Tue, 11 Jun 2019 00:53:01 GMT  
		Size: 124.3 MB (124299461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:39cb0b52e730e689adcd87d930e471e8769ab17a085a3668c3efb7a6bbf9d989
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188184054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ff9733dc4ca63921367cc6fce2aa7c62af5b8d6e1e81ee96c729ceeeded384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:02:47 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 01:03:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:03:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 01:07:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957e51c87206f5141ae0b7be005a0462ede462d0540f679e3550d01a9b55c51`  
		Last Modified: Tue, 11 Jun 2019 01:10:05 GMT  
		Size: 244.3 KB (244337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbe6c0bf2cdb4fcd63c731636fe37c2a5c71e081ef97667b582c97e1a97bb`  
		Last Modified: Tue, 11 Jun 2019 01:10:15 GMT  
		Size: 28.2 MB (28152527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15889e71ae788f5aa7adb7aa69ae438c302482db2dfb76175b10706ad55be583`  
		Last Modified: Tue, 11 Jun 2019 01:11:52 GMT  
		Size: 139.5 MB (139453400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1` - linux; 386

```console
$ docker pull mono@sha256:69fab949d251c6d9983c5caacbd73b4d9e860008e3644a02c2c3cfa18c360f56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228146260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7b0006b5b1b85f30dc8a970d17a7c492bc809b6ed6dce2161503345b63581c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:33 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 19:32:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 19:35:47 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c295dce532aae39ef9a7dc0a20f25a3cc82c42034e0ba67c62a523e2537efb5a`  
		Last Modified: Wed, 08 May 2019 19:38:06 GMT  
		Size: 244.5 KB (244494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fe2d42b9589843ed6a73d2ac9313727475bfd85a84d73e7a1a52c150efd33`  
		Last Modified: Wed, 08 May 2019 19:38:20 GMT  
		Size: 58.5 MB (58544853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3ee1131727013afba87ef1f4c64805a24a7fe2906c5507d7fd4bb4c11c6144`  
		Last Modified: Wed, 08 May 2019 19:39:29 GMT  
		Size: 146.2 MB (146236070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1` - linux; ppc64le

```console
$ docker pull mono@sha256:a7c9e19eb169fdbf833b3b8ec9c772ac760907edc0854741a50b0488ad6f15a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173712799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e33910605fa94eb0f8e2bd33cc9e075d729944c3facee462bedd7dd7e99f3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:57:46 GMT
ENV MONO_VERSION=5.20.1.19
# Mon, 10 Jun 2019 23:59:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:13:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6413d22dd176b8413685788712ca04583b7321ceec01036dade31515eaaa2c3c`  
		Last Modified: Tue, 11 Jun 2019 00:24:57 GMT  
		Size: 244.6 KB (244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57b7c8e538cad284e8762f3dbd2fcc2e45c11544ec86225c2f17f9e96b6ed62`  
		Last Modified: Tue, 11 Jun 2019 00:25:06 GMT  
		Size: 24.6 MB (24639940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb6fc98add64ea81407e012e6eaaa55517116dafdd7701a0bcab23c658e5a6b`  
		Last Modified: Tue, 11 Jun 2019 00:26:22 GMT  
		Size: 126.1 MB (126083374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1.19`

```console
$ docker pull mono@sha256:7ae91528be5c00951f9f5e2c9a337b29167ae354f997dbf94e2faad73428f72d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.20.1.19` - linux; amd64

```console
$ docker pull mono@sha256:964322bdd837fa4ff035b691b9478244d902b2af918bff6a4b284df0d38f0a7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218647390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831a16f6ca106650b5873500bf8dae27395879120e93c70d791aafdd7683e9b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:34:54 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 05:35:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:35:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 05:44:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83c8821ccbf9dc776e73e062825c10f7427b8cd11ca429e42caf4930bd27ca7`  
		Last Modified: Wed, 08 May 2019 05:51:46 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779befe89074617e69193a8a610a57ddf4d6d0bbbe99fdac3cc3be7d8fb4afb`  
		Last Modified: Wed, 08 May 2019 05:51:56 GMT  
		Size: 55.5 MB (55512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d12fd312caf439f1778660fe437aa9144a84d1501feee05da6803140cd3ad82`  
		Last Modified: Wed, 08 May 2019 05:52:47 GMT  
		Size: 140.4 MB (140400869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19` - linux; arm variant v5

```console
$ docker pull mono@sha256:a6265bdd117a8ec5164eba6887439cbd97a797fa84e625be1b653b4db70fed10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171305250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a36469316fd8998152efaffc63007b59b61c73f8b7297d16b9fb3501a134807`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:37 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:40:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:41:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:45:51 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b24f837c0138cf9969ea27f515af55f3caabc3d24f1d7a43613c9273042fb`  
		Last Modified: Tue, 11 Jun 2019 00:49:37 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0352124a6be6ac0624313e86f8d7e31d34592b858672b01d94c4fc42a40d8`  
		Last Modified: Tue, 11 Jun 2019 00:49:46 GMT  
		Size: 24.3 MB (24264980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b78f3c9f8cbbd728f7dac847a26c73fac15acba9cd1bf736ad7c29e243554f8`  
		Last Modified: Tue, 11 Jun 2019 00:50:55 GMT  
		Size: 125.6 MB (125639945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19` - linux; arm variant v7

```console
$ docker pull mono@sha256:ca9a180fe9ebcee6add38375e3664403471915b1b695ff49c4c9006d4e3f9185
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167378271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eac13718208848d89d7506285df7e7a8dc1fa707810c8de5cf22fed46570fcc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:43:51 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:44:10 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:44:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:48:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df93aef30eda5aaa697d32a789a4558033de73bfdabc57f0755d6d4499a3ce`  
		Last Modified: Tue, 11 Jun 2019 00:51:40 GMT  
		Size: 244.5 KB (244486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf58e9ba07395bc33d02cbae2aeabd6b618a931e068f8cacbe1e47295c990d`  
		Last Modified: Tue, 11 Jun 2019 00:51:49 GMT  
		Size: 23.6 MB (23558139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b778fdeed0411539669b5114a89bdb8fce4806a0c16059c0765704d9d5514ad1`  
		Last Modified: Tue, 11 Jun 2019 00:53:01 GMT  
		Size: 124.3 MB (124299461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:39cb0b52e730e689adcd87d930e471e8769ab17a085a3668c3efb7a6bbf9d989
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188184054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ff9733dc4ca63921367cc6fce2aa7c62af5b8d6e1e81ee96c729ceeeded384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:02:47 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 01:03:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:03:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 01:07:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957e51c87206f5141ae0b7be005a0462ede462d0540f679e3550d01a9b55c51`  
		Last Modified: Tue, 11 Jun 2019 01:10:05 GMT  
		Size: 244.3 KB (244337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbe6c0bf2cdb4fcd63c731636fe37c2a5c71e081ef97667b582c97e1a97bb`  
		Last Modified: Tue, 11 Jun 2019 01:10:15 GMT  
		Size: 28.2 MB (28152527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15889e71ae788f5aa7adb7aa69ae438c302482db2dfb76175b10706ad55be583`  
		Last Modified: Tue, 11 Jun 2019 01:11:52 GMT  
		Size: 139.5 MB (139453400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19` - linux; 386

```console
$ docker pull mono@sha256:69fab949d251c6d9983c5caacbd73b4d9e860008e3644a02c2c3cfa18c360f56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228146260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7b0006b5b1b85f30dc8a970d17a7c492bc809b6ed6dce2161503345b63581c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:33 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 19:32:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 19:35:47 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c295dce532aae39ef9a7dc0a20f25a3cc82c42034e0ba67c62a523e2537efb5a`  
		Last Modified: Wed, 08 May 2019 19:38:06 GMT  
		Size: 244.5 KB (244494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fe2d42b9589843ed6a73d2ac9313727475bfd85a84d73e7a1a52c150efd33`  
		Last Modified: Wed, 08 May 2019 19:38:20 GMT  
		Size: 58.5 MB (58544853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3ee1131727013afba87ef1f4c64805a24a7fe2906c5507d7fd4bb4c11c6144`  
		Last Modified: Wed, 08 May 2019 19:39:29 GMT  
		Size: 146.2 MB (146236070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19` - linux; ppc64le

```console
$ docker pull mono@sha256:a7c9e19eb169fdbf833b3b8ec9c772ac760907edc0854741a50b0488ad6f15a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173712799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e33910605fa94eb0f8e2bd33cc9e075d729944c3facee462bedd7dd7e99f3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:57:46 GMT
ENV MONO_VERSION=5.20.1.19
# Mon, 10 Jun 2019 23:59:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:13:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6413d22dd176b8413685788712ca04583b7321ceec01036dade31515eaaa2c3c`  
		Last Modified: Tue, 11 Jun 2019 00:24:57 GMT  
		Size: 244.6 KB (244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57b7c8e538cad284e8762f3dbd2fcc2e45c11544ec86225c2f17f9e96b6ed62`  
		Last Modified: Tue, 11 Jun 2019 00:25:06 GMT  
		Size: 24.6 MB (24639940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb6fc98add64ea81407e012e6eaaa55517116dafdd7701a0bcab23c658e5a6b`  
		Last Modified: Tue, 11 Jun 2019 00:26:22 GMT  
		Size: 126.1 MB (126083374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1.19-slim`

```console
$ docker pull mono@sha256:9c3e09235feb99eda464dd27c04164a0066bd22d7015da0e04c07fc39cbb7280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.20.1.19-slim` - linux; amd64

```console
$ docker pull mono@sha256:e90a4138fb0beae62af65b0f475c820fb7b7e591d0351ffc6f9e042c7fb5fb38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78246521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37ca09efd41b63eab5897dc528cb5db9df9021d47864195d04177b03655d701`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:34:54 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 05:35:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:35:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83c8821ccbf9dc776e73e062825c10f7427b8cd11ca429e42caf4930bd27ca7`  
		Last Modified: Wed, 08 May 2019 05:51:46 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779befe89074617e69193a8a610a57ddf4d6d0bbbe99fdac3cc3be7d8fb4afb`  
		Last Modified: Wed, 08 May 2019 05:51:56 GMT  
		Size: 55.5 MB (55512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:3e4d5ab41833cc635a0126b6ae7b10d82cc66cd2d3aa90bfa350b99471d09ae7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45665305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e410b2b8369d30b687b72e6a24e8abb5609e0ab0b61381d4df73e7f118d67a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:37 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:40:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:41:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b24f837c0138cf9969ea27f515af55f3caabc3d24f1d7a43613c9273042fb`  
		Last Modified: Tue, 11 Jun 2019 00:49:37 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0352124a6be6ac0624313e86f8d7e31d34592b858672b01d94c4fc42a40d8`  
		Last Modified: Tue, 11 Jun 2019 00:49:46 GMT  
		Size: 24.3 MB (24264980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:82cf23d50f20a9f8eb8f5f86bf3563e0a0c384c5089dbb1eedef13d1e7cda75b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43078810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c357574782f84cddd7c3d0bb034f7eb0be9508d815d6ccbadace70faab46eb08`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:43:51 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:44:10 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:44:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df93aef30eda5aaa697d32a789a4558033de73bfdabc57f0755d6d4499a3ce`  
		Last Modified: Tue, 11 Jun 2019 00:51:40 GMT  
		Size: 244.5 KB (244486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf58e9ba07395bc33d02cbae2aeabd6b618a931e068f8cacbe1e47295c990d`  
		Last Modified: Tue, 11 Jun 2019 00:51:49 GMT  
		Size: 23.6 MB (23558139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c445468dab9b32269aced0dbe889d2291b5014b5afdeae10a96c1baeb5721546
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48730654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46dbc47337f49838b34f8de136b9233d793c4ccf07bd57e5fd03863d0662ce4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:02:47 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 01:03:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:03:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957e51c87206f5141ae0b7be005a0462ede462d0540f679e3550d01a9b55c51`  
		Last Modified: Tue, 11 Jun 2019 01:10:05 GMT  
		Size: 244.3 KB (244337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbe6c0bf2cdb4fcd63c731636fe37c2a5c71e081ef97667b582c97e1a97bb`  
		Last Modified: Tue, 11 Jun 2019 01:10:15 GMT  
		Size: 28.2 MB (28152527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19-slim` - linux; 386

```console
$ docker pull mono@sha256:eeb51440285a2891a9a9307b058ff65141739e2f7e7c2c769d3f88cc135668ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81910190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322a27227d6c677eea41b13060485229873393e3bc30f9689364fb0ccd626de0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:33 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 19:32:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c295dce532aae39ef9a7dc0a20f25a3cc82c42034e0ba67c62a523e2537efb5a`  
		Last Modified: Wed, 08 May 2019 19:38:06 GMT  
		Size: 244.5 KB (244494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fe2d42b9589843ed6a73d2ac9313727475bfd85a84d73e7a1a52c150efd33`  
		Last Modified: Wed, 08 May 2019 19:38:20 GMT  
		Size: 58.5 MB (58544853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1.19-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:31fff83d75b7e1d2ad1d6d25c3168d2e18421124b32f529a9c19e65f1a4c05d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47629425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0a7c2e9fb21131638c6a7230062e76c434fbbd95d08b1f3ad211abd00ab65f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:57:46 GMT
ENV MONO_VERSION=5.20.1.19
# Mon, 10 Jun 2019 23:59:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6413d22dd176b8413685788712ca04583b7321ceec01036dade31515eaaa2c3c`  
		Last Modified: Tue, 11 Jun 2019 00:24:57 GMT  
		Size: 244.6 KB (244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57b7c8e538cad284e8762f3dbd2fcc2e45c11544ec86225c2f17f9e96b6ed62`  
		Last Modified: Tue, 11 Jun 2019 00:25:06 GMT  
		Size: 24.6 MB (24639940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20.1-slim`

```console
$ docker pull mono@sha256:9c3e09235feb99eda464dd27c04164a0066bd22d7015da0e04c07fc39cbb7280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.20.1-slim` - linux; amd64

```console
$ docker pull mono@sha256:e90a4138fb0beae62af65b0f475c820fb7b7e591d0351ffc6f9e042c7fb5fb38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78246521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37ca09efd41b63eab5897dc528cb5db9df9021d47864195d04177b03655d701`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:34:54 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 05:35:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:35:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83c8821ccbf9dc776e73e062825c10f7427b8cd11ca429e42caf4930bd27ca7`  
		Last Modified: Wed, 08 May 2019 05:51:46 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779befe89074617e69193a8a610a57ddf4d6d0bbbe99fdac3cc3be7d8fb4afb`  
		Last Modified: Wed, 08 May 2019 05:51:56 GMT  
		Size: 55.5 MB (55512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:3e4d5ab41833cc635a0126b6ae7b10d82cc66cd2d3aa90bfa350b99471d09ae7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45665305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e410b2b8369d30b687b72e6a24e8abb5609e0ab0b61381d4df73e7f118d67a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:37 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:40:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:41:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b24f837c0138cf9969ea27f515af55f3caabc3d24f1d7a43613c9273042fb`  
		Last Modified: Tue, 11 Jun 2019 00:49:37 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0352124a6be6ac0624313e86f8d7e31d34592b858672b01d94c4fc42a40d8`  
		Last Modified: Tue, 11 Jun 2019 00:49:46 GMT  
		Size: 24.3 MB (24264980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:82cf23d50f20a9f8eb8f5f86bf3563e0a0c384c5089dbb1eedef13d1e7cda75b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43078810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c357574782f84cddd7c3d0bb034f7eb0be9508d815d6ccbadace70faab46eb08`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:43:51 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:44:10 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:44:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df93aef30eda5aaa697d32a789a4558033de73bfdabc57f0755d6d4499a3ce`  
		Last Modified: Tue, 11 Jun 2019 00:51:40 GMT  
		Size: 244.5 KB (244486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf58e9ba07395bc33d02cbae2aeabd6b618a931e068f8cacbe1e47295c990d`  
		Last Modified: Tue, 11 Jun 2019 00:51:49 GMT  
		Size: 23.6 MB (23558139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c445468dab9b32269aced0dbe889d2291b5014b5afdeae10a96c1baeb5721546
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48730654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46dbc47337f49838b34f8de136b9233d793c4ccf07bd57e5fd03863d0662ce4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:02:47 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 01:03:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:03:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957e51c87206f5141ae0b7be005a0462ede462d0540f679e3550d01a9b55c51`  
		Last Modified: Tue, 11 Jun 2019 01:10:05 GMT  
		Size: 244.3 KB (244337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbe6c0bf2cdb4fcd63c731636fe37c2a5c71e081ef97667b582c97e1a97bb`  
		Last Modified: Tue, 11 Jun 2019 01:10:15 GMT  
		Size: 28.2 MB (28152527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1-slim` - linux; 386

```console
$ docker pull mono@sha256:eeb51440285a2891a9a9307b058ff65141739e2f7e7c2c769d3f88cc135668ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81910190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322a27227d6c677eea41b13060485229873393e3bc30f9689364fb0ccd626de0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:33 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 19:32:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c295dce532aae39ef9a7dc0a20f25a3cc82c42034e0ba67c62a523e2537efb5a`  
		Last Modified: Wed, 08 May 2019 19:38:06 GMT  
		Size: 244.5 KB (244494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fe2d42b9589843ed6a73d2ac9313727475bfd85a84d73e7a1a52c150efd33`  
		Last Modified: Wed, 08 May 2019 19:38:20 GMT  
		Size: 58.5 MB (58544853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20.1-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:31fff83d75b7e1d2ad1d6d25c3168d2e18421124b32f529a9c19e65f1a4c05d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47629425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0a7c2e9fb21131638c6a7230062e76c434fbbd95d08b1f3ad211abd00ab65f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:57:46 GMT
ENV MONO_VERSION=5.20.1.19
# Mon, 10 Jun 2019 23:59:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6413d22dd176b8413685788712ca04583b7321ceec01036dade31515eaaa2c3c`  
		Last Modified: Tue, 11 Jun 2019 00:24:57 GMT  
		Size: 244.6 KB (244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57b7c8e538cad284e8762f3dbd2fcc2e45c11544ec86225c2f17f9e96b6ed62`  
		Last Modified: Tue, 11 Jun 2019 00:25:06 GMT  
		Size: 24.6 MB (24639940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.20-slim`

```console
$ docker pull mono@sha256:9c3e09235feb99eda464dd27c04164a0066bd22d7015da0e04c07fc39cbb7280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5.20-slim` - linux; amd64

```console
$ docker pull mono@sha256:e90a4138fb0beae62af65b0f475c820fb7b7e591d0351ffc6f9e042c7fb5fb38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78246521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37ca09efd41b63eab5897dc528cb5db9df9021d47864195d04177b03655d701`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:34:54 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 05:35:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:35:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83c8821ccbf9dc776e73e062825c10f7427b8cd11ca429e42caf4930bd27ca7`  
		Last Modified: Wed, 08 May 2019 05:51:46 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779befe89074617e69193a8a610a57ddf4d6d0bbbe99fdac3cc3be7d8fb4afb`  
		Last Modified: Wed, 08 May 2019 05:51:56 GMT  
		Size: 55.5 MB (55512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:3e4d5ab41833cc635a0126b6ae7b10d82cc66cd2d3aa90bfa350b99471d09ae7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45665305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e410b2b8369d30b687b72e6a24e8abb5609e0ab0b61381d4df73e7f118d67a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:37 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:40:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:41:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b24f837c0138cf9969ea27f515af55f3caabc3d24f1d7a43613c9273042fb`  
		Last Modified: Tue, 11 Jun 2019 00:49:37 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0352124a6be6ac0624313e86f8d7e31d34592b858672b01d94c4fc42a40d8`  
		Last Modified: Tue, 11 Jun 2019 00:49:46 GMT  
		Size: 24.3 MB (24264980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:82cf23d50f20a9f8eb8f5f86bf3563e0a0c384c5089dbb1eedef13d1e7cda75b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43078810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c357574782f84cddd7c3d0bb034f7eb0be9508d815d6ccbadace70faab46eb08`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:43:51 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:44:10 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:44:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df93aef30eda5aaa697d32a789a4558033de73bfdabc57f0755d6d4499a3ce`  
		Last Modified: Tue, 11 Jun 2019 00:51:40 GMT  
		Size: 244.5 KB (244486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf58e9ba07395bc33d02cbae2aeabd6b618a931e068f8cacbe1e47295c990d`  
		Last Modified: Tue, 11 Jun 2019 00:51:49 GMT  
		Size: 23.6 MB (23558139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c445468dab9b32269aced0dbe889d2291b5014b5afdeae10a96c1baeb5721546
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48730654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46dbc47337f49838b34f8de136b9233d793c4ccf07bd57e5fd03863d0662ce4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:02:47 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 01:03:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:03:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957e51c87206f5141ae0b7be005a0462ede462d0540f679e3550d01a9b55c51`  
		Last Modified: Tue, 11 Jun 2019 01:10:05 GMT  
		Size: 244.3 KB (244337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbe6c0bf2cdb4fcd63c731636fe37c2a5c71e081ef97667b582c97e1a97bb`  
		Last Modified: Tue, 11 Jun 2019 01:10:15 GMT  
		Size: 28.2 MB (28152527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20-slim` - linux; 386

```console
$ docker pull mono@sha256:eeb51440285a2891a9a9307b058ff65141739e2f7e7c2c769d3f88cc135668ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81910190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322a27227d6c677eea41b13060485229873393e3bc30f9689364fb0ccd626de0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:33 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 19:32:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c295dce532aae39ef9a7dc0a20f25a3cc82c42034e0ba67c62a523e2537efb5a`  
		Last Modified: Wed, 08 May 2019 19:38:06 GMT  
		Size: 244.5 KB (244494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fe2d42b9589843ed6a73d2ac9313727475bfd85a84d73e7a1a52c150efd33`  
		Last Modified: Wed, 08 May 2019 19:38:20 GMT  
		Size: 58.5 MB (58544853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.20-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:31fff83d75b7e1d2ad1d6d25c3168d2e18421124b32f529a9c19e65f1a4c05d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47629425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0a7c2e9fb21131638c6a7230062e76c434fbbd95d08b1f3ad211abd00ab65f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:57:46 GMT
ENV MONO_VERSION=5.20.1.19
# Mon, 10 Jun 2019 23:59:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6413d22dd176b8413685788712ca04583b7321ceec01036dade31515eaaa2c3c`  
		Last Modified: Tue, 11 Jun 2019 00:24:57 GMT  
		Size: 244.6 KB (244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57b7c8e538cad284e8762f3dbd2fcc2e45c11544ec86225c2f17f9e96b6ed62`  
		Last Modified: Tue, 11 Jun 2019 00:25:06 GMT  
		Size: 24.6 MB (24639940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:9c3e09235feb99eda464dd27c04164a0066bd22d7015da0e04c07fc39cbb7280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:e90a4138fb0beae62af65b0f475c820fb7b7e591d0351ffc6f9e042c7fb5fb38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78246521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37ca09efd41b63eab5897dc528cb5db9df9021d47864195d04177b03655d701`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:34:54 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 05:35:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:35:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83c8821ccbf9dc776e73e062825c10f7427b8cd11ca429e42caf4930bd27ca7`  
		Last Modified: Wed, 08 May 2019 05:51:46 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779befe89074617e69193a8a610a57ddf4d6d0bbbe99fdac3cc3be7d8fb4afb`  
		Last Modified: Wed, 08 May 2019 05:51:56 GMT  
		Size: 55.5 MB (55512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:3e4d5ab41833cc635a0126b6ae7b10d82cc66cd2d3aa90bfa350b99471d09ae7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45665305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e410b2b8369d30b687b72e6a24e8abb5609e0ab0b61381d4df73e7f118d67a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:37 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:40:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:41:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b24f837c0138cf9969ea27f515af55f3caabc3d24f1d7a43613c9273042fb`  
		Last Modified: Tue, 11 Jun 2019 00:49:37 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0352124a6be6ac0624313e86f8d7e31d34592b858672b01d94c4fc42a40d8`  
		Last Modified: Tue, 11 Jun 2019 00:49:46 GMT  
		Size: 24.3 MB (24264980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:82cf23d50f20a9f8eb8f5f86bf3563e0a0c384c5089dbb1eedef13d1e7cda75b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43078810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c357574782f84cddd7c3d0bb034f7eb0be9508d815d6ccbadace70faab46eb08`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:43:51 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:44:10 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:44:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df93aef30eda5aaa697d32a789a4558033de73bfdabc57f0755d6d4499a3ce`  
		Last Modified: Tue, 11 Jun 2019 00:51:40 GMT  
		Size: 244.5 KB (244486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf58e9ba07395bc33d02cbae2aeabd6b618a931e068f8cacbe1e47295c990d`  
		Last Modified: Tue, 11 Jun 2019 00:51:49 GMT  
		Size: 23.6 MB (23558139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c445468dab9b32269aced0dbe889d2291b5014b5afdeae10a96c1baeb5721546
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48730654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46dbc47337f49838b34f8de136b9233d793c4ccf07bd57e5fd03863d0662ce4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:02:47 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 01:03:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:03:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957e51c87206f5141ae0b7be005a0462ede462d0540f679e3550d01a9b55c51`  
		Last Modified: Tue, 11 Jun 2019 01:10:05 GMT  
		Size: 244.3 KB (244337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbe6c0bf2cdb4fcd63c731636fe37c2a5c71e081ef97667b582c97e1a97bb`  
		Last Modified: Tue, 11 Jun 2019 01:10:15 GMT  
		Size: 28.2 MB (28152527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:eeb51440285a2891a9a9307b058ff65141739e2f7e7c2c769d3f88cc135668ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81910190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322a27227d6c677eea41b13060485229873393e3bc30f9689364fb0ccd626de0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:33 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 19:32:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c295dce532aae39ef9a7dc0a20f25a3cc82c42034e0ba67c62a523e2537efb5a`  
		Last Modified: Wed, 08 May 2019 19:38:06 GMT  
		Size: 244.5 KB (244494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fe2d42b9589843ed6a73d2ac9313727475bfd85a84d73e7a1a52c150efd33`  
		Last Modified: Wed, 08 May 2019 19:38:20 GMT  
		Size: 58.5 MB (58544853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; ppc64le

```console
$ docker pull mono@sha256:31fff83d75b7e1d2ad1d6d25c3168d2e18421124b32f529a9c19e65f1a4c05d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47629425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0a7c2e9fb21131638c6a7230062e76c434fbbd95d08b1f3ad211abd00ab65f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:57:46 GMT
ENV MONO_VERSION=5.20.1.19
# Mon, 10 Jun 2019 23:59:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6413d22dd176b8413685788712ca04583b7321ceec01036dade31515eaaa2c3c`  
		Last Modified: Tue, 11 Jun 2019 00:24:57 GMT  
		Size: 244.6 KB (244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57b7c8e538cad284e8762f3dbd2fcc2e45c11544ec86225c2f17f9e96b6ed62`  
		Last Modified: Tue, 11 Jun 2019 00:25:06 GMT  
		Size: 24.6 MB (24639940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:7ae91528be5c00951f9f5e2c9a337b29167ae354f997dbf94e2faad73428f72d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:964322bdd837fa4ff035b691b9478244d902b2af918bff6a4b284df0d38f0a7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218647390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831a16f6ca106650b5873500bf8dae27395879120e93c70d791aafdd7683e9b1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:34:54 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 05:35:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:35:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 05:44:19 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83c8821ccbf9dc776e73e062825c10f7427b8cd11ca429e42caf4930bd27ca7`  
		Last Modified: Wed, 08 May 2019 05:51:46 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779befe89074617e69193a8a610a57ddf4d6d0bbbe99fdac3cc3be7d8fb4afb`  
		Last Modified: Wed, 08 May 2019 05:51:56 GMT  
		Size: 55.5 MB (55512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d12fd312caf439f1778660fe437aa9144a84d1501feee05da6803140cd3ad82`  
		Last Modified: Wed, 08 May 2019 05:52:47 GMT  
		Size: 140.4 MB (140400869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v5

```console
$ docker pull mono@sha256:a6265bdd117a8ec5164eba6887439cbd97a797fa84e625be1b653b4db70fed10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171305250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a36469316fd8998152efaffc63007b59b61c73f8b7297d16b9fb3501a134807`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:37 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:40:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:41:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:45:51 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b24f837c0138cf9969ea27f515af55f3caabc3d24f1d7a43613c9273042fb`  
		Last Modified: Tue, 11 Jun 2019 00:49:37 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0352124a6be6ac0624313e86f8d7e31d34592b858672b01d94c4fc42a40d8`  
		Last Modified: Tue, 11 Jun 2019 00:49:46 GMT  
		Size: 24.3 MB (24264980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b78f3c9f8cbbd728f7dac847a26c73fac15acba9cd1bf736ad7c29e243554f8`  
		Last Modified: Tue, 11 Jun 2019 00:50:55 GMT  
		Size: 125.6 MB (125639945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:ca9a180fe9ebcee6add38375e3664403471915b1b695ff49c4c9006d4e3f9185
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167378271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eac13718208848d89d7506285df7e7a8dc1fa707810c8de5cf22fed46570fcc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:43:51 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:44:10 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:44:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:48:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df93aef30eda5aaa697d32a789a4558033de73bfdabc57f0755d6d4499a3ce`  
		Last Modified: Tue, 11 Jun 2019 00:51:40 GMT  
		Size: 244.5 KB (244486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf58e9ba07395bc33d02cbae2aeabd6b618a931e068f8cacbe1e47295c990d`  
		Last Modified: Tue, 11 Jun 2019 00:51:49 GMT  
		Size: 23.6 MB (23558139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b778fdeed0411539669b5114a89bdb8fce4806a0c16059c0765704d9d5514ad1`  
		Last Modified: Tue, 11 Jun 2019 00:53:01 GMT  
		Size: 124.3 MB (124299461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:39cb0b52e730e689adcd87d930e471e8769ab17a085a3668c3efb7a6bbf9d989
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188184054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ff9733dc4ca63921367cc6fce2aa7c62af5b8d6e1e81ee96c729ceeeded384`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:02:47 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 01:03:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:03:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 01:07:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957e51c87206f5141ae0b7be005a0462ede462d0540f679e3550d01a9b55c51`  
		Last Modified: Tue, 11 Jun 2019 01:10:05 GMT  
		Size: 244.3 KB (244337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbe6c0bf2cdb4fcd63c731636fe37c2a5c71e081ef97667b582c97e1a97bb`  
		Last Modified: Tue, 11 Jun 2019 01:10:15 GMT  
		Size: 28.2 MB (28152527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15889e71ae788f5aa7adb7aa69ae438c302482db2dfb76175b10706ad55be583`  
		Last Modified: Tue, 11 Jun 2019 01:11:52 GMT  
		Size: 139.5 MB (139453400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:69fab949d251c6d9983c5caacbd73b4d9e860008e3644a02c2c3cfa18c360f56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228146260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7b0006b5b1b85f30dc8a970d17a7c492bc809b6ed6dce2161503345b63581c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:33 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 19:32:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 08 May 2019 19:35:47 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c295dce532aae39ef9a7dc0a20f25a3cc82c42034e0ba67c62a523e2537efb5a`  
		Last Modified: Wed, 08 May 2019 19:38:06 GMT  
		Size: 244.5 KB (244494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fe2d42b9589843ed6a73d2ac9313727475bfd85a84d73e7a1a52c150efd33`  
		Last Modified: Wed, 08 May 2019 19:38:20 GMT  
		Size: 58.5 MB (58544853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3ee1131727013afba87ef1f4c64805a24a7fe2906c5507d7fd4bb4c11c6144`  
		Last Modified: Wed, 08 May 2019 19:39:29 GMT  
		Size: 146.2 MB (146236070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; ppc64le

```console
$ docker pull mono@sha256:a7c9e19eb169fdbf833b3b8ec9c772ac760907edc0854741a50b0488ad6f15a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173712799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e33910605fa94eb0f8e2bd33cc9e075d729944c3facee462bedd7dd7e99f3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:57:46 GMT
ENV MONO_VERSION=5.20.1.19
# Mon, 10 Jun 2019 23:59:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 11 Jun 2019 00:13:49 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6413d22dd176b8413685788712ca04583b7321ceec01036dade31515eaaa2c3c`  
		Last Modified: Tue, 11 Jun 2019 00:24:57 GMT  
		Size: 244.6 KB (244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57b7c8e538cad284e8762f3dbd2fcc2e45c11544ec86225c2f17f9e96b6ed62`  
		Last Modified: Tue, 11 Jun 2019 00:25:06 GMT  
		Size: 24.6 MB (24639940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb6fc98add64ea81407e012e6eaaa55517116dafdd7701a0bcab23c658e5a6b`  
		Last Modified: Tue, 11 Jun 2019 00:26:22 GMT  
		Size: 126.1 MB (126083374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:9c3e09235feb99eda464dd27c04164a0066bd22d7015da0e04c07fc39cbb7280
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
$ docker pull mono@sha256:e90a4138fb0beae62af65b0f475c820fb7b7e591d0351ffc6f9e042c7fb5fb38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.2 MB (78246521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37ca09efd41b63eab5897dc528cb5db9df9021d47864195d04177b03655d701`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:34:54 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 05:35:07 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 05:35:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83c8821ccbf9dc776e73e062825c10f7427b8cd11ca429e42caf4930bd27ca7`  
		Last Modified: Wed, 08 May 2019 05:51:46 GMT  
		Size: 244.5 KB (244473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5779befe89074617e69193a8a610a57ddf4d6d0bbbe99fdac3cc3be7d8fb4afb`  
		Last Modified: Wed, 08 May 2019 05:51:56 GMT  
		Size: 55.5 MB (55512698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:3e4d5ab41833cc635a0126b6ae7b10d82cc66cd2d3aa90bfa350b99471d09ae7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45665305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e410b2b8369d30b687b72e6a24e8abb5609e0ab0b61381d4df73e7f118d67a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:37 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:40:56 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:41:40 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b24f837c0138cf9969ea27f515af55f3caabc3d24f1d7a43613c9273042fb`  
		Last Modified: Tue, 11 Jun 2019 00:49:37 GMT  
		Size: 244.5 KB (244483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a0352124a6be6ac0624313e86f8d7e31d34592b858672b01d94c4fc42a40d8`  
		Last Modified: Tue, 11 Jun 2019 00:49:46 GMT  
		Size: 24.3 MB (24264980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:82cf23d50f20a9f8eb8f5f86bf3563e0a0c384c5089dbb1eedef13d1e7cda75b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43078810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c357574782f84cddd7c3d0bb034f7eb0be9508d815d6ccbadace70faab46eb08`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:43:51 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 00:44:10 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:44:54 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76df93aef30eda5aaa697d32a789a4558033de73bfdabc57f0755d6d4499a3ce`  
		Last Modified: Tue, 11 Jun 2019 00:51:40 GMT  
		Size: 244.5 KB (244486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaf58e9ba07395bc33d02cbae2aeabd6b618a931e068f8cacbe1e47295c990d`  
		Last Modified: Tue, 11 Jun 2019 00:51:49 GMT  
		Size: 23.6 MB (23558139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c445468dab9b32269aced0dbe889d2291b5014b5afdeae10a96c1baeb5721546
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48730654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46dbc47337f49838b34f8de136b9233d793c4ccf07bd57e5fd03863d0662ce4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:02:47 GMT
ENV MONO_VERSION=5.20.1.19
# Tue, 11 Jun 2019 01:03:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 01:03:39 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d957e51c87206f5141ae0b7be005a0462ede462d0540f679e3550d01a9b55c51`  
		Last Modified: Tue, 11 Jun 2019 01:10:05 GMT  
		Size: 244.3 KB (244337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352cbe6c0bf2cdb4fcd63c731636fe37c2a5c71e081ef97667b582c97e1a97bb`  
		Last Modified: Tue, 11 Jun 2019 01:10:15 GMT  
		Size: 28.2 MB (28152527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:eeb51440285a2891a9a9307b058ff65141739e2f7e7c2c769d3f88cc135668ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81910190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322a27227d6c677eea41b13060485229873393e3bc30f9689364fb0ccd626de0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:32:33 GMT
ENV MONO_VERSION=5.20.1.19
# Wed, 08 May 2019 19:32:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Wed, 08 May 2019 19:33:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c295dce532aae39ef9a7dc0a20f25a3cc82c42034e0ba67c62a523e2537efb5a`  
		Last Modified: Wed, 08 May 2019 19:38:06 GMT  
		Size: 244.5 KB (244494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fe2d42b9589843ed6a73d2ac9313727475bfd85a84d73e7a1a52c150efd33`  
		Last Modified: Wed, 08 May 2019 19:38:20 GMT  
		Size: 58.5 MB (58544853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; ppc64le

```console
$ docker pull mono@sha256:31fff83d75b7e1d2ad1d6d25c3168d2e18421124b32f529a9c19e65f1a4c05d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47629425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0a7c2e9fb21131638c6a7230062e76c434fbbd95d08b1f3ad211abd00ab65f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:57:46 GMT
ENV MONO_VERSION=5.20.1.19
# Mon, 10 Jun 2019 23:59:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 11 Jun 2019 00:01:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-vs.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6413d22dd176b8413685788712ca04583b7321ceec01036dade31515eaaa2c3c`  
		Last Modified: Tue, 11 Jun 2019 00:24:57 GMT  
		Size: 244.6 KB (244575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57b7c8e538cad284e8762f3dbd2fcc2e45c11544ec86225c2f17f9e96b6ed62`  
		Last Modified: Tue, 11 Jun 2019 00:25:06 GMT  
		Size: 24.6 MB (24639940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

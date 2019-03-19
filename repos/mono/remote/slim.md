## `mono:slim`

```console
$ docker pull mono@sha256:591445db164463283cc0785e8e1cb0cc695d933c7362bbf9849f9ee11767e31d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:4cd6336bf30c9df10368fdaf149a874be3a637cea4fb6455712866ca0d69631b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83897904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ff1f21fa66e2aceaa60dd3bd2bff598def1674ab279cd162e640a662cbd7f3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 00:22:23 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 00:22:43 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 00:23:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09176e9ddfadaa32d15381c8c35baec563e0f6e6bbf7966e02eba1fb28f4724c`  
		Last Modified: Tue, 19 Mar 2019 00:38:33 GMT  
		Size: 244.4 KB (244444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f39cd60ee5a4248f61275598e01bd09d571327ba75f314149e833e9dd28a83`  
		Last Modified: Tue, 19 Mar 2019 00:38:45 GMT  
		Size: 61.2 MB (61157426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v5

```console
$ docker pull mono@sha256:bafadbdd3db5cbef56a2c78953ea932cd20616d39f34deae4e636bc5770d38ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45683832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1198f5372d55cc6d62f942d9e62c50b2d0130abc819bfd84e3bf65f7c55a9268`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:48:33 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:48:54 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967407a78c4d8f65379d292d10f27b9f492bc10b965f9975976a1510080d8d53`  
		Last Modified: Tue, 19 Mar 2019 08:57:03 GMT  
		Size: 244.5 KB (244457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0934789e019bfe389b5ded7ead19cbecdce0836a076c0060c84c7b66f9d88aec`  
		Last Modified: Tue, 19 Mar 2019 08:57:12 GMT  
		Size: 24.3 MB (24278827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:dd743e95a1049a6aa45cb0df5e998e9815d77afceb85327aee88a6d16843b4c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48822627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768bf879e4fcc723039b9df130eaafdbc353a2e711eb4886421c3f639a14b11e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:40:17 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:41:03 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:42:07 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9351cb696e503067f526de8772e731f4639372ff94f864cf03df5610e5c8fdc`  
		Last Modified: Tue, 19 Mar 2019 09:03:42 GMT  
		Size: 244.4 KB (244442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9f27ee4e6e5bec082c49ac4495ceb2210cbd0cf006d9439d053b1fce206bd2`  
		Last Modified: Tue, 19 Mar 2019 09:04:27 GMT  
		Size: 28.2 MB (28228026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:c300d558b044ef13c53bbf772c69f3d44516c84a1110579626ac57646fe5f345
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87344308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041904a582dc9f2b6f3f8bbccbf8544c4659e582bd03a0aade99800c0b210829`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 11:05:14 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 11:05:36 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 11:06:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d09bafccbb7261951b2f55199d711f0e1642f63c91b424fb172e67975daadb2`  
		Last Modified: Tue, 19 Mar 2019 11:11:08 GMT  
		Size: 244.4 KB (244426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75fc10099313cf57f61b2dba96aaa8c104643d741213a6faae76836e05f1eee`  
		Last Modified: Tue, 19 Mar 2019 11:11:24 GMT  
		Size: 64.0 MB (63974202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; ppc64le

```console
$ docker pull mono@sha256:6ee0addad004e911aa6935f98e1636d36f767f3212b51a5e18d04af3f57c7051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47648667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30c513b2c0fa85cc57f1681ae3dcd5ef8d9db6696133486be804a44845dd255`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:25:57 GMT
ADD file:499a43a96e8ab3c7c8ab9d1c3260d34bb2b955e9751ada2b98194e42f9578be3 in / 
# Tue, 05 Mar 2019 09:26:02 GMT
CMD ["bash"]
# Tue, 19 Mar 2019 08:17:44 GMT
ENV MONO_VERSION=5.18.1.0
# Tue, 19 Mar 2019 08:19:17 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gnupg dirmngr   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF   && gpg --batch --export --armor 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /etc/apt/trusted.gpg.d/mono.gpg.asc   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && apt-key list | grep Xamarin   && apt-get purge -y --auto-remove gnupg dirmngr
# Tue, 19 Mar 2019 08:20:49 GMT
RUN echo "deb http://download.mono-project.com/repo/debian stable-stretch/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official-stable.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1a1c20c0e1fe9ea9a7ae86ac61ed89ee8cf01dccfb363d582cb8c910510c06fb`  
		Last Modified: Tue, 05 Mar 2019 09:32:10 GMT  
		Size: 22.8 MB (22751497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900d3a8f1d6fcfbaca4b92309f0225f9cb903d917d9c1de1021324a8688701a`  
		Last Modified: Tue, 19 Mar 2019 08:38:35 GMT  
		Size: 244.6 KB (244556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73479d7e1554e9c8006adc28b3754a65eb02583f04695555a2eb873ab05ce6ca`  
		Last Modified: Tue, 19 Mar 2019 08:38:41 GMT  
		Size: 24.7 MB (24652614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

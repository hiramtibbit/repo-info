## `debian:experimental`

```console
$ docker pull debian@sha256:b9b9fe9a110bf4fc837bbf511c53a33ad8e6ed58c7707c86ab00dcbce6f67d14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:0fdb3e96288a8b2eaf9637885b9ca666112b81417e638210cb19a50e2dc5ae49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50122177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d97c712aeb9b48299bdfc682a40cb74c15158e62e1e85720a8ea492c20de8a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:32:01 GMT
ADD file:d28a0f7304e1d2bfe8886352d301d44682b85c20ab142cc3db335349e1ced1aa in / 
# Tue, 22 Jan 2019 19:32:01 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:33:32 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:4739c70d9bd39fda0fab0b4008662416dc392a715b67a72ef4f4b9dbaf57755c`  
		Last Modified: Tue, 22 Jan 2019 19:37:42 GMT  
		Size: 50.1 MB (50121959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b150b5716aae67233653a5e3767967a48787f2017878df0b702791d9af8d21a`  
		Last Modified: Tue, 22 Jan 2019 19:38:23 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:d782c87a995c290632fca3cd3193ab9b63b3562d9b6eade6672a5cffc758456a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47834763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b497f76c97ff517876c54832c663781fc0ad5da103a18733e3af5df912be827e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:56:16 GMT
ADD file:f8bc56cfe69a1eb31a7cfd529f8591cbe7c5ae3ad59d1828004584ce60525451 in / 
# Wed, 23 Jan 2019 09:56:17 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:57:33 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:fbe0df9f5734442fa7fe4a08b13914db4e4f567acda53a711ab797c6c72a27a0`  
		Last Modified: Wed, 23 Jan 2019 10:03:13 GMT  
		Size: 47.8 MB (47834540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836fb890d3bde30fa8b61f75e2ff52aa3d0dc9c0f4ff5477909f8055e63cdc7a`  
		Last Modified: Wed, 23 Jan 2019 10:04:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:e1eca71e18a08443f5261ade68089b15bee44d4aa0cd5b1070758863c548c199
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45260535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa64d4c3d259ce3684d203e9c8ecf811b615fd137402993f91ee8205357b8a5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:06:32 GMT
ADD file:162688d101ef04240c898acc61e291f2c3359a8f03da33559ccb2d9314e0dda3 in / 
# Sat, 29 Dec 2018 13:06:34 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:08:06 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:5724dcec42860f1f0b310f6cef5cdc008ef193deff11a6ea8035c1dddc83dba1`  
		Last Modified: Sat, 29 Dec 2018 13:13:22 GMT  
		Size: 45.3 MB (45260313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0933a3328cb40d99ebab44bae0e04715f649ebd62f6b30e9169c41e46a4b488`  
		Last Modified: Sat, 29 Dec 2018 13:14:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b410feca9a83f4d19ffc6914afefe93f021bb04c431c13a749fd2e4fe6573ac5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48871010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d40d2742ddb26cc52a8a0c027fbe84bba0934d67260882fb4fccc0c934a45e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:06:43 GMT
ADD file:8062114aee7a9a994d53688528ff10b65ced67fac49a8327b0d487b140b03358 in / 
# Wed, 23 Jan 2019 10:06:44 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:07:33 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f20406ce61d7ba562066331410aed95fff544bb2464af397db3c7072477aa474`  
		Last Modified: Wed, 23 Jan 2019 10:12:46 GMT  
		Size: 48.9 MB (48870787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f92b02ef0cc02c61e18f44f12e2957da25cb68d50c95bedec99f836be1148c8`  
		Last Modified: Wed, 23 Jan 2019 10:13:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:1118c40ede252f9eadc9420920f8d13f7f056ca8ec073c38379af218e6a5eaf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50553672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e6db67795872bf7a63ccf6d38d5dbd7472537edb860b66703f41d3841b2731`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:59:46 GMT
ADD file:c067065c29adaf662e0ef93250a53931893501d171d1df5197beb21b5fbe4a64 in / 
# Sat, 29 Dec 2018 11:59:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:03:44 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:97ee8bc83786163ce957fc73ec9d8707529d19ca29c0120b8c286dced3328220`  
		Last Modified: Sat, 29 Dec 2018 12:11:48 GMT  
		Size: 50.6 MB (50553447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802ab3f7dcc53b04bc5aa16b0927ac56c910c8c9ed8b45727bef6da7d0e97e45`  
		Last Modified: Sat, 29 Dec 2018 12:12:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:fd26b6b295a3b3cb1c13c3a2e9828c85bb9d9f8427efd44e16215ba7c2b3da95
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53810021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec960cd94a82dfbb6db7b6c6e42758844b169c37233fb02c2b28df726d1569a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:36 GMT
ADD file:ab3ec8b533f191b05fbdb29b4e024f6a0f2b7ecf46a96a73a9d12af864a7be0f in / 
# Wed, 23 Jan 2019 09:28:40 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:29:04 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:aec0f556938850c632c227ebc570c2504ee87d591fb5f4bdd9ac1e393cff3715`  
		Last Modified: Wed, 23 Jan 2019 09:35:37 GMT  
		Size: 53.8 MB (53809799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27ad01e7a3f0ff3a41c6e70eef040ef254722254f9ef91a0da87bb455bdbb55`  
		Last Modified: Wed, 23 Jan 2019 09:36:11 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:93acffefdbb58799103db9cecba6296b4c3758564be270808d89533f274608ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48371422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c5ea5be233631220ac832b271b26b65638125526aef28a07e9d3fe48c93a6c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:44:38 GMT
ADD file:e8f5b60d1125ff0dc88f62d025f16b934ed94cd00e56247a2f25649f4e117fdc in / 
# Sat, 29 Dec 2018 12:44:39 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:44:56 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f98af6a185220e54f0426bddab5c73f8c02240568f8b708cecdcac7515c87c5b`  
		Last Modified: Sat, 29 Dec 2018 12:47:26 GMT  
		Size: 48.4 MB (48371200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1fa9f9a9958502c938300dec7b360c937961190e24d414843aac428e6251482`  
		Last Modified: Sat, 29 Dec 2018 12:47:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

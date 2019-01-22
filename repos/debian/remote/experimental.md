## `debian:experimental`

```console
$ docker pull debian@sha256:dadaddadcfa0f047d65b9b76195606951f53b9f002e6237b05b30bc398686632
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
$ docker pull debian@sha256:2fea3debe705ac716e9e372fccb78a7134b645e609e7f9d1fcb7298a28004a38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47474340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03de51d60e9216f258876f58bfb972b62eee91fd00616b6cdaa93a9c9cc9e481`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:57:01 GMT
ADD file:81e2839bc3e8e1e0084f8855a24e1b2c1789f69c4dc2096222f82f888d3491be in / 
# Sat, 29 Dec 2018 09:57:02 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:58:25 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:4190dfd99705087cefb331d3d3b03891b9a89c2f2352b9dc90249a6b89440afa`  
		Last Modified: Sat, 29 Dec 2018 10:04:08 GMT  
		Size: 47.5 MB (47474117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a18b2a99c8035bc229a81f1a201c0d5ebb8b358ed466bacfc5121f21bb68876`  
		Last Modified: Sat, 29 Dec 2018 10:05:02 GMT  
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
$ docker pull debian@sha256:b748ba30dda8072db8f1ab83b92967b48eea21291a2d3e96380f4b56444ffd03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48472445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515f9a093a56cd6ed03c5e3bb7158d88e3b11686e1b142db4d5823cc498ea43c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:35 GMT
ADD file:b1dd1fb0d47f8bed2f7346de3f8bb10ea1ca5412197107e5d9b7cc056b1b3ad6 in / 
# Sat, 29 Dec 2018 10:10:36 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:11:16 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:a47a0ed100a9ace34ef32b33b158f9af13e2500e61fd226b270400f7f01091c8`  
		Last Modified: Sat, 29 Dec 2018 10:16:15 GMT  
		Size: 48.5 MB (48472220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190f72a48a0908429f8405b8c16f1142423513a5351d887c25f843da7980b2e2`  
		Last Modified: Sat, 29 Dec 2018 10:16:40 GMT  
		Size: 225.0 B  
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
$ docker pull debian@sha256:26041d3bc7292da69bfec5094e7fd0ea7ee8820d749b92cd128308246c0a09bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53407462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:facf6bf47ddaac1f5cdf961c3b11e9396eb7bd3f72733a97dd2c6f6948f5bf2c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:23:34 GMT
ADD file:039dd0f1f90b2ba4b0564de5812df04204730f86f2fb3dfe792679899360821f in / 
# Sat, 29 Dec 2018 09:23:37 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:23:59 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:1763168294e0e0842a88e05a50a19cebcab4302c61e2477dfb0c0eb789c04b8a`  
		Last Modified: Sat, 29 Dec 2018 09:30:08 GMT  
		Size: 53.4 MB (53407239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346f06287fd5ae44fa1dbc8f443d52bbf44ce7d0d6b87d840d8177cae4057042`  
		Last Modified: Sat, 29 Dec 2018 09:30:39 GMT  
		Size: 223.0 B  
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

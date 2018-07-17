## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:5cb6f50e5e681510323e5dd25c25f3d5b8d39767f80b5dc2a1e96fa12c2ab539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:c79d8cda16dfab19814a0d78cbd1d3c222bd5e622924156dcae3c11d0edba6a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c6380905370e83e3a088ab213e9b479c3d5dc44cb5367c33fdd63cb80bade03`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:30:58 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bd3bda6612c9107198bba3f5d3f300f443fcd35d6eebe318e79385bf77f0b8`  
		Last Modified: Tue, 17 Jul 2018 00:48:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:68fe9d078fd35eaaf37dca6ae99e309b3cdbb337428fc5e4703b188416635336
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17744975c0a723e102e215e87700ca5e45042a5b813e141e7465fea489fc5f86`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:59:27 GMT
ADD file:118f69d2224ba46ac27284a61951715599b15536ec67a7c37bffc85458461cfc in / 
# Tue, 17 Jul 2018 08:59:28 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:59:50 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e68d31fb2a9723e10f3faae2ded8811dca04291d0d555713137ce701438ad772`  
		Last Modified: Tue, 17 Jul 2018 09:11:13 GMT  
		Size: 38.0 MB (37992753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8972e96d9dbf4009982c04010ec74e08861327d0915a5218b1f0e6ec5e2fbe`  
		Last Modified: Tue, 17 Jul 2018 09:11:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8d88cb323b5e4e5ba808b7bb031e5c1d1850d5290ca1b40d63d47b3ad44da86b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5984c6635b83df4be66e451a5d36006c097782e5dada235d159cd08478464c3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:05:32 GMT
ADD file:145cda1c15a6a0ae66272051773cc09811f4ac3c4c4feea888d966d244bafcae in / 
# Wed, 27 Jun 2018 12:05:33 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:05:47 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:da52c543045989735e85b13ad74f53f9e93ba8697a71306d397ce81402b287c8`  
		Last Modified: Wed, 27 Jun 2018 12:15:25 GMT  
		Size: 36.6 MB (36620254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32413d8eaa23944595117f82deca3b3af2dd7c0c18a164309905ced7f04d8d12`  
		Last Modified: Wed, 27 Jun 2018 12:15:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:cbe29159941e06d8412696df7c7a0164772dc92448c8dd4b30404f04cefd1281
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8da65f1ec8ac77532f6de8024ed7df6f5da0e30610f5d5185e3be1eb8c78355`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:49:16 GMT
ADD file:d40801b865e65cc6b87379ebf0411c4eab5e5b94c02de103dd8e75ef16aedb97 in / 
# Wed, 27 Jun 2018 10:49:21 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:49:38 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4bf8262684df8a752a20a3e6b45f60585658f70a4dc9110885e7456952812957`  
		Last Modified: Wed, 27 Jun 2018 11:14:00 GMT  
		Size: 40.5 MB (40532864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1cc07951cb9c4dd19e3f4df0d700d3885d00a960c6384ae71f407365b52c50a`  
		Last Modified: Wed, 27 Jun 2018 11:14:32 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

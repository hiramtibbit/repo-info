## `debian:stretch-backports`

```console
$ docker pull debian@sha256:18db2dee42d246920677f51212de8bacc688c8b1db341ac8a17245d2aa9b2e25
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

### `debian:stretch-backports` - linux; amd64

```console
$ docker pull debian@sha256:a6a6201c13889606b81c48d009b3dd6175e19e9f511eb668ee3dda3776fafc9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45324018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5bfac64a5067bd3c8fcdabe9f484fabf0aaa0b563df4e67cd3ac4c98bc41c3`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:29:44 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025439a96bed249d55ba56912fc8bf3f89f37a5970d15d173f96d257188f69a4`  
		Last Modified: Fri, 28 Dec 2018 23:35:55 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:05d66689bc8496e169c5dd7ab27b2ec9dd6eeb4e86be0a6f1873d6578c321222
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44029576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5517e60865cd04393e669440671538a9ee862274ac96cd09e054da625f4847`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:03 GMT
ADD file:fa1f49edfa12ade0f591321a690ba7f35361226e174e1a6506ef39f93b34da73 in / 
# Sat, 29 Dec 2018 09:55:04 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:55:12 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:aa4a25a876e256fe4408a465d97b4481c83e18aec91fbd5b6d29f32693918f71`  
		Last Modified: Sat, 29 Dec 2018 10:02:57 GMT  
		Size: 44.0 MB (44029352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf716cec76658fb6912756abe00d89b86ae01a84f9d8607a499e46d8250553`  
		Last Modified: Sat, 29 Dec 2018 10:03:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:632ec57239b659fcfb36daeaf762a21ee51f255478a94f67afebf648a052600d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42076363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27838dcd6857a0946ac9077c7068eb7b29fd03bfdb8f6ac4e0cb1527533efba2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:09:04 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2f36f0b59d212fd1288cc505f921d58114310b12727d3d247650c0daeeaeb8`  
		Last Modified: Fri, 16 Nov 2018 13:21:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:68ba91db74564c06a20ba26e7dd8dec8544745c36e59c3a3a81d11cbc95b3f8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43116703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4411c0dec8e1b2747ab3133937499ae6c856416e0c4a4504d2d1400d692d3ce3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:08:21 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4633710d6e5c15a8d2d9e43be4fd66c7ff08a658e10873d4d825901d428dca`  
		Last Modified: Sat, 29 Dec 2018 10:14:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; 386

```console
$ docker pull debian@sha256:fa61bd4bf41bbf8498c744311d4a6543c3f885a5be00a5503f6509d7cdbd9c41
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46057515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d595607437738c91d1d2ec86384cc30ab6bf079946aae057f98ffb11e5c4dc3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:55:03 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4471c12143bb2c0111df8524f9830a0a66a0f902591216a646533b476a7b6ab0`  
		Last Modified: Sat, 29 Dec 2018 12:10:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:53f1bc1139fddf40a7456916bf164c1044e04cf086645e42e4ec15911a9d99ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45605921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90aab08e8dabf12cc8e7b2ece89e7f987d50668df5f5f89bdea75ba760dec592`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:22:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19677e31e8d2f85cbad3b8ec412ceea32efcd2c986c4100528b5318dfe3bb51`  
		Last Modified: Sat, 29 Dec 2018 09:28:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stretch-backports` - linux; s390x

```console
$ docker pull debian@sha256:c5dd5814e0f6e1fd4dacc4e1732f10bbbd32c78c3c78c70950b336e717da3407
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45205040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c13acd6b7d7502f9059c948accfc76b37f9eda0653d54703e391ce6aa24cf8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:44:08 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fc7fec5ca656e7316d9caa18682c5aa2d26f59ae65f2c3bdc9f017a68ecf03`  
		Last Modified: Fri, 16 Nov 2018 12:48:45 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

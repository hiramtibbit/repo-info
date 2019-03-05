## `debian:rc-buggy`

```console
$ docker pull debian@sha256:f958149e2c9182f8557c128c0b15f633ced15776578e89819f88ebae8e353e09
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

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:ce123e8bb923919a7fe8aed8028b56c851a811907934bfc9550eaed23367b5f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50217271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e2d646dcd39f7fbcc34a1ad456c409a8d707383e36a9ca84a25906942fd92c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:21:27 GMT
ADD file:dca5a20f97013b9a80952784924ca7f3820f99958ad080344fe8445a67c2ca92 in / 
# Mon, 04 Mar 2019 23:21:27 GMT
CMD ["bash"]
# Mon, 04 Mar 2019 23:23:33 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:9785490dff12d73b09ebaeb9dfa12d32bc61a107039000030ea3d9da0db5f77a`  
		Last Modified: Mon, 04 Mar 2019 23:25:37 GMT  
		Size: 50.2 MB (50217046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7591049716f561e86148161e369296e14ac181399ee8adb3224a7447b7a74355`  
		Last Modified: Mon, 04 Mar 2019 23:27:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v5

```console
$ docker pull debian@sha256:6d7e6bf05f04c623c1d8e4d30ca1ac3698c944d424a9ea72a0cb2d3fbe673c2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47927316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570d679b09c4f2fc16671b52e4e8e99fe5a541e9016beac8d39445b9f944c3da`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:52:57 GMT
ADD file:408a135a9a2b4df4beece5b2de3301cfa0e45a7a062eb63e9a0e7e9192bd5f99 in / 
# Tue, 05 Mar 2019 09:52:58 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:57:53 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3f835cac0c7da48ab45ed34e7fa9323dc275f7e955809e476af719eca0844a82`  
		Last Modified: Tue, 05 Mar 2019 10:01:18 GMT  
		Size: 47.9 MB (47927091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20f8d8cf806e5023fd8a5d790749f52e8393785c085367ef719a00db13940b4`  
		Last Modified: Tue, 05 Mar 2019 10:04:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:7fa30b0797c99ac8ce051be931d08928451333daf759151c72cea390a516badf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45567873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa91f36efc6ac2141beacb6864d6bee46d18d71ca5e93b435cd518bc420c5192`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:01:35 GMT
ADD file:a5ec8ee488d30cb687ca0762ec363e449fb00765212c6f1181848cbf3c3d6d1f in / 
# Thu, 07 Feb 2019 13:01:36 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 13:05:58 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:17febb2059b5733145fcd79dbf81a59c1cfe76c77c0288fcde8d76d9f19ee04c`  
		Last Modified: Thu, 07 Feb 2019 01:42:10 GMT  
		Size: 45.6 MB (45567644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abd05faab8c46fdf3b8c3c34a74b3b6b71a20e6736875bc36d0e4e230b68bea`  
		Last Modified: Thu, 07 Feb 2019 13:12:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:97a3e1f901eb5d91090cf42b934c423238bafaab228c5db1273d81deecafd54a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49013747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3299d2854ad85b98ea74b8e0578948f2525606102ff0d607f030047174f807`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:58:23 GMT
ADD file:90460bfea8197db08228883344f54de9af9e181235af744b6ced1c92c9232c0e in / 
# Tue, 05 Mar 2019 09:58:25 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:03:09 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:144b366f7c016e373caca8c07d7f49863e1f58cd34df77dd477c040ad69a0834`  
		Last Modified: Tue, 05 Mar 2019 10:04:44 GMT  
		Size: 49.0 MB (49013519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a7bbc484cc9b1939378f3d0d8c0c46326aad4d731cb7db774005027c74a686`  
		Last Modified: Tue, 05 Mar 2019 10:08:12 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:c48f8f2e869453ee6ca3857fce23877585818d294d534d7933d88a8fc4e1747d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50830160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec71d047b5c56785beb5a90c803c56f06b61e21c416ace1905bd90bfe4c0d9a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:00:13 GMT
ADD file:ce7c45fff0d74bfe603a7138b818751de070b078ca0721b047e8567c30f61cf0 in / 
# Wed, 06 Feb 2019 12:00:13 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:02:47 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:7f5d83ecefd7c06c9ad1f3c8e31a16ca0808dd67c4c337ffd67e9a10a97d7675`  
		Last Modified: Wed, 06 Feb 2019 12:06:14 GMT  
		Size: 50.8 MB (50829933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8823c4b6538fcdf949923b7593dab0cfa6c91d5508722992a6c399ea40ead61`  
		Last Modified: Wed, 06 Feb 2019 12:09:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:7b32bc933a0a7f69017a7d886698b9f1870bda76b0a6a224b5aef1e78c9c480f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53964317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa33f7b1d01e36076a5b4c0cbb815e34ea61a0ee2550a643f36e9cb674673cea`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:24:04 GMT
ADD file:40f652d32e0b76ec071fd9402a46baf708b4a93a447746fa2c6a983037783a9e in / 
# Tue, 05 Mar 2019 09:24:08 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:27:43 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:2592b3cdddbd90d7ba646742ad2e42d88b7ff2e928a2409bcaaa0e0b3a57313c`  
		Last Modified: Tue, 05 Mar 2019 09:29:29 GMT  
		Size: 54.0 MB (53964088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f939fd752a8ff664c99839e321d46cb6d806b895cde9070504b4d9828fe0d1c2`  
		Last Modified: Tue, 05 Mar 2019 09:34:14 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:d2f41a927d0cb0a6c00d08ab3ad7a35d56da38b0f03a21158a9f8ee32c9a9545
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48643782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620902a99c890ad6f9baa6b81f04309e10c7a2f886247166d0080320d7757741`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:42:20 GMT
ADD file:a5ee680799f2f7c5bc6b342acbeccd9b53fcb4c9ead7369f835dd85be5ca3fa7 in / 
# Wed, 06 Feb 2019 12:42:21 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:44:21 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:fa45b08f2a9797c6d1f48741b3f2096e45b319e1a52f713f1eac8b8e472e3521`  
		Last Modified: Wed, 06 Feb 2019 12:45:51 GMT  
		Size: 48.6 MB (48643552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4f276fb60e3fc989af7545674df2137254f0a13c7b7d813ae54c1507da98c5`  
		Last Modified: Wed, 06 Feb 2019 12:47:53 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

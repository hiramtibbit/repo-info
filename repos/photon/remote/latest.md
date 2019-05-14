## `photon:latest`

```console
$ docker pull photon@sha256:e81378ec25c01b9b3fb6134ba39cbd2fbb618de6f0ff9c2644164e4d2a0c1429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `photon:latest` - linux; amd64

```console
$ docker pull photon@sha256:0aac57fd697fd9fdc3806c57db39dd462fa9e19838a560a53c31a9da8871acf0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14610897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f80c3500cd31bd4989c9cbe85efa16960de49671c3714236ab99a6bfc3bcf16`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 14 May 2019 00:28:18 GMT
ADD file:d8455c8bd540783848da4c11c5ad00d558cd72ad502f3ce3df94717d2a71994f in / 
# Tue, 14 May 2019 00:28:19 GMT
LABEL name=Photon OS x86_64/3.0 Base Image vendor=VMware build-date=20190512
# Tue, 14 May 2019 00:28:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7eade93c5e517c030197d8cb49fac9c763eed19b5a0c1365254c26349be116c5`  
		Last Modified: Tue, 14 May 2019 00:29:10 GMT  
		Size: 14.6 MB (14610897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `photon:latest` - linux; arm64 variant v8

```console
$ docker pull photon@sha256:b007243ea954852dc26e34f5798a0e860569cff2444045e7954ade69d765b293
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 MB (12479025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c75cb5bc286114fd0354ce2053a51dd290875cde81901ba31afaf4cb135f82f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 14 May 2019 00:02:42 GMT
ADD file:7ab4b03a306659c19e67cbbd281a2a7885501d5b8cb3db03dfc60057ed768814 in / 
# Tue, 14 May 2019 00:02:42 GMT
LABEL name=Photon OS aarch64/3.0 Base Image vendor=VMware build-date=20190512
# Tue, 14 May 2019 00:02:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:51efa8268bbb3d18517ec12fcea03a0cd75ee8e32e39b2cd1b1007ee0294a868`  
		Last Modified: Tue, 14 May 2019 00:03:03 GMT  
		Size: 12.5 MB (12479025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

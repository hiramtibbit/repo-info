## `photon:latest`

```console
$ docker pull photon@sha256:2b6039fbbf6755a29624f21765a85169b6113c64a0057b4cb99f8e61344315ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `photon:latest` - linux; amd64

```console
$ docker pull photon@sha256:3d2d48cc0d08f2439e07072769c4f6ca7b7336f9d6201f78964deb75899c00d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14721155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b290bf6ec58a2af683fe46213ee54f0ead4c4dce234f2c93335d441066506fcf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jun 2019 20:28:45 GMT
ADD file:ed7a38661aa9f853fc6c7dc7fc3b4c87dc05dd764c4b229051fff28da9a49a01 in / 
# Fri, 21 Jun 2019 20:28:45 GMT
LABEL name=Photon OS x86_64/3.0 Base Image vendor=VMware build-date=20190621
# Fri, 21 Jun 2019 20:28:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ae46034da24acd9f68e8d5cc985cf17214fb78158e63ad7df1c3d587c7829223`  
		Last Modified: Fri, 21 Jun 2019 20:30:06 GMT  
		Size: 14.7 MB (14721155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `photon:latest` - linux; arm64 variant v8

```console
$ docker pull photon@sha256:876c3fcbc5a640e209fff37301913415c751f7f9e2f909f1322df68ea86784b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.6 MB (12585510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf1ed9d6e3baf9b40bb9fcfcf86c96ded977b33a5030ebcec1c440ab0e4916f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jun 2019 20:49:09 GMT
ADD file:3fd2f2340ee8173289e67e0cb6847358624c54af2d7a8d9880a7ee7a1290354f in / 
# Fri, 21 Jun 2019 20:49:09 GMT
LABEL name=Photon OS aarch64/3.0 Base Image vendor=VMware build-date=20190621
# Fri, 21 Jun 2019 20:49:10 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9fbeb7aaa81f0ac1a29941b2cc1a98aa6743f6928b4c86c94c3745242f19c421`  
		Last Modified: Fri, 21 Jun 2019 20:49:23 GMT  
		Size: 12.6 MB (12585510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

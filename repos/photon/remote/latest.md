## `photon:latest`

```console
$ docker pull photon@sha256:b38672e1b7120cf88409e3c68711d549367a5350ebb99d30fb774e15b1941771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `photon:latest` - linux; amd64

```console
$ docker pull photon@sha256:8b9c9e26d97473767b847e72a45c0db480bc105339467bd665d52e2f227ae588
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14602701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a52e6156de5241216a509dacb69a34a2497e0a3b07a24ffc5238d10040d89cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 30 Mar 2019 00:20:22 GMT
ADD file:5d9b8a4712014888fc60eff99bbc66eec8a7330ce4d7a7511e2824e1618f1054 in / 
# Sat, 30 Mar 2019 00:20:22 GMT
LABEL name=Photon OS x86_64/3.0 Base Image vendor=VMware build-date=20190329
# Sat, 30 Mar 2019 00:20:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:79d7c9809b614e41538fa0d512c536a4702abbf779855a18a1556243178945d0`  
		Last Modified: Sat, 30 Mar 2019 00:21:01 GMT  
		Size: 14.6 MB (14602701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `photon:latest` - linux; arm64 variant v8

```console
$ docker pull photon@sha256:7365cb2ef561bd9863093cf4a4f9adfc05d44cdb3634341345f084d9f4ca37df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 MB (12475621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053122fb63b21314b78b4163ad9196b14a75eb16e747c6f095b5d9af94c38e53`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 22 Mar 2019 08:54:20 GMT
ADD file:2d4ac0079bd0a92f7d7f9f0bfc52bc42fb028a568ddeaf3c08a21d0ff481c66a in / 
# Fri, 22 Mar 2019 08:54:21 GMT
LABEL name=Photon OS aarch64/3.0 Base Image vendor=VMware build-date=20190320
# Fri, 22 Mar 2019 08:54:22 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c56690d8780b27aba6c8def72f9759097c836aa3355ae1a2f15b85df494422e5`  
		Last Modified: Fri, 22 Mar 2019 08:54:43 GMT  
		Size: 12.5 MB (12475621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

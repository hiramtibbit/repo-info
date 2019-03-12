## `fedora:rawhide`

```console
$ docker pull fedora@sha256:ec29188645222c84b77466ebb452040569b4a0944760ef9c6caede1e3056e63f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `fedora:rawhide` - linux; amd64

```console
$ docker pull fedora@sha256:00b1673b27efd1a5fa40c80622ac1e5f217ce40d162b65067130ea891d58af0a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90293430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff97b05aaa6ef5b3444fc95cc8b340266ea63474dca3f557f07ccfd70f1fee1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Jan 2019 21:21:55 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Tue, 12 Mar 2019 00:20:46 GMT
ENV DISTTAG=f31container FGC=f31 FBR=f31
# Tue, 12 Mar 2019 00:20:59 GMT
ADD file:988c2e4f0b944815c8c88ddab4550f9f35c6ecf7b07675d47fa68d3e4a369fa7 in / 
# Tue, 12 Mar 2019 00:20:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:00f2249c57ee6d8c3e06280736d3c1f2bd44879ed7f263fbee1f01af78981653`  
		Last Modified: Tue, 12 Mar 2019 00:22:11 GMT  
		Size: 90.3 MB (90293430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fedora:rawhide` - linux; arm variant v7

```console
$ docker pull fedora@sha256:b9401f8e79b45fd2850d8f703b053e2aae440a4612cee326dd544f2afc81ad2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77849074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d817addb0eaeb3befa5e097267b2c8342c1d0860ac0ebdf8087afab9463ed635`

```dockerfile
# Wed, 27 Sep 2017 04:18:33 GMT
MAINTAINER [Adam Miller <maxamillion@fedoraproject.org>] [Patrick Uiterwijk <patrick@puiterwijk.org>]
# Wed, 07 Mar 2018 20:53:47 GMT
ENV DISTTAG=frawhidecontainer FGC=frawhide FBR=frawhide
# Wed, 07 Mar 2018 20:54:00 GMT
ADD file:0115aa7f5b9f5d057f4761d533419214dbe96ac857ec3b7e136137a9bda888f3 in / 
```

-	Layers:
	-	`sha256:945bb013cd57692127654c74d7d9382297ede42c049fdd5b9144e5bbcba9f0e0`  
		Last Modified: Wed, 07 Mar 2018 20:56:49 GMT  
		Size: 77.8 MB (77849074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

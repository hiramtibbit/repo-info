## `fedora:rawhide`

```console
$ docker pull fedora@sha256:d10782672ea72886f34f71cd3d38a209cf5dc9a3cae9e323e110535bb8dd9e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `fedora:rawhide` - linux; amd64

```console
$ docker pull fedora@sha256:9a5c00c5f30048796bc928059800ddb993746763eaf2cf74947edb95e1651ae5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86414097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415235e739665b475617c33ba777e69151705e9a66fbf87eca2b2b8bf8493a2d`

```dockerfile
# Fri, 07 Sep 2018 14:42:43 GMT
MAINTAINER [Adam Miller <maxamillion@fedoraproject.org>] [Patrick Uiterwijk <patrick@puiterwijk.org>]
# Fri, 07 Sep 2018 19:19:36 GMT
ENV DISTTAG=f30container FGC=f30 FBR=f30
# Fri, 07 Sep 2018 19:19:44 GMT
ADD file:14e7152f5c9c1d7c368cb2226808c7afb73baa5bdbc06faf21b6bec2446ab314 in / 
```

-	Layers:
	-	`sha256:478ff666c3b2a5520a10d26fd052ea21e21fd40119de257fd77b42ddd70af0aa`  
		Last Modified: Fri, 07 Sep 2018 19:20:51 GMT  
		Size: 86.4 MB (86414097 bytes)  
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

### `fedora:rawhide` - linux; arm64 variant v8

```console
$ docker pull fedora@sha256:a7399c42da4e53499d66fb5080cfcebe2feda0bd925e790f01e2355299a97325
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81751611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e05b135ca2904fa2d8688eef552db941276d1e93600f88a1394d1d4632c77c2`

```dockerfile
# Fri, 21 Jul 2017 05:00:22 GMT
MAINTAINER [Adam Miller <maxamillion@fedoraproject.org>] [Patrick Uiterwijk <patrick@puiterwijk.org>]
# Thu, 08 Mar 2018 06:02:33 GMT
ENV DISTTAG=frawhidecontainer FGC=frawhide FBR=frawhide
# Thu, 08 Mar 2018 06:02:49 GMT
ADD file:20367e058f0c7067d189bb6f762f2ef33cfc16f789cbd24d69c72b422b0cacc4 in / 
```

-	Layers:
	-	`sha256:08dac2f1132fd7ef833f657cadfadc71cc1b8ebeb9a041ddbba2bb323d2c2f66`  
		Last Modified: Thu, 08 Mar 2018 06:06:36 GMT  
		Size: 81.8 MB (81751611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fedora:rawhide` - linux; ppc64le

```console
$ docker pull fedora@sha256:7ad01b7c87111bd09b74c3319b294151219f0f534ec9d9df868cac07261b5177
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91925469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e243c6761e00c98c021dab2d0e0b3a63d30ac04de8423360897b223710031d89`

```dockerfile
# Fri, 21 Jul 2017 12:02:14 GMT
MAINTAINER [Adam Miller <maxamillion@fedoraproject.org>] [Patrick Uiterwijk <patrick@puiterwijk.org>]
# Sat, 08 Sep 2018 08:23:39 GMT
ENV DISTTAG=f30container FGC=f30 FBR=f30
# Sat, 08 Sep 2018 08:23:51 GMT
ADD file:60370fcfb05246a7e6eeb3788666202cc5f6cab7a9c276dda69eea4a871c5fbc in / 
```

-	Layers:
	-	`sha256:6b1801b9dc7fd57c632087837b9965e79de91339e13dd5b7e6e354eb12545a1e`  
		Last Modified: Sat, 08 Sep 2018 08:25:32 GMT  
		Size: 91.9 MB (91925469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

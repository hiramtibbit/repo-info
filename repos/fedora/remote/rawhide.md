## `fedora:rawhide`

```console
$ docker pull fedora@sha256:54f087ac45c28e66de08a35dcf67dd7bf7d27a205b35206b190c0ec1aa421f9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `fedora:rawhide` - linux; amd64

```console
$ docker pull fedora@sha256:e5f8c40f18eec96a837f4ef58b9df80be67bd5733af13c15b910757ecfd77d64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90480262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e7c38e510ee208f5476349cc264931f31eaa17ae4291313396e484412ee0a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Jan 2019 21:21:55 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Tue, 12 Mar 2019 00:20:46 GMT
ENV DISTTAG=f31container FGC=f31 FBR=f31
# Wed, 03 Apr 2019 22:21:10 GMT
ADD file:7316b0ee55fe19acc6bcfc5f6dc5c205475596dc32ea1dad911f990428b14ce8 in / 
# Wed, 03 Apr 2019 22:21:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:32b2bee0e79bc7112b4fd8def6a57ff2c04bacd4df1352be492f5aeba89deb61`  
		Last Modified: Wed, 03 Apr 2019 22:22:10 GMT  
		Size: 90.5 MB (90480262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fedora:rawhide` - linux; arm64 variant v8

```console
$ docker pull fedora@sha256:2d96a130f93dc1dfea25601156a0f6fc5a16975faf44100303408aee81fc7ed0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90544617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe331a0ddc1d8b793f4dcf7fe282b3bfcbc734f1593d63ee7aba3c79ba3c5a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Jan 2019 09:42:52 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Thu, 04 Apr 2019 08:51:11 GMT
ENV DISTTAG=f31container FGC=f31 FBR=f31
# Thu, 04 Apr 2019 08:51:33 GMT
ADD file:64ad15824a0dc91bea110757a7a4a67182951485d2fcce53d98f7e5529197413 in / 
# Thu, 04 Apr 2019 08:51:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:38730dd54caeb562512f548a6fda40e80d3bf09aa93c362cb79f6d21a83c4587`  
		Last Modified: Thu, 04 Apr 2019 08:53:14 GMT  
		Size: 90.5 MB (90544617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fedora:rawhide` - linux; ppc64le

```console
$ docker pull fedora@sha256:a5b9f2718c271c1752872b1281dabb00cefefcdd584eca2c8d4c2ae3d6942c6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95715900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a8857d2349d59e4165e3e7f0f80e823bdb3d802a837ed4b77a7bdfc54c160d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Jan 2019 09:23:17 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Thu, 04 Apr 2019 08:20:12 GMT
ENV DISTTAG=f31container FGC=f31 FBR=f31
# Thu, 04 Apr 2019 08:20:26 GMT
ADD file:18726dd4fb43618ca4696adbf1ecf3f5ba79fd672890da8068a72038195fe0a6 in / 
# Thu, 04 Apr 2019 08:20:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6a7ec5a882ee668a0d7c850dc89b34455cefb16494679670596f231d143b0580`  
		Last Modified: Thu, 04 Apr 2019 08:22:07 GMT  
		Size: 95.7 MB (95715900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

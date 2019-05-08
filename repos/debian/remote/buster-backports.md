## `debian:buster-backports`

```console
$ docker pull debian@sha256:e7d5bc289ef3468b8e719e41551d90f1d70c614b29a89f18cabc31e88fc234d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `debian:buster-backports` - linux; amd64

```console
$ docker pull debian@sha256:e251202e8d3b824a06c0b08ffd6d6a3633340ab402ab071a8c7d7f692bfbe498
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50281675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51de01f91caf472a63486d9972f916a4411b0ba281f7d79e2305180efa44eac6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:28:53 GMT
ADD file:1206af08b0982cf51772ede1bb826b30be8426cadc52014207fcddd1dce1a006 in / 
# Wed, 08 May 2019 00:28:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 00:29:03 GMT
RUN echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:78496f898f92b99fe2e84608b2142ab03f43c7f16be3ef2e394b7c61b0ae4f7f`  
		Last Modified: Wed, 08 May 2019 00:35:29 GMT  
		Size: 50.3 MB (50281451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c567bb065eb12b57705cf9fcadcd37cb5f434a457d5502c613b2940078e10df0`  
		Last Modified: Wed, 08 May 2019 00:35:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

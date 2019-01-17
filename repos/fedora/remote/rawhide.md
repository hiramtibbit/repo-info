## `fedora:rawhide`

```console
$ docker pull fedora@sha256:95024b6443ea436e5c01e3ee11170d5352d092faac0b83b5559fdb28fa428c7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fedora:rawhide` - linux; amd64

```console
$ docker pull fedora@sha256:46a5c51fdd42158de55c2b3f12ba3bc0cead8be5aba10b5d682cbf51c8662ce0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89874363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160df510aafd85c41400153f8b2729a4207fc0f8c408b439a7d6e913f391d6a0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Jan 2019 21:21:55 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Wed, 16 Jan 2019 21:21:55 GMT
ENV DISTTAG=f30container FGC=f30 FBR=f30
# Wed, 16 Jan 2019 21:22:04 GMT
ADD file:d1a92a0aa45bfe3463d60940fdf3310a5a1742ef073627db9f9446e946414beb in / 
# Wed, 16 Jan 2019 21:22:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:e4ac2becf1251bbc5e229a1f6ced60ebef3ab0d1b980ac34689976006e47c83c`  
		Last Modified: Wed, 09 Jan 2019 22:23:28 GMT  
		Size: 89.9 MB (89874363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fedora:rawhide` - linux; arm64 variant v8

```console
$ docker pull fedora@sha256:631eb36450a6c463c59608354f1cb30a26df8e5e78587394f903867047ace593
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (88993299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d5c01995405591ec5a07b2f47cc062e219c1e16df1ef617506e07f99f8f784`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Jan 2019 09:42:52 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Thu, 17 Jan 2019 09:42:53 GMT
ENV DISTTAG=f30container FGC=f30 FBR=f30
# Thu, 17 Jan 2019 09:43:15 GMT
ADD file:5e5cc37e2b9fbf0f6dd71c546d6741b4e63ac6a1b350b06ae5bab9aade32f0d5 in / 
# Thu, 17 Jan 2019 09:43:16 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:44117a607e2f013315f16c9ef51336bdfdf1bee73a0184e6804186bf70ae710c`  
		Last Modified: Thu, 10 Jan 2019 10:09:07 GMT  
		Size: 89.0 MB (88993299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

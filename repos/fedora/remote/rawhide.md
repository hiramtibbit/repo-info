## `fedora:rawhide`

```console
$ docker pull fedora@sha256:9a52bf95db314e3f9dc3e02d20b776ad60390dc5a338cf3ed5227f2ac0ab94dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fedora:rawhide` - linux; amd64

```console
$ docker pull fedora@sha256:09bcfdcd46c3c5b10d6ae182603189a1b7e20db59676d787dad64046fafd961b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90218575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2065c021750bfa8b1530d2cce08dffda03f0fbe5fba4f21b29fc8e909954a9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Jan 2019 21:21:55 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Wed, 16 Jan 2019 21:21:55 GMT
ENV DISTTAG=f30container FGC=f30 FBR=f30
# Tue, 19 Feb 2019 22:21:26 GMT
ADD file:43a68ec0ef9a603cb483a9cb4adf18acb34eff0be5649845d548ae1e0f4bb485 in / 
# Tue, 19 Feb 2019 22:21:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5febb71956a8a1e639ab932cbe6907699c112374a3d62eff9a3704c350974fb2`  
		Last Modified: Tue, 19 Feb 2019 22:23:42 GMT  
		Size: 90.2 MB (90218575 bytes)  
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

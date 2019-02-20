## `fedora:rawhide`

```console
$ docker pull fedora@sha256:0a3e86509454b451faeb7e8cbf86232af539e23f2dbffc36150a2054cb14766d
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
$ docker pull fedora@sha256:15e2256b9d61ef006a9279356a3d910d515372320ad2be49dde11debeb5ebead
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90287269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf94798f322214a8d663285d4ee7556137750d4cbd078c49fedd253a78a5ad1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Jan 2019 09:42:52 GMT
LABEL maintainer=Clement Verna <cverna@fedoraproject.org>
# Thu, 17 Jan 2019 09:42:53 GMT
ENV DISTTAG=f30container FGC=f30 FBR=f30
# Wed, 20 Feb 2019 09:43:36 GMT
ADD file:ee97a5bc6e57e9baadb587ae12b942a462bc63af03efe24455ae0c5c8bd8ce61 in / 
# Wed, 20 Feb 2019 09:43:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7f480264633e26f2eac1eb129280b0c3d89f847ad6d6777848f25386c5fe2c80`  
		Last Modified: Wed, 20 Feb 2019 09:45:36 GMT  
		Size: 90.3 MB (90287269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

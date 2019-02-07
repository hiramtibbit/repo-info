## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:e8cd9321cafb881ed3b1676cee50b6b2e7ccddd0fa50d640185d8e70a627bc6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:adcef1e1bd67959685f7e387a047272165eb7238132742816702b4aeaf95db73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19737b1e94c9e3aca8473352135207fe07aaca714f5b7cbb09df9fb8a20349e3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:54 GMT
ADD file:640ca35c5d18a4bf573ae46f0bc1cd128f20e893b1451312d9def38da0a8c075 in / 
# Wed, 06 Feb 2019 03:27:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:27:58 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e846b6d701b77e2ae343d80853d39edda81831d6da50ca5e5c12c3f16563dfec`  
		Last Modified: Wed, 06 Feb 2019 03:33:52 GMT  
		Size: 39.3 MB (39339704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5773a1f80dd4b0d12a9b9e11fd52e127ac1da6ae83775c119e68cd5848dd6d4d`  
		Last Modified: Wed, 06 Feb 2019 03:33:57 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:9f3eea4604b99f7112690d8b00a4e4dbd05d9909f8c7c87ff299e51fbc28eb7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171a9d238826611aef8b22992f707bcd1785f3d1e62c7e29198a8ade117ce8f6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:51:17 GMT
ADD file:81923521acd6c85c5582607cb63e83828ed78e10b40730fbfb53f11f59942633 in / 
# Wed, 06 Feb 2019 09:51:18 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e0698344fa8c17c426ba669db053cd212a2755bdf4b8cc32f2aaa0a6332be29e`  
		Last Modified: Wed, 06 Feb 2019 10:01:01 GMT  
		Size: 38.0 MB (37992178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8fc075df13e6d4f1b76508e5782ec75fca524637e4393c5c3d9cfc99821102`  
		Last Modified: Wed, 06 Feb 2019 10:01:07 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:b2c40b6b4684ee1194e03a6d3fe3004675afe81f7bdda476021c03c225a56b2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3554ccd8563cf9b6640118a510fbbdfab1894464eb1ef2e4254ccc1f76f64199`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 12:59:50 GMT
ADD file:1310b8b79070a63cea5edef28ff185c3e50fc3d23e2c00622da1e86d91b866a2 in / 
# Thu, 07 Feb 2019 12:59:51 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 12:59:58 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:15fd9fcf19ec0a9bc730fd65dc97fa011589285b4e2a6119b1d583b534d4368c`  
		Last Modified: Thu, 07 Feb 2019 13:08:08 GMT  
		Size: 36.6 MB (36619999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee75acca55315907d269106f2e0c00ac817252681fcfe3133180bde799405441`  
		Last Modified: Thu, 07 Feb 2019 13:08:14 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:0085d6768ca2c10c9ea1d6d99d3ad2dd834a89d12f9ec4007ae2104ce5b5034a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cc5340a3ba550838335f1d75ca264bf32de711f3ef8af372796d4a3d44cace5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:59:13 GMT
ADD file:8ced53f0ac3d451d3b35ea63b3990b70e68c8f18053f25315640d5f75a13e8fd in / 
# Wed, 06 Feb 2019 11:59:14 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:59:19 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e2df997f8a5ac346df15fd5c9703507ca7e1ad585f05b755d613894dd8a94021`  
		Last Modified: Wed, 06 Feb 2019 12:05:04 GMT  
		Size: 40.5 MB (40532785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcad523378d0ebb0402ff34c5d2f3be28207a6895f05257584b8f52a47a98025`  
		Last Modified: Wed, 06 Feb 2019 12:05:08 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

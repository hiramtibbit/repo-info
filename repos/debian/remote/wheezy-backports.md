## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:b3b0da8b6beac4e883863308bb792c01f5ce6f67cd8f231b4f76fbcb3a0467b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:d316c4835584fd9cd9fe89654876fce1e5709fbf043668b6d7022c0e5883ed6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7287061ffbab30322dfb3041668e0c63985bd4f5c57eee15859fd5de5a14494b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 07:38:23 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444735f5128d51abba8a79b18a8320486bc876d74ac54629f7d8c3ba8a663f41`  
		Last Modified: Sat, 28 Apr 2018 10:28:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:1ae99f482f91106326aa1611d6be79cbd489a615cbd6adc115c9693d3ca1d548
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c5a8c741e8859e8745cca5901e2973c1f63da8a52d144d2043abc4395d5f87`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:55:07 GMT
ADD file:f14c9bf141bd73b0d286332a29b3c4fa49008071a0fda1f875d7e19ada3513d1 in / 
# Sat, 28 Apr 2018 08:55:07 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:55:17 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:bce7db7e77372ce5131c53a5f46570bad58af7c504ef2aff30a102963cc0e28f`  
		Last Modified: Sat, 28 Apr 2018 09:04:20 GMT  
		Size: 38.0 MB (37992896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9507a182055146474c02dff22d8e3cbdfff7b7a064376827df163e84d60c429`  
		Last Modified: Sat, 28 Apr 2018 09:04:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:843de0c6fe40045a07de570cf68a873b2ca89b726cef3ee788e959c2da579a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5353e05b3cd11b3d075bd0da1e30102ecae3cb1344cc5d0b23fd837b0de59208`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:07:34 GMT
ADD file:5a45a86b5b17c03113098c8a7a1ee7ebc9c02afa3e33bd3d852c28b6e261697a in / 
# Sat, 28 Apr 2018 12:07:34 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:07:54 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:797f0254107c711da2219d2a3c71bb8815ad9b4e665a165c707561344f88a777`  
		Last Modified: Sat, 28 Apr 2018 12:18:06 GMT  
		Size: 36.6 MB (36620143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1d6295559c398e5f996efe5887a331628db2ebc57f3cc21700cc4ac73ba6da`  
		Last Modified: Sat, 28 Apr 2018 12:18:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:6069129b2b6ea4e98cbb7f4b6975a3d14bf7b5abdf1f06b6034b4116592263bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40532345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344010a56e1f9d4eb7214e6a1de1464f1c7a6db2b16ab7ccbe817858c39fc1c1`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:42:48 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1711698aeacb01bfa6297242515d1c3f2be137c9eb5a574db75c6db50ae32d55`  
		Last Modified: Sat, 28 Apr 2018 10:51:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

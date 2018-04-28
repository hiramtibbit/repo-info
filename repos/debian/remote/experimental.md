## `debian:experimental`

```console
$ docker pull debian@sha256:ae010f4659c29e63dbde82d9601ae42be522ae3e079c5490b58e1dfc20cc8f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:e3b92669975e32cc47e9c4d24a8090e927f89378131beb28e527a0e8a8ad1e28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48303427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07e55d09f0e048613d85602a42c3b6177130bf8fd7ec418a50de5cb34e04b04`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:34:19 GMT
ADD file:4083b281ac0fff9f921dc4ae956315316315bc0886a65d77b31686d67147a249 in / 
# Sat, 28 Apr 2018 07:34:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 07:56:43 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:ae5da26d7cb2cb22d27c9edbae4639e74326f509b5bd8ec5d0cf1491e8e51667`  
		Last Modified: Sat, 28 Apr 2018 09:44:58 GMT  
		Size: 48.3 MB (48303208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df58fe6ff1c9c1b62bd95c01897542bae0cbc639152fb36dbad9c01387e389d3`  
		Last Modified: Sat, 28 Apr 2018 10:30:09 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v5

```console
$ docker pull debian@sha256:179a524c4a8048d09ff6b938dd4bce17066eea26a2e9f9fee9ac900282d115dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46298866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2978a2dce0c151b4b9c34aa49afa8a34be7cc99f9720d9afee6bb4d6306e71`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:54:29 GMT
ADD file:17b061c126454ca374ab63ea49ee17dc949a135324960fd126c2cc1deaafcf71 in / 
# Sat, 28 Apr 2018 08:54:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:55:42 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:122b631d5a73a99c84ca0a6e748dcfbcada0448182714de370624eb542a25ae9`  
		Last Modified: Sat, 28 Apr 2018 09:03:38 GMT  
		Size: 46.3 MB (46298643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc92d383a88a24a9de9292082511e221f5042240b4c20bfe6860ae022b5ee633`  
		Last Modified: Sat, 28 Apr 2018 09:05:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:417c70186f10a4fd6174fab8cc3d78ce6385cfd7034df306ea6ac348049bc330
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44193968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8755cc846305b5967b9cdff1cf58e9f7d236f6c63ace8fc25d0a599841158fe9`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:06:25 GMT
ADD file:423ebc4b648a98a22fae6bc76b3b7da30324d9c9593e9ee4995a3b2e9ca7f122 in / 
# Sat, 28 Apr 2018 12:06:28 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:08:43 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:6bd220d76cdd12aa518f2239d0b27d93e89d78b1ee07b09894ca46fa93511d69`  
		Last Modified: Sat, 28 Apr 2018 12:17:22 GMT  
		Size: 44.2 MB (44193744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fcec63552694478c3d502506b5ced6f3b6b59448db46367ee17fb2783132e7`  
		Last Modified: Sat, 28 Apr 2018 12:19:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:ccaf5842a474f546f0b0c577602bfd67712da010cee22a66f2676e3f095fd3e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45374804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d5298c2099c32759bceba1c5f838d6a660b68a62a69605471111daf4babe12d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:34:05 GMT
ADD file:db90a1c06e5e7127885c516b5dab05c858fe78cb0a8d42696df98b52cb049e97 in / 
# Wed, 14 Mar 2018 17:34:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:35:06 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:80bc260d16d3349686af2cac5029f9de612ff21359b80d7fa3e6e7511259017c`  
		Last Modified: Wed, 14 Mar 2018 17:49:35 GMT  
		Size: 45.4 MB (45374579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f507005271f2f663224f9e58b8b91f0e7056380de94faa3aaa234e69ed21b6a4`  
		Last Modified: Wed, 14 Mar 2018 17:50:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:1f067efe5581cd01c70c3f51e74ea31cf594fdeff709e06bfdc5037e5f4fd255
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49090403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e129ff40d9f7ee41e9303e9666bbb03bfbcbba8e0719411f9833a8b727f4ba`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:22 GMT
ADD file:ca4115de67b5b8b379d94672d63eb2e17c22d05000a64364cdabffef28863f25 in / 
# Sat, 28 Apr 2018 10:42:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:43:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:835d5b361c45112ed795abe584575624e6c8426b11a4f3d517c771ea4e5b7ae4`  
		Last Modified: Sat, 28 Apr 2018 10:50:51 GMT  
		Size: 49.1 MB (49090179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3756dcb938f204c7b21ef37dfa7c2669c4d489b5e3a0f33f93183c8ec0a57eb`  
		Last Modified: Sat, 28 Apr 2018 10:52:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:9d9902fdaba46632564b86d9eb3599b37a16bd0fe32667366529ba49a31dbb40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49755108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6c482865b0fe8715890e1fdf6b7181bed4e2e48954a8e570f03d4f4a6fd13e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:21:49 GMT
ADD file:b7532d932bc3d8bcdaf98c4e6f3e72c8cd3865efd1a41f61d0dafa8d446c46dd in / 
# Sat, 28 Apr 2018 08:21:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:22:21 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:b29b54554a1f4cafd8384c4cb27351d2b27b572cc18015f349650d1bd922feba`  
		Last Modified: Sat, 28 Apr 2018 08:31:51 GMT  
		Size: 49.8 MB (49754887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c62ba9461828da2454c8ba81e6344b7f8581d392db1ddb451b995d45033eb9ab`  
		Last Modified: Sat, 28 Apr 2018 08:32:28 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:0ec3b482f4c40918d6d35f2c6f23e79074a0c47dcb8e900ca0a2cd936ba95813
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47350433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce6a7a4c8513341ba63f5abbbd14563e1dfdf4c854301d783d805b26e4d03d6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:46:15 GMT
ADD file:a6d3304b657334f9e282a7c28379b40d17c077f181559b6ec959c6245facb23d in / 
# Sat, 28 Apr 2018 11:46:16 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:46:42 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:cc0b8fd35da330b60067f2ef55a6642b14770b6bf4d4a2d7c300ddfb1ce291d3`  
		Last Modified: Sat, 28 Apr 2018 11:52:52 GMT  
		Size: 47.4 MB (47350213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75013c4ba6f8919932048096672edd3f0f627315a88cb2c6cbe143f232b55001`  
		Last Modified: Sat, 28 Apr 2018 11:53:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

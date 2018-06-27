## `debian:experimental`

```console
$ docker pull debian@sha256:dbe2c9c15867f38f86fe30472635d3a79c5d82774e96bcc93976e401c5ea35b0
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
$ docker pull debian@sha256:99a18579fcb7571659847639e5fe5ea6e64a91fb8670ebb1ebf441e0f2a233f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48649091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0ebfc2a8da7fd58f64577a395c7be952c904b4dda674106b642e54a6256d55`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:26:30 GMT
ADD file:3ffd65b3d706c724626a70617b220a4755f1ef398d3f7d4d40c92e96ba5c9a34 in / 
# Tue, 26 Jun 2018 21:26:30 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:27:46 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:fa0e1416c506f6f6996177e1bbe4a7104437cc57873c2be5c201b7bfebd2cfcc`  
		Last Modified: Tue, 26 Jun 2018 21:39:36 GMT  
		Size: 48.6 MB (48648872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d034638e8fa82434fcd7086ade3a3fdf677c8348c6bdec772246705ea980778`  
		Last Modified: Tue, 26 Jun 2018 21:42:12 GMT  
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
$ docker pull debian@sha256:618ac53a68ec585050f603f1d36995e5fc6be581af65c5395e7e7f75357b2d71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45610394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25741f6ce4d0f1fe100e6e8f399d375011d2e712c8a7e60aa356baadcd28da5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:36:14 GMT
ADD file:0978cc9f2010c0b604495f432eb79e73e593244dfe41f91431fc02c39fbe069b in / 
# Mon, 30 Apr 2018 23:36:18 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 23:37:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:f7e16f84f82c235fcbb038bfa110c085359675e6a0bd149e01ce65bcb7739e15`  
		Last Modified: Mon, 30 Apr 2018 23:57:54 GMT  
		Size: 45.6 MB (45610172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae0395659c3d4b554a6874f65836a783933729cd415742b59660e461db0e4f0`  
		Last Modified: Mon, 30 Apr 2018 23:59:39 GMT  
		Size: 222.0 B  
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
$ docker pull debian@sha256:71f12fd65bafaeeedf098d78bfadc1a3f06d985997d8d59743ff53dc7633a446
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50117031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27baccd991f41462fcc65bc5b8a552181367029f268be0965455df9376fbe0b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:22:37 GMT
ADD file:57a1f13c0275d8783e249049ed701db8f68905fa240e8c185ec75c1ea379dd32 in / 
# Wed, 27 Jun 2018 08:22:38 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:23:13 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:e4cb845bc3c3cc66cabb0e1f66a2b64b2b4086526748a2f6971715ce73da9199`  
		Last Modified: Wed, 27 Jun 2018 08:33:45 GMT  
		Size: 50.1 MB (50116809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b8cd6ec858c813bb8b8cc2835470e07caa8e2b082a7bd43546cfaaceb67ce9`  
		Last Modified: Wed, 27 Jun 2018 08:34:27 GMT  
		Size: 222.0 B  
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

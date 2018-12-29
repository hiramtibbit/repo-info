## `debian:rc-buggy`

```console
$ docker pull debian@sha256:05c955dfdec39cd2e327c8f2b4fa9438147279b2f23de09b50de165b8c0e1bbd
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

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:ee2aab3e975940299777d86b2163e7b1625f56531cdd5067240090cf17be2310
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49797260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2215263ccb2a879ffad6a75315b9c9bcee9116ac0c5f0ec8309bf8e33f02be4a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:27:16 GMT
ADD file:a8b53d71a5992a0dcc8277eacfbc2320c583cb4afb386a3af91f143319dab415 in / 
# Fri, 28 Dec 2018 23:27:17 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:32:47 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:6d3c280df34afe0f4fab360f1675e991cbd7c97ec4d88098c1ec85ce64746aab`  
		Last Modified: Fri, 28 Dec 2018 23:35:07 GMT  
		Size: 49.8 MB (49797033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a7d2cf117a6a70287ee272ee610e7ec41e2e702233e702edd2feea97744757`  
		Last Modified: Fri, 28 Dec 2018 23:37:15 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v5

```console
$ docker pull debian@sha256:0ffe6c8a64a8913986fcfdecdba419b938c83f6f785ff7c1f84f46074c2ddc8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46931402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef02f9e0d08a68f40beaa77fd5c8f75d212786f45d6e55641fb39d564beff31c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:55:05 GMT
ADD file:8beac90fab79047a99139951c1eb0b26598cb16b3de6be3a6768d30f41e470da in / 
# Fri, 16 Nov 2018 09:55:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:03:05 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:47c89bded53655a08a5ade4bcec2735b8f5ed461132add6b56c91d99d2d43e82`  
		Last Modified: Fri, 16 Nov 2018 10:09:57 GMT  
		Size: 46.9 MB (46931174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150e4680a599c552d0c8af1b6c3411b076d221c5edf10b824d39d9cab4424a63`  
		Last Modified: Fri, 16 Nov 2018 10:18:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:ca64d119739f8ba47c0c405409270cde007c120a7993a073b55aabcbad28d618
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44798147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db056d8ad4433960838cb6e1254b411d9a2ea724051c2ddb0274e545a87175b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:06:12 GMT
ADD file:4182d54a140ffdace3af2db1d2632f4271c1b1754fbc78075c0813d49212e466 in / 
# Fri, 16 Nov 2018 13:06:14 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:13:34 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:fdd94773a9e48362892e21476e28eead609d35afebea9220515e313cc45e9b67`  
		Last Modified: Fri, 16 Nov 2018 13:19:04 GMT  
		Size: 44.8 MB (44797919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b16cd7843daa8326a67762abdae60eb594f368c17097ddeae39c1633e71be3`  
		Last Modified: Fri, 16 Nov 2018 13:26:33 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:4a9b3e4fbadf02ffca39e99c1ac9ad8009475e8046d9a4da4fbd5670ce536769
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47624643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3faa01d7131da68d47185582fdd6c2f77fa282aa902d5e8cbed342d2c0adc99`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:10:09 GMT
ADD file:832a9af57620f627dd172e1887e8dd24971e52fd5eee7d5f5d2a43532d6be776 in / 
# Fri, 16 Nov 2018 10:10:17 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:18:04 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3da09231e583a9a3b7103f6be2d0679bc461005f2d2ff624366b0eb98f3dbfd5`  
		Last Modified: Thu, 15 Nov 2018 01:31:37 GMT  
		Size: 47.6 MB (47624414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e55b40bb4d062b8440eb3ec69067e9c415ca26c8ad98c9dd7a6d1f04754dce`  
		Last Modified: Fri, 16 Nov 2018 10:30:55 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:30da7e5a5ccd602f744840479113acd319e35c57e68038ff8e1a669c6d060610
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49936745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf6b13290b021cead22e9599799c73ba80fb28a303fff7e626486d3c6fcb195`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:32:10 GMT
ADD file:35a7a6d82265a9aaaa338d026c69123fcf5a876f04c62aa8b8576e728eb2d703 in / 
# Fri, 16 Nov 2018 12:32:10 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:43:17 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:aa30602b1807a2d186d63c50f118d4f15cb29b1b571140414c0bfc373476f654`  
		Last Modified: Thu, 15 Nov 2018 01:33:39 GMT  
		Size: 49.9 MB (49936516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883b4484e88eb27218beb4b118a9546a26d966a8ac4e1b72aa65f196de8bcbfd`  
		Last Modified: Fri, 16 Nov 2018 13:09:31 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:d3da8573e60e70c3dcda9dc2cd6dd945770ede141419f1487debd52deb67c3f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53407427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d90dc56313a0cadd5d7f5d2a6be2e2d20350201bb49e80a86a2791e87ef65f1f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:20:43 GMT
ADD file:2554b79107be415058aa9583ae616c4dbdf53850afe279b6b57c6f4d6cc9b0b1 in / 
# Sat, 29 Dec 2018 09:20:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:24:08 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:3e4b2e95f4e41a9cad6c746f1dc0185d059f9b9eacd1287be8d39d0709e4182f`  
		Last Modified: Sat, 29 Dec 2018 09:26:10 GMT  
		Size: 53.4 MB (53407199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9990a6aae57ac594acfeadbd67480d7b6c12ed63ac305fc7940cec1080ab9ef6`  
		Last Modified: Sat, 29 Dec 2018 09:30:48 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:2b726f14bbf62cada3c862e0618d9c557ad675082283735bc0ef7fff4d7c288b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47868713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5962f38368cc02f28134346a168af9d05eb1ad08382262ace1ed7987eecb553c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:42:33 GMT
ADD file:77fbcf3a7fd8e7c1d35c9b0144f5dcef5228f477c512b3de313b5f9f8106c20b in / 
# Fri, 16 Nov 2018 12:42:34 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:46:04 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list
```

-	Layers:
	-	`sha256:b5f718c394fe29f847c837a4abaeea5358350a23da072857d9a17d7b3f835ba6`  
		Last Modified: Thu, 15 Nov 2018 01:49:01 GMT  
		Size: 47.9 MB (47868485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc3a8114be40847141c02703e42e18ae6106ee910018316d179749fb23f0cf8`  
		Last Modified: Fri, 16 Nov 2018 12:50:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

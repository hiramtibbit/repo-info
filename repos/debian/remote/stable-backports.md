## `debian:stable-backports`

```console
$ docker pull debian@sha256:87ca4b3fb4edb343c35a9c65857c87ad199e1b26001a24b649641a5939662d60
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

### `debian:stable-backports` - linux; amd64

```console
$ docker pull debian@sha256:6388aa6002be90b2d9bb953d734f6b50991573515d1eff6915bd2c3bbdca4e10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45310281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda89114800e65f808e5192d058eecdb27174229757a137a577a3cfe5734e71e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:25:45 GMT
ADD file:91954f8a9024c6f24b9b0309d74bc186c41d33ab5346fea8c79660ea2b103cea in / 
# Tue, 17 Jul 2018 00:25:46 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:26:00 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1c8cd0d53782e160fc268d68bfa16885da3c12045d352123d7c692ce1087b19f`  
		Last Modified: Tue, 17 Jul 2018 00:41:01 GMT  
		Size: 45.3 MB (45310059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a62e321ea482a3b4cec72a9e6dc3af86fe8b12dce3c10530a29242a926eb70e`  
		Last Modified: Tue, 17 Jul 2018 00:41:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:fa1a028b4de10704840398becb19a39bf0913f1da85d58e2c53f42f5fb315ac4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44040320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aeabce92c526b11f931086cc84a6373522ce417714b594985d17637d22e094e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:52:51 GMT
ADD file:bfb59380d0d227c68febf7be6e659557a05165fad2a2944bed89747eed065419 in / 
# Wed, 27 Jun 2018 08:52:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:53:01 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:570731446f888f87385974befa0683852fb78c8cbad269ce0c8d134e09cb5135`  
		Last Modified: Wed, 27 Jun 2018 09:01:48 GMT  
		Size: 44.0 MB (44040099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f38f207cda6c9f779cbe193ae2eea384802a3f9d409d75854f6b959320a946`  
		Last Modified: Wed, 27 Jun 2018 09:02:01 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:1dc7f139d26126437bc49d76c07516e8dc279eda0ecb2c4f2157646e9808c5b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42062452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f603fee4a3a2084d32a8d360d1a52f2c24c2d2736877f061d8f4135be2b2ef`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:02:39 GMT
ADD file:32aa76c3483facd92d6670cf099f3931ef65b4f7f5afbe860b74d2f3dfb14c4b in / 
# Wed, 27 Jun 2018 12:02:40 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:02:48 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a73b8dfa7fa57bd55605e5ee364fa422cac09e7668e1d775db89f0bcde53794f`  
		Last Modified: Wed, 27 Jun 2018 12:11:57 GMT  
		Size: 42.1 MB (42062228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d751d9871890c643c94d845b6c662a897326a2d946e11e3e0b622a1ae94129ec`  
		Last Modified: Wed, 27 Jun 2018 12:12:14 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:5d1671922782ce420bc2fad7bb00834a3788c0896ffb1c449f291ab404c6fd82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43115990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5bb55abe0da34db5854e7183806282abe666dddba32d098e09840ced5a56751`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:45:49 GMT
ADD file:ca9fe408de140de013bc09da783641f42f17dc205c656f3a117e907be67c7ba7 in / 
# Wed, 27 Jun 2018 08:45:50 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:46:03 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a85bff8618d94cf081e53bf469d3776f92944b97880ac24304db9390bf997a76`  
		Last Modified: Wed, 27 Jun 2018 08:56:23 GMT  
		Size: 43.1 MB (43115768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf3c5c8312136fd8cf2ef8c2ad9532b22de3986ff2b2e2be9a01fe9b7831f39`  
		Last Modified: Wed, 27 Jun 2018 08:56:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:1ce2b869968e8702095cea5c269ad2153559d007a02659ca0ef7691763681ec9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46043747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f4ec957d00a2b3c47f4fd5f696ece9bbc7ed39a56cf84a1459d4ace6531603`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:45:06 GMT
ADD file:d7555ed873762dfba7b7e0ad7d5477ad5094821fe7b679839d92ee797b75230f in / 
# Wed, 27 Jun 2018 10:45:06 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:45:17 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b473c2282a56a9fc6a9b10ec8952882a5ed1398923868c3eb5e61480b46c114c`  
		Last Modified: Wed, 27 Jun 2018 11:08:56 GMT  
		Size: 46.0 MB (46043522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48db78d2dfc27523eb4d5ef5eafb9ad4d7f2fbb54715da894aa268789b973691`  
		Last Modified: Wed, 27 Jun 2018 11:09:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:adf1aab3429a08bb3cbeab61d783fc96135742e13e540b9441665d7b235269e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45587290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e714421381c6af16d4993ca864f25b5aba840d136bef883e9b056830a17601f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:20:05 GMT
ADD file:26ca3f7698124193e2e46f45266ff63edcbc5997802a42a42c37c57038d4fdec in / 
# Wed, 27 Jun 2018 08:20:06 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 08:20:20 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7b622dfe9e283580b1d0897f9d271f34ffd3ce32a8382ec200f43103a8fb7f09`  
		Last Modified: Wed, 27 Jun 2018 08:29:41 GMT  
		Size: 45.6 MB (45587064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acba81c063e4df644634c9d7820eac6865afe7c933bf80116a4640f055d3e88e`  
		Last Modified: Wed, 27 Jun 2018 08:30:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:e23350718222c28817a5356472494e99b37b090c24773827aaebac6310fa04db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45181620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d83c0d8ae456c5fbbb1ceaafc24c07b85137ecf09d085e247bb0b0056ff5ca4a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:10 GMT
ADD file:f268d5c30fa4ef52cd1bc6c6a50caec18cced2f6883f8e8759c86d4e66180286 in / 
# Wed, 27 Jun 2018 11:48:10 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:48:15 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:03203ff467f9f7b861a3d5b7ead655455fc7af93b5c9e7fd377ab00e8cf35bba`  
		Last Modified: Wed, 27 Jun 2018 11:52:37 GMT  
		Size: 45.2 MB (45181398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab3cd5858336cfc1b293918967897106d268faf47a1710cd31cf33ce95250f5`  
		Last Modified: Wed, 27 Jun 2018 11:52:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `debian:stable-backports`

```console
$ docker pull debian@sha256:987c261ca0929f6272b37a199692e0d20fc226765312911fc0509d64a6eea060
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
$ docker pull debian@sha256:3e8eafa82655920cd6c26a76ac7296f14005ac809a5642396ac60476a022c152
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44033249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfef60188a0119c60c8313af6d55224eb8e8359a5b9b79e5707e37aed8a5f1d2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:54:47 GMT
ADD file:2310de80a0689b36e7b18c3635edf2a8b2ba66e8934e1bf26af266faaf8c092f in / 
# Tue, 17 Jul 2018 08:54:47 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:55:02 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6ccba4a0209aed63738bfb5511cd6575549cf1f95ac002aa9b7cceb159854337`  
		Last Modified: Tue, 17 Jul 2018 09:07:08 GMT  
		Size: 44.0 MB (44033025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b0aa538a96c2bf534d818d13d69e13693203fe63f997113d77337a3b6d21f3`  
		Last Modified: Tue, 17 Jul 2018 09:07:26 GMT  
		Size: 224.0 B  
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
$ docker pull debian@sha256:786436569df7b56b6b8a8096a2c145de784feeac532d94606e55c65117f6feac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43123717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655318b860198af5190d3259b8ec5753bb8503a5396be5386522b443bf2d93f2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:45:21 GMT
ADD file:34531bcb251fa6c8718b662413d329b11b5e1aa32051a70ed3030aeb849a8168 in / 
# Tue, 17 Jul 2018 08:45:25 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:45:57 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2ff35a7795e30fb09536c0246c89f31452642aa50e341c7c6779725e38c1339a`  
		Last Modified: Tue, 17 Jul 2018 08:54:25 GMT  
		Size: 43.1 MB (43123493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15592220bae254f18488cb7ee0a7ee8fe885749928820d52ad6e167ac0465fb6`  
		Last Modified: Tue, 17 Jul 2018 08:55:03 GMT  
		Size: 224.0 B  
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
$ docker pull debian@sha256:84a833f19e79580ec408be4798d6a1f23c263d0002ab5b5ebc2a78353bd66d7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45594253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebefc6f410e22723361d26a49b26aaf863ef9a4799d61cc6648ab0f3be5ef11a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:19:12 GMT
ADD file:90d56f6ae554f71d63ce107211da9f83bf083a5eab99b7d83fd8188255506ac3 in / 
# Tue, 17 Jul 2018 08:19:17 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:19:37 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:efd740c24313c6c384c21b79636521362cbecf5bc6d1aec6369d8b78541886d7`  
		Last Modified: Tue, 17 Jul 2018 08:24:35 GMT  
		Size: 45.6 MB (45594032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb485d2e7c3cda0d45af08d83c8659436c1c6f517c80649d380b2575c7293637`  
		Last Modified: Tue, 17 Jul 2018 08:24:51 GMT  
		Size: 221.0 B  
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

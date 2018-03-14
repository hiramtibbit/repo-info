## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:3da1600a33a5b4975e258ba826921c26af620996ba74540794039559bab7303d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:2bcb5cbd0b83bac2a30da0afc50e287f373000a5e68aafeb7d0a9343260656fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38111726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb288dc670731ed10b51ed39b8cfa4ca8d93c70eaa3f304bcc77cb7365ff932a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:47 GMT
ADD file:72114667a88f255f3336e8e7e00e04569c8a10d1ceea972d1cfd37a0049fad4e in / 
# Tue, 13 Mar 2018 21:58:47 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 21:59:03 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2c598bcd73ee24119ac035a99b28bf6c0c24c009618c24b3cc981b033c8fcf6b`  
		Last Modified: Tue, 13 Mar 2018 22:46:21 GMT  
		Size: 38.1 MB (38111500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99d2f9ef203434f8f7af86eb2bfc5989383aff834aca7fdb3ddc234273bc499`  
		Last Modified: Tue, 13 Mar 2018 22:46:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:f506253f59eafc949cef5c4b5a72a90333d14ce1f406b79311f41627c179a8a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36948767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cc70083ea3753f5bafcf46a52551c6f367982d73c3c5433a18d54e77c0a818`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:52 GMT
ADD file:9028c067965c29e9dd7cc282af1300667c6e4849a16c33c55c679183e347670d in / 
# Thu, 15 Feb 2018 20:56:52 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:57:02 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4d4461cd56776d12f3f09517c8ddf3a3d5b73ceab72801598611434283f8c973`  
		Last Modified: Thu, 15 Feb 2018 21:06:03 GMT  
		Size: 36.9 MB (36948539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be9656d8c8696df27cf61689eb92877bedb8e576c3eb353cb4d7f759635f270`  
		Last Modified: Thu, 15 Feb 2018 21:06:21 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:6d153ee6324fc94e1c584cc1d3e5387c3ad56551fb457c85104004559a6ddc1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35662073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afbba8c8ee1effe3484289ab7805a1d7f8d6d83d2a3a8d5b83889117ac8e9cf5`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 13:27:25 GMT
ADD file:ab4b79c1f755aa62c22c8b9d863d0be4ab5d2f3afc72525edd41647f7abc0d2f in / 
# Thu, 15 Feb 2018 13:27:25 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 13:27:35 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:31919fb769d7bf0c8735b9e3885d1c1cae5081235a05106ee08248fb91f7527c`  
		Last Modified: Thu, 15 Feb 2018 13:37:07 GMT  
		Size: 35.7 MB (35661843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725f963306d1d6aef9152d910f6000858482758118df493d2f6d666b02ffd394`  
		Last Modified: Thu, 15 Feb 2018 13:37:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:94c1f1dbf18b84218dc2be90ac9dfeef62883937a6d54ea9f1dd2437d970f954
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37439365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb0b8c5dcb011694ecf75d7538a7ee76610786a6ad0ed89c4acedaf919c3a65e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 15:17:53 GMT
ADD file:5013fe4518a87a71c078ad7be1a8d6985a9c760cbe3609dbadba829033bb3dea in / 
# Thu, 15 Feb 2018 15:17:54 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:28:14 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9ce91732a4f9c8d84a38720f39ded8893ec757ffdc54777343fb3c9aa2ed85ca`  
		Last Modified: Thu, 15 Feb 2018 23:03:05 GMT  
		Size: 37.4 MB (37439135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c5a26849c3fe3801f22f5e6a0a9ab5b9d922807818c187f87b2bba0b777ab0`  
		Last Modified: Thu, 15 Feb 2018 23:34:47 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

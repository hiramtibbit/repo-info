## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:475035210e8277b1d165e5f619ee08b71c800a4610023b91a8550028faecd739
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
$ docker pull debian@sha256:33c5aed8274159e77660693799efc2ce066f221deb2ef743365eb83cf73cffb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36949908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee8d42ef7c9255f0c0ac11524d350b65c4002bd647193ff2d7368940c6be4d5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:56:43 GMT
ADD file:7ee8d0cf4d4c4439b41ea3a8191ec94e1e3fc84da1c0d3f96d998146faef707a in / 
# Wed, 14 Mar 2018 19:56:44 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:56:56 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7ddf372ce56170845e4c84daa3ec3817618f28d27a68d4aba4f6b08ba953d328`  
		Last Modified: Wed, 14 Mar 2018 20:08:14 GMT  
		Size: 36.9 MB (36949682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d735f85b6d490eb443e5c537a941adfd369b2364314afe71d2e6af94551401`  
		Last Modified: Wed, 14 Mar 2018 20:08:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:6b6245bda6ca5c644e88598a9d8a93e738bdf3f0d5ed82a91c9d3b1e9889a9d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35662768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83bbf37d90731b198be0e64cd79de0072ad4a8b1525873f8f676fa78bd62cdb9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:59 GMT
ADD file:8e9bb7236e3340065a6d4b2c027ca27d864573739642dc8f5ef07bd4759d4adc in / 
# Wed, 14 Mar 2018 12:28:00 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:28:14 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b9d6bb805d51b835026e96fb57fcde47680ab79092168b3332d121224ed3d399`  
		Last Modified: Wed, 14 Mar 2018 12:40:02 GMT  
		Size: 35.7 MB (35662542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1480cc94e5ac37facbad89d712476598c61c8c544d6bae19f9eeed6fccc066`  
		Last Modified: Wed, 14 Mar 2018 12:40:25 GMT  
		Size: 226.0 B  
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

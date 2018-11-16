## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:0f52b198943f5f256e994c174bd386cd16168875b97307c6fb0f67159442a582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:d71ee796584e582b073f197bfe09b870fdb7ae8a96012ee06d4e6dadffb9dd92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54358069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3721a925cdc5feef5feec9cd734711318b23f8d399511681aad78093ebc86efc`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:36:58 GMT
ADD file:c416aceeaef8953e3b2b9b510bb63159e2024d99667443f4479ba9dc833ba46c in / 
# Thu, 15 Nov 2018 22:37:06 GMT
CMD ["bash"]
# Thu, 15 Nov 2018 22:37:34 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:d5de20d739e69a9b2fa529b601ed265dcdcdaa769d38a855356b412138556aae`  
		Last Modified: Thu, 15 Nov 2018 23:01:06 GMT  
		Size: 54.4 MB (54357845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d6f49d698064202ef329d71c867d96e4e65795e64aaef92216715b3ca6c51e`  
		Last Modified: Thu, 15 Nov 2018 23:02:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:49c0d3eef6f3261faf620348c5ebe0ef843762f4a0e31caf10d5b023d6202fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52544831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98561ac9518e01f5783a6ed627cb4fcd0fe0e59bb63e54ac87865078569864ec`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:53:30 GMT
ADD file:6e252851bcefd4996469d9c16637138976a9fd909e2e2c80bc3cab51323ed9dd in / 
# Fri, 16 Nov 2018 09:53:31 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:53:47 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2f12afb09cd1b03121122ec1375e1e7c35f7ca4d563e3da0d745cd21db70c095`  
		Last Modified: Fri, 16 Nov 2018 10:08:42 GMT  
		Size: 52.5 MB (52544606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ce37b0648c04a6e8e94990f41acf22960d247f8e41fa0332219cf2bad24cb8`  
		Last Modified: Fri, 16 Nov 2018 10:09:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:d29b3bba52bf40db8e0109eb92c5aaaa543ba36ee17cb35643470ccad2b02724
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50279815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d87631ceecda673674376a373c7e2330d7f700c65cff39f72c98c5fcc4c71cd`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:04:43 GMT
ADD file:2d479c42d3875379c0bb0875d63bedb5720f8eca4a98b67b528ec8bf9d853ac8 in / 
# Fri, 16 Nov 2018 13:04:44 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:04:59 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:172c27d99a2f7ed24f0b00fa643b606b1eab0aa2ba3c1441af98fa1dc652642c`  
		Last Modified: Fri, 16 Nov 2018 13:17:58 GMT  
		Size: 50.3 MB (50279588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475771c922d0a3106e1267a64d38190a722742f1548e0ff4668f5df455fcb1ae`  
		Last Modified: Fri, 16 Nov 2018 13:18:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:d177b950f1da95d9bc7b09ce1a41a6d83386d1dec99b9b26e57e72e158e03ad2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54585079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f42174d57d68e665851f7a4f536f764756d744d6c23ac8c17e6a3ffb83416505`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:29:58 GMT
ADD file:7b798740b312ac2014f2e8c1f2a27453ad0dbdf47aeba822d777144e70534cf5 in / 
# Fri, 16 Nov 2018 12:29:58 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:30:24 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0566741bf68e5a93f5c821fb4f196bcd4c563ad0d4b9447b41015f3b4780b91e`  
		Last Modified: Fri, 16 Nov 2018 12:51:52 GMT  
		Size: 54.6 MB (54584851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a95c2c124225c4507b96cebddffe693ed7e4aa24d4373787a64d0a0d111b5ff`  
		Last Modified: Fri, 16 Nov 2018 12:52:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

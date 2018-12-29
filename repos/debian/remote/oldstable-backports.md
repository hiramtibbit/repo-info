## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:e010d4f4e4f1da5efd032527e1221fd92189cf535466b2119d57b5988398338b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:8a27d206b435cf02900555db7c7c0ec04998f9c06f9127a04618c5fdb1040a81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54387358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e126f0b28204b29b8906bfb76e445a8d13a9d106a5ee38a13b45d26e47edc264`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:43 GMT
ADD file:00999723bb63909a7eda0aeba935a5b63175972941887b767912e0e6532d6655 in / 
# Fri, 28 Dec 2018 23:25:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:25:47 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:cb6efa474a10348d1429b9eaaf30ee24568546530bdbbcdba240d5d03306eed4`  
		Last Modified: Fri, 28 Dec 2018 23:34:42 GMT  
		Size: 54.4 MB (54387132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2389c91078e4c81e4f06eb5d95a447472e8bf292092f4d86615d3955569418a9`  
		Last Modified: Fri, 28 Dec 2018 23:34:46 GMT  
		Size: 226.0 B  
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

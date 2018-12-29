## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:403ad2a6e614aea43dfd1c658049eea1b8dbd53d9c05b192843a2dbf88f229ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:9a7294675f6f7dbd51046eb9369bc09dfa72492a7e60b42514c40f9657e41172
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f381ca85821cf8e6c7a8d9b1e427f1d2a0f912651125a76d9da30fed016929`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:39 GMT
ADD file:903ef47a64f739f4c488cb33027930f52aa902a53efff53c2b659fe4b7792e8f in / 
# Fri, 28 Dec 2018 23:24:40 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:24:45 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:cfa8c5a524d5a8af3514ffab437a9256d3035b1224e452fcb9244c71e17d7e08`  
		Last Modified: Fri, 28 Dec 2018 23:34:13 GMT  
		Size: 39.3 MB (39339640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1274737c31fb7f6c39527965eae751ef1c658753f11115b8cf84c95fff1d25`  
		Last Modified: Fri, 28 Dec 2018 23:34:18 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:605bdcd8708202813f0bb23513e766bf9f53dd1c46b0f9822d67f5ffda565d20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906fc25536c6362b0138db525b950261570fa91b54d4f84d396e53222796acfe`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:52:07 GMT
ADD file:3b46a268c4c5f579dececc01479fdab608388902052ae8a4d6161cfb39c63ccc in / 
# Fri, 16 Nov 2018 09:52:08 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 09:52:22 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ebf27eb124182f174583296d0f83658a73b90313eefb1a28aba8dd9dc07f084f`  
		Last Modified: Fri, 16 Nov 2018 10:07:27 GMT  
		Size: 38.0 MB (37993549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4645da8a9b1af279ae11afc9b3e62edb29c2e9a97f92a3cbac1b1944aa335dd9`  
		Last Modified: Fri, 16 Nov 2018 10:07:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:7ba2fbc11c86961f453dbaf6dc111e94b46018611aaf981426207343165c38e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4649a99e7fe2453dc40673c509a0364d7a95c26fd1cb87648b62f6e4c10f83aa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:03:27 GMT
ADD file:2140a6ed89dd267a7615b3961dcebe84a525e36ad77b912cef5752e67cf828eb in / 
# Fri, 16 Nov 2018 13:03:28 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:03:42 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2b2bc63fc0854e7b2e16e9bfd8cf96193512c10b9fb75494de94979a0cdbc8ad`  
		Last Modified: Fri, 16 Nov 2018 13:16:48 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3925089cac17769aa863d08de21b19771d351f88d2244c459b62dd437a50dd1`  
		Last Modified: Fri, 16 Nov 2018 13:17:08 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:ec49b24886806a6fdf79450a671fe68511e0774782d4683fba1b7250e43659c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40532998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef60cdf598fcca5e5cc3e1f793d2f6135edd2682c3e019078779b74314e5d7ae`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:28:04 GMT
ADD file:4ba3f4b307d7c591f1db6d926c3f775d5730b2124c3d7450bfc228aab843c9cd in / 
# Fri, 16 Nov 2018 12:28:05 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:28:30 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b042a90e50fd2be4a76460896a9d96598376543501c1e6ba76e354bdf823f80e`  
		Last Modified: Fri, 16 Nov 2018 12:49:40 GMT  
		Size: 40.5 MB (40532773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f527eb4251b3f6f3b60f8d2e5d6c89849bd6b0d594e654096cdb75a4c3a3d7d3`  
		Last Modified: Fri, 16 Nov 2018 12:50:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

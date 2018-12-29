## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:f6a6797dfbe8158174b28d8de93f199cddb959b4e750513f8283e34b5208f4d8
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
$ docker pull debian@sha256:20744fe5e5fb30d34c61a092122e19c83e96193eab733f3660d17bb3a08b97be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea192e535461e0e78c84725e4ba1f24cf572c260dd94691ad2bebcd72f5f58a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:51:09 GMT
ADD file:8be1fb46e99eddee1297b3bdb303e9459a7303823c84a7a3af956d7b363eed72 in / 
# Sat, 29 Dec 2018 09:51:10 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:51:18 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2ebdafb222cac75b909b4817fade26ec234b82e377689261320d6de79cefdcb8`  
		Last Modified: Sat, 29 Dec 2018 10:00:37 GMT  
		Size: 38.0 MB (37992177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872a75b035e27fb2a81a7cc76ea5c522e336a9f91edfb32f9588d23f32b02983`  
		Last Modified: Sat, 29 Dec 2018 10:00:43 GMT  
		Size: 229.0 B  
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
$ docker pull debian@sha256:9e745e9670c64f828d9647617e13f5c521a2d75b37e4f7961689077fe5983423
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5919816b78678e9d9dd94bc808fbebd6938950bdc77cf72510423ca19b98a648`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:45:42 GMT
ADD file:3866edd2e7d717aff647267b18d4bd961d89d3799b05cdf16b3b162abd4940b6 in / 
# Sat, 29 Dec 2018 11:45:43 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:45:54 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1cde3c2e19b83d1ed7845316d663b920a81f154168ef18338d16b04dd42bc7f4`  
		Last Modified: Sat, 29 Dec 2018 12:07:07 GMT  
		Size: 40.5 MB (40532877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97fdf1ef2c9417b333dc5c77d3a0d09ba85bc2058e14668b0212714fb995780`  
		Last Modified: Sat, 29 Dec 2018 12:07:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

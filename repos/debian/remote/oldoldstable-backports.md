## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:aaf5671f815401e88b4ab6d05e737a42037cfe5726daf01b4941a54d0d19ab80
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
$ docker pull debian@sha256:94ede84165da561d4d93128ff27651ecb05538e2c5efb23aca1571abbfd2ed03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:864aa2df212a93720f1cabb62a5184a4b16fe7eee2a94e7bb004c92da28dd3d5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:21 GMT
ADD file:4d5fa4959c90b256650fbf98da2a552c2b0fe37e87f80feac1af73f43edecc22 in / 
# Sat, 29 Dec 2018 13:00:24 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:00:31 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:98b94aac0cb954266eaa2822cb294efa9d6d3f462eeb4a00979c4466d55fbb0a`  
		Last Modified: Sat, 29 Dec 2018 13:10:15 GMT  
		Size: 36.6 MB (36619998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76cb9a872c31d76fa53d56282abaa39802d31f360a7381c9112d1aef90f0620`  
		Last Modified: Sat, 29 Dec 2018 13:10:21 GMT  
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

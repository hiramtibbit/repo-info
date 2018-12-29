## `debian:jessie-backports`

```console
$ docker pull debian@sha256:6281a649d8d2995d8d85d03d9b560973e58a310480844d0fa7125fabf97f47bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:jessie-backports` - linux; amd64

```console
$ docker pull debian@sha256:f5301f1d292b40b12078381f99a9be4922d3cb28e68a8f3a60d900095dfb692e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54387341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f387b50f67280bebf0c81ffede5513f939dfa763a97475b2fbe7549309c70101`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:23:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fde7610710cb99863b220caaee0d6c002399b18ca24835b4bdf6c5424bfa86b`  
		Last Modified: Fri, 28 Dec 2018 23:33:50 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:502a3f41202bee099cffbdf37bd21e1feac81a5e5bc57bf92f0eb2b9821bfea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52579009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb1d6d090cc11f57a655ea31ab7961dd50b03a1c27262179b8cf43a4453382a4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:50:08 GMT
ADD file:3321122b920f6f483dcafe715cd2a4e1da54e69c43820472bdc96463c1491ddb in / 
# Sat, 29 Dec 2018 09:50:09 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:50:18 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a204ee9ae7b96e1c5b1ab95dc720bd4653fef7c1851fb0d4e498e354f21c944a`  
		Last Modified: Sat, 29 Dec 2018 09:59:57 GMT  
		Size: 52.6 MB (52578785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2d111ecab230d606fc1b3850aab0dab35327165922d7b9278db1e53d4557e5`  
		Last Modified: Sat, 29 Dec 2018 10:00:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8a6891b65fefced0aa55ba35c7a8d72037f05c8042f8ccf8ada3263f923c4888
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50279795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df646257bb4cf65d7888309c2ce4704cb21cc146de3c4de07b41c8f96116b05`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:11 GMT
ADD file:9c7cee46635f83a6649a59dfa973c45dbfcb18294c4e9929937b51ca89af3242 in / 
# Fri, 16 Nov 2018 13:02:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:02:24 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2a662743dee4e609927ac10eb7f6457acb061af79addbda5a70c40f873a43c93`  
		Last Modified: Fri, 16 Nov 2018 13:15:12 GMT  
		Size: 50.3 MB (50279570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d2eee5629cf8a65d08a8323217123c1239db9cf16d03083ac5d0f56afe2e`  
		Last Modified: Fri, 16 Nov 2018 13:15:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; 386

```console
$ docker pull debian@sha256:f345ecf91760ee17dc14122743f0eff18aaf1aad73e4d54131cd5caccefb6aeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54604497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5819e67dd5ff572d8a6e7851a79cee2af277f421d2a94ec1ba3b07313d4de5f3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:43:08 GMT
ADD file:adf73be380796d1d6e5cc54acbe9ed13483e492d18379f8f92b0ca4a3aa2d0c7 in / 
# Sat, 29 Dec 2018 11:43:08 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:43:26 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:328db1dfc8fd581487e81b7e2b308b614ea0ef326ebf067f940b5fcdd3cda762`  
		Last Modified: Sat, 29 Dec 2018 12:06:12 GMT  
		Size: 54.6 MB (54604272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa919e3bd93ec806b77c36e8dc693a082aeb7d9a65557000d6ac039bbb3a3a5`  
		Last Modified: Sat, 29 Dec 2018 12:06:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

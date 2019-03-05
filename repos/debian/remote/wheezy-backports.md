## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:7647b7e8f89ce651bb25a4774d6dfde76665f8dcbd7079a8272187f22dfcf799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:c5624770f17a8dd984a18a2113655f8252f04663e62253acd6650a96f31a1783
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39340003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9303f15aacd7807d539356539b48bda21bb243d8bfb709a1ded681ac08ce476`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:23:13 GMT
ADD file:bbbee952d330957b2a425a378d451176c784585717c9e47df6c05c10881a7b3c in / 
# Mon, 04 Mar 2019 23:23:13 GMT
CMD ["bash"]
# Mon, 04 Mar 2019 23:23:17 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2b15b7abe8b39a409a8b29c5ce62b22ce091102ca25fbf49aa877cca40983717`  
		Last Modified: Mon, 04 Mar 2019 23:27:27 GMT  
		Size: 39.3 MB (39339775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cdaa86a24e3dbdee7a7dbb42ffdff9844879dfb7981055e6e4e23c8f6e508e`  
		Last Modified: Mon, 04 Mar 2019 23:27:37 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:8a03fd8eb4cfff8022e8068e5f8ab07575d6dfa2149b14599b775d684d7a80ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d51e1f26e9f23469e6b3ff71360735f4fd612c3fb609fb5610f6adf997711`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:57:20 GMT
ADD file:0826f52e4e56e8a465fd832739b8eae1ccdf00313b775ea84a0fe1394d496009 in / 
# Tue, 05 Mar 2019 09:57:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:57:26 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ebf8468b45cf43bc121a229a3ba731d234459b2e3f4d35cbf9e2ee954c2a7364`  
		Last Modified: Tue, 05 Mar 2019 10:04:07 GMT  
		Size: 38.0 MB (37992220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d2a762e3dcd07b609efe316357c381fab66de3520f2e09e0471ee1ad2aeb6b`  
		Last Modified: Tue, 05 Mar 2019 10:04:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:0a43614c19bcfcba56ccd8bf7b696bfa69a3f32493694d88d535f9b441a98c00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4be435fdf63b84aaa527836d8fc3a4a5513d777a8136c0f3f5f98be4adfacb9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:13:21 GMT
ADD file:e4f915f745bb98797369f2b70d5191cc91c3709aa7cce03f9a009b3b79fa05de in / 
# Tue, 05 Mar 2019 13:13:23 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:13:32 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:4cf24189586df875d4f26389a5b720f76f48806bf83732cea3a108c6a9417008`  
		Last Modified: Tue, 05 Mar 2019 13:19:59 GMT  
		Size: 36.6 MB (36619951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b302f3924bfa2977afe7894e2776693ad6c9a5d8b354062f91dd9fdf7efd6f5f`  
		Last Modified: Tue, 05 Mar 2019 13:20:07 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:ca32d7ed6d9456337d790cce5167239935f594962934a118a34d4e440a5be580
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4777253160dc0207075c05b50818daffa87e7d99f4f75458d173ee2247b1c824`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:47:59 GMT
ADD file:4fc0df88c99e9f004b54840d6cf825b24858e081c1d856547b13706c9433a626 in / 
# Tue, 05 Mar 2019 11:47:59 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:48:06 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:79bd0df238b04ae4a688a5691a4b088c6a4613287f0b59e96a612e1546c9ecee`  
		Last Modified: Tue, 05 Mar 2019 11:56:55 GMT  
		Size: 40.5 MB (40532914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8eede47fc8bb7b11277b1ea4054e1f304caa5b7ca0c19de8612a33df609142`  
		Last Modified: Tue, 05 Mar 2019 11:57:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

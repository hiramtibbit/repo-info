## `debian:stable-backports`

```console
$ docker pull debian@sha256:d7171eefa552616a0ca621bc0d5d35093cd71e979a7350b7844b862fe589abb5
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
$ docker pull debian@sha256:538ba092bdb34753adfd5af8205e9103d3a5875bb81037012a5f2f03895c7626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.3 MB (45318359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c3a38850af9974e995c42fbc594d651a905f2b1de8d477cbf4648a98bbf159`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:03:35 GMT
ADD file:f0868fab3f4afce6d317e3013ea30a46c946dab8882deeab87e979b169872524 in / 
# Sat, 28 Apr 2018 07:03:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 07:04:01 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:240f11b4a6c179680dfcfb9ca16b6b1e533cca5c01d10843765282d0952357d6`  
		Last Modified: Sat, 28 Apr 2018 09:22:08 GMT  
		Size: 45.3 MB (45318137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbea54fcdbb131d665e225b3739b9bab9fd29785afc024e5f995f614156d0ee9`  
		Last Modified: Sat, 28 Apr 2018 09:26:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:e66f215cbd1d89bac1aae7ce973eaad9ac183002689d48bd4d4b01b97429ba89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44038818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46847d4aa9ddecc014f9cfc40390752fc606091707cfd57b50ec1ffcc0597974`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:52:17 GMT
ADD file:dfd7328c3198844a19b1b7ad77e5ebd7e11031993ae1b56b0994de578d974a50 in / 
# Sat, 28 Apr 2018 08:52:18 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:52:27 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b9a800ded6f0df610aa5fd808e72d560e3324b53c0a73023f990b053b0ec673b`  
		Last Modified: Sat, 28 Apr 2018 09:00:38 GMT  
		Size: 44.0 MB (44038593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4c55d13d02ab05e725ceb28a735386fb4579b3dbe7e01df2162a7da44c3038`  
		Last Modified: Sat, 28 Apr 2018 09:00:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:8ad13385a22fb22f8c8bd7c4c0d0943c47e8c611f29b083d62b50c627d61838d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.1 MB (42063929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5052049017952185cf0ccb6d7b7c00dbc708782090402e4c1816996a79aca252`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:10 GMT
ADD file:d99fbcbe2ea5cd3393fcd6a64c29b3f487771d3ff7878045e7ffe06e61486437 in / 
# Sat, 28 Apr 2018 12:03:16 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:03:26 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:23857fb357475d6a217fadda1ec682a77fb91a08a96a519f84691ac9d7ddb98c`  
		Last Modified: Sat, 28 Apr 2018 12:14:28 GMT  
		Size: 42.1 MB (42063704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af10dcb73504e1f16d9cf7539a9ed104052ea2e39f44d302de4ddd3e54df0f`  
		Last Modified: Sat, 28 Apr 2018 12:14:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b6999e7686d27f7d96c8b7ccba56b179da8571d1df75e3f04fe9db80dcc2244e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43109584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330063ee64d41c85210611685301c55d149576f5d3763de864db491c9141ca68`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:29:44 GMT
ADD file:27c188dad8f472f6f6b4159be8c67633b2ac47573609658a461fc258e0fc6c8e in / 
# Mon, 30 Apr 2018 23:29:49 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 23:30:21 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:9c75662e361d64e5e44f7ae99bc42d4ee14398b35a42c3224361a78bc4b18a4c`  
		Last Modified: Mon, 30 Apr 2018 23:49:11 GMT  
		Size: 43.1 MB (43109359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d588a9ac286fb24cc70ac09d6ba76e9e90a0206e724d9713564f44bd50a73d`  
		Last Modified: Mon, 30 Apr 2018 23:50:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; 386

```console
$ docker pull debian@sha256:8bd6f9ca5c63a32b241888e0d15856c6e2975759b50b643ee351882b1b713ab4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46045143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1f15910b77798ee8310e481be36a74f2e68edc1b25a9e1e9d3a13d4eff6b57`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:10 GMT
ADD file:87fa2e564ca4ff3677fe57aa99f1058194628fd388e1db3f38013033ebd983a6 in / 
# Sat, 28 Apr 2018 10:41:10 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:41:15 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:a628288d8ce4b9fca815d58196a21bc7317e1ba1d274e9c12f4dd7af1bc392ee`  
		Last Modified: Sat, 28 Apr 2018 10:48:07 GMT  
		Size: 46.0 MB (46044920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4413ea917998b1bdef4673615a685483e13b8cad0f0186e4aae591218130471a`  
		Last Modified: Sat, 28 Apr 2018 10:48:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:1f4a12d24819b7d84de5b1bf1df29598057ef88c6a2a574c19eef514a03e6dae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45591083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8088aca4d3ce7d62c7031ae2423359704113421679f53921ef2598f5b613e266`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:19:49 GMT
ADD file:3465f01a6b79340c587c2964f47fb44f9f0fb130707402a4d11be03853dee058 in / 
# Sat, 28 Apr 2018 08:19:50 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:19:58 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f7be4febd5f2d90f28a8adca0d0b2c2791ce9f951bc729e99e6e5286c9d400f3`  
		Last Modified: Sat, 28 Apr 2018 08:28:40 GMT  
		Size: 45.6 MB (45590857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b772c8a021df134d37f4e6712381dea5bce6549ce8f2031b7a09cf4fd27959`  
		Last Modified: Sat, 28 Apr 2018 08:28:57 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:stable-backports` - linux; s390x

```console
$ docker pull debian@sha256:979c85ae03401f9b6356a3a6c46eb3dbb44168e2e96569d4d5458a5ed57f3911
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45185544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5df89248dc647f19fcf10d4637bcc13bc5f0cc1dfad75f7af82f7a2f72286c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:44:23 GMT
ADD file:8a3b87205831f166e01fac2fa0086161f7a284ae5cc5e2a7d727197dd64fcb2a in / 
# Sat, 28 Apr 2018 11:44:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:44:36 GMT
RUN echo 'deb http://deb.debian.org/debian stable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e6dd9b46018d80d0f87d191ebe12dcea211b7a972681875c74d4bcfd34e60d99`  
		Last Modified: Sat, 28 Apr 2018 11:50:16 GMT  
		Size: 45.2 MB (45185319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39232ffa2cbd6c96e3933cecdc22559492d3127dadfc9aa891cc903c47690d5`  
		Last Modified: Sat, 28 Apr 2018 11:50:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `debian:jessie-backports`

```console
$ docker pull debian@sha256:f98419078f029387a4eb6a6963382f612fb7c4d036e3ce2af2bd4b1c6918dad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:jessie-backports` - linux; amd64

```console
$ docker pull debian@sha256:b9074d3a885b90a491ff1c4354e5a62fa2242fe02eb8c82193b75ed113afc37b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54252351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2abf53b33688a03f9e7e98c24bd53091b328c8af0f8e1b10b1044ada348fe7ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:20:36 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc097f195a9e92d9ae8016d6f56c17614b58b817812209aa99cac864f45a7f6`  
		Last Modified: Mon, 15 Oct 2018 23:29:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:ee4afcc6d563116cff503ec3fe8a1dc0516183260438fcefd00ca58cee373ea6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52448173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6be069aaae8d9698e68901f223eab407fbf07efa23558861de1b49076dee92`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:50:03 GMT
ADD file:7b66da06b04342d6312147be471b07c9280814a36b863bd49a0217020323e65e in / 
# Tue, 16 Oct 2018 08:50:04 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:50:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e4274eb716467eff2e7b204e8b5c7870ed82dd4fc89f821939b7f3017c84480f`  
		Last Modified: Tue, 16 Oct 2018 08:59:33 GMT  
		Size: 52.4 MB (52447946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8023452cf8e0f8c0cad858252852931388388174876136debeecfe648c2324`  
		Last Modified: Tue, 16 Oct 2018 08:59:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:4ffb91cd8f750b641f013e6a9f1075001f0e74eca3c7ff64c89afcd524d6922c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50188871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60bd8c7eab5f8df49aab5abc1d1922f587f6dada191bb35994a69af4d9e847b5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:59:33 GMT
ADD file:9edd7e5dd9866508197c1b6cf8b6cb3fb8facd975bc2a5c19345fccf32b26e4c in / 
# Tue, 16 Oct 2018 11:59:37 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:59:44 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:25629e5219870918007c34709e42bdf0d203fce78b64e41a187f51a7f6ed5c8b`  
		Last Modified: Tue, 16 Oct 2018 12:11:52 GMT  
		Size: 50.2 MB (50188644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f33e96c27776419a00b9ad3aadd3ed6ea0bf7d78c72bfbb380737533380ec92`  
		Last Modified: Tue, 16 Oct 2018 12:12:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; 386

```console
$ docker pull debian@sha256:526867be9150176dccbfb0447d39347e276bee32229a81404a61669c36f46154
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54484513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6caa25290259e163954aa91ae899c8f0825cf9a48acbfede6478e5b8234da9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166901e537b4420c29c36f4782198aa7d9c7719a58625d2c70b3f62a428af4c4`  
		Last Modified: Tue, 16 Oct 2018 10:56:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:f597d07b3e9189f51cc2b1ddf3ba69f73990c5ecd9f7f3986788e0bf90f6aa2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:58590cf67982b4d8dc37605ba00463681f1279bac622a1c4b82b75be766aa717
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df16d0c4b99e9b86765d6fa3463261398d5a7044791186acfcf434ceab33d89f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:32:10 GMT
ADD file:7d97c6060d2f2ed127bfa6caf63275d4d8d4a3828f243204370a117e3bde0923 in / 
# Fri, 28 Dec 2018 23:32:11 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:32:17 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0ac552c681ffeeb04e8a77bde853c03dd88f87b3936e140ebff2919aef76fe84`  
		Last Modified: Fri, 28 Dec 2018 23:36:56 GMT  
		Size: 39.3 MB (39339686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852a569dff46283f60fd96bd050b27d66b1715c3b74e11de1bedcb1ee1ae4bd8`  
		Last Modified: Fri, 28 Dec 2018 23:37:01 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:1b5a47520e0b309862aa89de037743eecf0b53bbb8480337f94acecf9191c8e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79547d454b8ae3f718481b239f575e51dce513465cb67869afecc74161276e31`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:01:50 GMT
ADD file:7fa32f63a9a6cff48266f7afe3843db8f84995b13663eac5199dd7027bef743c in / 
# Fri, 16 Nov 2018 10:01:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 10:02:05 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f2509498a89240dc1cfe86f8e2bc15366b63a69b5a49e209394999a4297dedde`  
		Last Modified: Fri, 16 Nov 2018 10:16:29 GMT  
		Size: 38.0 MB (37993565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9498ed29df0bf7fc61bdf5ae24e3846b6a22421e9349de43823ab5f6a15b6db`  
		Last Modified: Fri, 16 Nov 2018 10:17:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:52fc709bf2147ba6846ef13554c4eabb27d3d3e0c93e17aa1aced4681b91995b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13dc4261063e4cfb23eed8ffefa5427fd574baf18f79c59f09e75a1e424ee93b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:12:20 GMT
ADD file:dfb9a1807e0b40371535a3989eaae9fa4919d4de1416b9c2cdcec3adaf13e53e in / 
# Fri, 16 Nov 2018 13:12:21 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:12:38 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:294971fb9750100ae6e2fc4bc1c804489beb76ade829b844b445e8d52d095655`  
		Last Modified: Fri, 16 Nov 2018 13:24:45 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648c116325af48d7423371c31f05a89134ddc4beb4e4560ffd3b0107fc072ff1`  
		Last Modified: Fri, 16 Nov 2018 13:25:23 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:6d31982ae965e6fb1ddd0a2ca011dcd59639e1764d82720be3b3c5c0707339a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8da9bfd4c92e6d84de943a1247483391f566461d4d6e87e2a6bc777280bd0543`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:41:12 GMT
ADD file:3c653db51faa2568117b6077dcf18945db344868dc13507aa8a680d1e9c7fb07 in / 
# Fri, 16 Nov 2018 12:41:12 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 12:41:42 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f0d5412c133d7c088c460e2ef3bf665756e2dbbc6a398ce0ce3bcc2e94e757ab`  
		Last Modified: Thu, 15 Nov 2018 02:07:34 GMT  
		Size: 40.5 MB (40532790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd72ad1888baabe91e7a34ead75a271ee53fe03a0904040b9b53e1430c576c6`  
		Last Modified: Fri, 16 Nov 2018 13:07:03 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

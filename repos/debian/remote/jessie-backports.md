## `debian:jessie-backports`

```console
$ docker pull debian@sha256:0de66da40002511fa2f24ece4e1cab08cc89bb262b6860cf9266ae566383c5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:jessie-backports` - linux; amd64

```console
$ docker pull debian@sha256:32258da27d575c63671ca59e1db00a614825ed90931fa7202732844a7103f99e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54385992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ccacf615a953294a60ac628e8d9e6e3faa0eeb41d0f0cf6b13d4f3484089ac1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:23:39 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee25d56628672a56bd87914840fd998c03b5b483e71e2a2969b24e02845a1d`  
		Last Modified: Tue, 22 Jan 2019 19:34:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:ae73e9568d8e92d4474c56c4db7acb942b975f3ae3c75356493736e7369927dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52574778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ad1a2c0237de8aa0bf337a43130ab077b2aaa3d88c5772ebd88ee039a01cf2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 09:50:16 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4234f83942e27876073741491158f136685b2f60ab4cdf37a09f411ff57bda56`  
		Last Modified: Wed, 23 Jan 2019 09:59:12 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:jessie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:d81a81fe0dd525f0b9f96d3b47c25034df15d6aa45765ce7f04672927c5cdc20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50294416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f843a62ad96e5cc0694f1c0d4c04915bdc99d48fc23a598687d88fdcd6ca75b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:11 GMT
ADD file:01b62bfbd45f1e17ef9559bc94ada32cdd52fbf49c22cf9240e225e6291ce59f in / 
# Sat, 29 Dec 2018 12:59:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:59:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:40b7080c29fdee0d573b842a38b8b4678dd34588fed78cb13c1be48cbeb5641a`  
		Last Modified: Sat, 29 Dec 2018 13:09:32 GMT  
		Size: 50.3 MB (50294191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334422497af9867aad86eb12da72889b491fbd432a6de702ea24e16b79df53cd`  
		Last Modified: Sat, 29 Dec 2018 13:09:44 GMT  
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

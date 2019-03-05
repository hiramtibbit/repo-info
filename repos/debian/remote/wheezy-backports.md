## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:f37c80f59a5344f6cec7df0b2641ebfb32008bd3339507e3b5fad56461c90bbb
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
$ docker pull debian@sha256:35ed4bbf996f4907df3f5d628619ef3078fd954d7e8910f1394bd3da89587752
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1742afa7163ac022bb5d9e9cd02222e5ee7768494f8094977a88fa4af40383ae`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:58:09 GMT
ADD file:07deffdab34fbda2720eedc80699cbea4704f0c89927a2d2d7db12ea07dfc702 in / 
# Wed, 06 Feb 2019 09:58:12 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:58:17 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:f51cf4aa752b6c34f8eccc7f23d831ed282570318aa3ae4308b33403a2d27729`  
		Last Modified: Wed, 06 Feb 2019 10:05:23 GMT  
		Size: 38.0 MB (37992168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f6851bcf37cdad021d1ded98ce3e9dc5b3754e6180f49a4a26f5823af0f9b`  
		Last Modified: Wed, 06 Feb 2019 10:05:32 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:902f3f00c67ccefa7847d363e698354d9c9cf6890cc76c22b44fd6ad632d13a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36620217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ea7be0954e4ab15c5e5d0dea5b92148d5ddb09f191795bf5d51ffad699acc6d`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:05:25 GMT
ADD file:05857c02422fe7316ce1c897732369dfcd2216d72f38e7d23b05a87c84f00bda in / 
# Thu, 07 Feb 2019 13:05:26 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 13:05:31 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:39aa05e112a663f159c176b484d3cebbd5ddc1396f57063aca1827314ffdabd8`  
		Last Modified: Thu, 07 Feb 2019 02:15:23 GMT  
		Size: 36.6 MB (36619990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6265aced5341f3b0fc1759be12a3736ff76c4f5537ca359aa49d690f289cd6`  
		Last Modified: Thu, 07 Feb 2019 13:12:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:f8fdf85d544a8914384b2aa88214dec95f718af890d83015d5e396eb0faf7209
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40533001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:560f68f7910b9d54950ddb9c3355c825b51c4ab43cc285e3fe22616e9ac40d47`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:02:30 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f08601933cf71ba433248910e077cbbbfe08b5ef35236283bd9afcccd298dd`  
		Last Modified: Wed, 06 Feb 2019 12:09:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

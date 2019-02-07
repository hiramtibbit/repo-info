## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:c7bc84b5eb9ee20b992e37fcb28c4e76014cc9b11484beacee1c8441c62c4878
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:a8f8ed91b00b7599e0ef753da702c5621a497f4c4ef828147bf436b8069c0ce5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648ae8933c7a1042589fe2df349285a2cf3d644087a211c8565401aab990a25d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:30 GMT
ADD file:8cf36f5c76ea3119278e91016148dd680311000ba59b5fa986b707f000a40906 in / 
# Wed, 06 Feb 2019 03:31:30 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:31:35 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:2eaed095b90d08fb6a1870ea73a7bff5cd989c5969dd5ed3be88483796869559`  
		Last Modified: Wed, 06 Feb 2019 03:36:56 GMT  
		Size: 39.3 MB (39339703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54c5386a4891e455160c37ab95fd3e3094eb43c6e44689e3b4cf2b9281ee38d`  
		Last Modified: Wed, 06 Feb 2019 03:37:01 GMT  
		Size: 226.0 B  
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

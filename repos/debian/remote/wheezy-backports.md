## `debian:wheezy-backports`

```console
$ docker pull debian@sha256:5c51c6ba709f2cf32adae1103938beb92e942988eb3347c63856c50ef668518f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:wheezy-backports` - linux; amd64

```console
$ docker pull debian@sha256:a133fe57dc9c853a3e5c498d43672c47f51967aff438e9fc276b92660c60d9cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae55ffd021fb33f70f1da6d722645a74249963c50cc5464d99981a9c1d5b943`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:22:11 GMT
ADD file:1d0d47b9e887adff2328eeb380e2cc47982a572942a29d7ed26bcf6291219302 in / 
# Tue, 04 Sep 2018 21:22:11 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:22:15 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:703d6f3fb41c45d33d1e6358aba66a774c9ebc11a21bc5dfef74f20d043d3933`  
		Last Modified: Tue, 04 Sep 2018 21:26:45 GMT  
		Size: 39.3 MB (39339633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcaa079055fd7b2eb75fee04cfc5a28a0fc78b0d4b719c0cf2fff5bc61d3cb7`  
		Last Modified: Tue, 04 Sep 2018 21:26:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:68fe9d078fd35eaaf37dca6ae99e309b3cdbb337428fc5e4703b188416635336
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37992980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17744975c0a723e102e215e87700ca5e45042a5b813e141e7465fea489fc5f86`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:59:27 GMT
ADD file:118f69d2224ba46ac27284a61951715599b15536ec67a7c37bffc85458461cfc in / 
# Tue, 17 Jul 2018 08:59:28 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:59:50 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e68d31fb2a9723e10f3faae2ded8811dca04291d0d555713137ce701438ad772`  
		Last Modified: Tue, 17 Jul 2018 09:11:13 GMT  
		Size: 38.0 MB (37992753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8972e96d9dbf4009982c04010ec74e08861327d0915a5218b1f0e6ec5e2fbe`  
		Last Modified: Tue, 17 Jul 2018 09:11:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:53e80e5a749cb52bd9cc85d54593b239cc80222483f00dbc27383e1b2ec034b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36619735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5609c72ba9b7cc9a56a78ad610a6e2f86ddad2169cd8fc685560a97926622c0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:08:23 GMT
ADD file:712816e22e280cc54e0b214bacd8b514c6de7d71f07b8c63b3306f7adc2bdc05 in / 
# Tue, 17 Jul 2018 12:08:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:08:34 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b4fdbe1026b8cccda2040976484f19e27515a68623a1e6b1439ae0029d5934d9`  
		Last Modified: Tue, 17 Jul 2018 12:20:59 GMT  
		Size: 36.6 MB (36619508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d9331901da9158821402786d7c0231f29a5672fe39dfb57a81745c59b4af96`  
		Last Modified: Tue, 17 Jul 2018 12:21:33 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:wheezy-backports` - linux; 386

```console
$ docker pull debian@sha256:753a82c27398fd3fcb2f43d0791269ffd2b90fae96e81f60d78a82d2fcb632e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40532374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996029ea177d346f772a75a0ad8bdf2ffb8dcadd3d9221b2379ccdd3c4c164dc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 10:52:53 GMT
ADD file:2b0fab8ddd7d2f359f307fc659f958ad8a6e2a86a6a23ad77572c20f1d5aef12 in / 
# Tue, 17 Jul 2018 10:52:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:53:08 GMT
RUN echo 'deb http://deb.debian.org/debian wheezy-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7c59d17a85b1db041ae2f8db1bccfc071f1e66c58fe8a43087c34557aa910719`  
		Last Modified: Tue, 17 Jul 2018 11:12:53 GMT  
		Size: 40.5 MB (40532149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7febce37c2d84dce93205c8b9dcf5c936d53d1fcb1a806f20be2848b85cf805`  
		Last Modified: Tue, 17 Jul 2018 11:13:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:2155d89a935fb84f3a2dae2fa72134dda22696d0ea574d198d2320a25d92df2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:f712500c618d51ecdf97e5a6483df20766d895d1274264af72847dc130fc2a13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54384846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e41c97a105203995fba95bdd79169223ba28f74f4505877210e9b6bfaf972f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:28:25 GMT
ADD file:3aff68a263328ac275ecf7c4c3ca16f2f71929488c2c8940bdc19687828b8683 in / 
# Wed, 06 Feb 2019 03:28:26 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:28:31 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:90d7de1fea60c5a9e7872e2eac1b3d422efa887263c36eca64d9c66ae462641a`  
		Last Modified: Wed, 06 Feb 2019 03:34:22 GMT  
		Size: 54.4 MB (54384622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee8794ae366691a0410da93821b12abefe31153eb6771344cbdd2f04af1cad8`  
		Last Modified: Wed, 06 Feb 2019 03:34:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:6575d4ef33545e57ca19c573d46efccc958bfb28b7de17ccf57c49b133d1ebc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52574187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e34489ba1a7a340650b6c0d2965d163c92bd61a34df93f7c958438694c6cc0e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:52:22 GMT
ADD file:d8b3b563ec85add827b160815293a079c047fb2a896e5eed2495a13150fd8da0 in / 
# Wed, 06 Feb 2019 09:52:23 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 09:52:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:dc57d3a31c7bc0a21289c20e6a02b5e4d4b9673eb9769508481cc80d00412a9e`  
		Last Modified: Wed, 06 Feb 2019 10:01:35 GMT  
		Size: 52.6 MB (52573963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4f7ec0658d7c1fcbc7866a3e17eddd7ddca3b98d3cc4d3bd18bdcd80b01578`  
		Last Modified: Wed, 06 Feb 2019 10:01:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:7daf12c910d77e83dbc3abde73b87d11f4aa649ac35ab45b4a5d5622d3220d41
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50291862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e873ae90fd48fbd666475c03dee07df9aeae218517459ed5f13b4c3120e806af`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:01:26 GMT
ADD file:36f94ca403a3e9be9cb0d2e2082e891505cfecbf66d3a20b4a9a23bd4e0105e2 in / 
# Wed, 23 Jan 2019 13:01:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:01:38 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6e2f64ecb78f63e9deeaaf5562b8248bce9bf592b8d9796dd17f98a6df113e3f`  
		Last Modified: Wed, 23 Jan 2019 13:10:28 GMT  
		Size: 50.3 MB (50291636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e23095b37e2d864d18d0e075a864dc164065e09ccadaa5be7047e9c1c51edac`  
		Last Modified: Wed, 23 Jan 2019 13:10:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:0a2b3a8968296c36bdda210d2f3fab81d2f1aa564cb0143050a928a14deeeb18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54598714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4edbcc84464c5f0a81e5256d74b86018d1dac9a6e4fe86f9ef42491ef887d7cd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:45:50 GMT
ADD file:58829975bf962561998b90731df56a4751d951940359d5aeaae8704cc54073d8 in / 
# Wed, 23 Jan 2019 11:45:51 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:45:59 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:00f02dec39c80e4c9b2b19685dcab94b60ea163398f6a1ebf5073223a166aae0`  
		Last Modified: Wed, 23 Jan 2019 12:00:31 GMT  
		Size: 54.6 MB (54598490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4968ac569be6fa5969b8928074d0bb78b35bf8c4108f30650b5ac267290fdcc1`  
		Last Modified: Wed, 23 Jan 2019 12:00:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

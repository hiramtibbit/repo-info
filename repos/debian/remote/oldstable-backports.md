## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:872c5a3c6a3efbdc7f8eaf799a77be06c2852b97d010091f56f2549ab37d2257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:7e9767bc492b1446e9e8f945d0fd7d031211996775459a063f9e49d926bb07f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54381857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e62de26b2bc0ae1ecdeaad960c9374337d6ca5ccdc1b9e0e13e7fcf5ff94b7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:21:03 GMT
ADD file:6e7770ec4a3a4f1387b13757326769a001bfdc5a30721d7852a68a9de2900b2a in / 
# Mon, 04 Mar 2019 23:21:03 GMT
CMD ["bash"]
# Mon, 04 Mar 2019 23:21:08 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:29d9034ba692daad5f8fb2e205956d0d4d902b01995ab026cf7a401203a4712c`  
		Last Modified: Mon, 04 Mar 2019 23:25:13 GMT  
		Size: 54.4 MB (54381634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77d4cb0d2924feb4b4643bbda4b8d3adcd1f30665f4ef2456b54ec2dfcb5763`  
		Last Modified: Mon, 04 Mar 2019 23:25:16 GMT  
		Size: 223.0 B  
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
$ docker pull debian@sha256:07aefee1d8d09e4365b76545dd7ff554b47b167abee1fc43e7e892ab75083dbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50291911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8083b844d1b60d26c0a707eb55a8132733fbbcab27e0fb27fbbee949502042`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 13:00:42 GMT
ADD file:9641a9b54a38c59f0826f68cc318ee0edc24167159c599572163ed16d9c040c0 in / 
# Thu, 07 Feb 2019 13:00:43 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 13:00:51 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:32b60c67e36693215fb8159f35f8dc31a1c12d3ec9a6d8c77527a4ea3a93f026`  
		Last Modified: Thu, 07 Feb 2019 13:08:43 GMT  
		Size: 50.3 MB (50291687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3014f7bce4f8f0593b92e4cfe2791127959a0650d3d783c5528f798d4e169f85`  
		Last Modified: Thu, 07 Feb 2019 13:08:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:4443df3cc04d5cfb29e2a0cbc4f6bdfa798e6d65fc280798755f4ded55bb9a1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54599847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c1ba0b388eb753f996268f67d2b6e575b4ab32be1d368c821f81d18d3f285e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:59:45 GMT
ADD file:a1407ce6d3f0deb67687e35a0a55e3c914c500a1bb5a811bf0ac774bb63c5e9c in / 
# Wed, 06 Feb 2019 11:59:46 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:59:50 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:6a6e0a4a9d1f21d4f087fac1497793765af41d4477e601b4610122f73bbc02b9`  
		Last Modified: Wed, 06 Feb 2019 12:05:40 GMT  
		Size: 54.6 MB (54599622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c84fd5dabfc313b2e64ed4f2a646e92eff48553d5e2f7f494c0a16d37c5239`  
		Last Modified: Wed, 06 Feb 2019 12:05:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:f81f02988b3051cf1a621af0866c9c5bde865e321d878e6c2f83ece4253c0686
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
$ docker pull debian@sha256:c58633f107137703d999500437e5fedbd1ff49d9e0c78ed09559ccb88eadd2f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52568506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3002a5f777d0491ce415bc3d3d6f269f31607550dc113842c55adaa65bc380d3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:52:01 GMT
ADD file:92e511d9566b92e728544d68d632054c19411439d79172780675375ac1339f04 in / 
# Tue, 05 Mar 2019 09:52:02 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 09:52:07 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b0034b7b8839471881007fce3e894a3396975cf9cd17bdc11934ed48bca40638`  
		Last Modified: Tue, 05 Mar 2019 10:00:32 GMT  
		Size: 52.6 MB (52568278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1fad0342867e22453ceca71bdde71ad4a8f479db05e66ac3e768409d62eac1`  
		Last Modified: Tue, 05 Mar 2019 10:00:38 GMT  
		Size: 228.0 B  
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
$ docker pull debian@sha256:5dcea9a45afca3173ecfbe3e0765016826a9461aba22b15b1808d64967f59fa0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54604619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d299bed084dac8bd5ac0b17cfdfb82470880e3f4fee5bce4dae4cd47beb24bd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:42:44 GMT
ADD file:7f8ef4170620357a819906cc65a713cbe39ab040da36bfb986e7ed3dffc5fa8f in / 
# Tue, 05 Mar 2019 11:42:45 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:42:51 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:50306be8fc9cfec1aec48f6c5b019355701c9ac1dd74f7b08678925bb1c77508`  
		Last Modified: Tue, 05 Mar 2019 11:52:41 GMT  
		Size: 54.6 MB (54604393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8a99aecee452171bd1807388d721d4ef54a10a1693c076f322a4ba02600418`  
		Last Modified: Tue, 05 Mar 2019 11:52:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

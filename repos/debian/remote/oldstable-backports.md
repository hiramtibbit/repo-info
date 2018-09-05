## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:8e6bb147259d2ac101fbe427dbf87490cdfa09b6f891bc662356f4ebab9af536
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:b88552b211640ed84730f8bb68300683dd844c438e99bc5682741bf707f7094b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54252435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b460796b100389b0adf77646c6c1bd4305f3e839520679869e4f518654481c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:31 GMT
ADD file:e1a74c541aca2d1c69b3bf6feb417003acca4e423424f9d00045326e8faf427a in / 
# Tue, 04 Sep 2018 21:20:32 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:20:36 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:28d4b97455e66321891643ff178fcaf31d1d3142ba0fe1eec5b83ddc18faf58b`  
		Last Modified: Tue, 04 Sep 2018 21:24:06 GMT  
		Size: 54.3 MB (54252208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330593de329d08e7a7d34fbd06443332e480e1e470545cab4754b1cee23471ee`  
		Last Modified: Tue, 04 Sep 2018 21:24:11 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:697aa03098a58334b104ec15e2bbb9592bb2244e23f1903f86de47f69ac46c9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52448172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4bcbae59cc32fef4a495afb117ee7742d0bb4f1676f4ac63618f2f49936e42`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:51 GMT
ADD file:7d63c8ebb0d29052dc585c9119cf1f4886653fae0d8ed6880d035620d97acaa9 in / 
# Wed, 05 Sep 2018 08:51:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 08:52:07 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:5b84b79ace2dba29920b071e2378d5e59855f2f2391b4dd01fde21aebc68bcfa`  
		Last Modified: Wed, 05 Sep 2018 09:01:30 GMT  
		Size: 52.4 MB (52447944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3766abec61b38298868f4463dcad16d045c2a1a4b3e01efea6099ab8771da685`  
		Last Modified: Wed, 05 Sep 2018 09:01:45 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:df9dc7e860514e107c643921593e2ae9193c10230be3e17f57df434878367253
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50188053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe76aca7d1a4be459931616f7d9fe5760aa9009fbc7d3537b520944de06ae632`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:02:17 GMT
ADD file:7f704747423f49359b73edea2b9bdbd278d0a9cb5a134e910c8a0fd5e0911e95 in / 
# Tue, 17 Jul 2018 12:02:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:02:32 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:1bd495261f6f93b550f9e6f87f26f11cee86c8de2812716b2a0e87c4f73494b9`  
		Last Modified: Tue, 17 Jul 2018 12:14:19 GMT  
		Size: 50.2 MB (50187829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097072db40bb9cb0460d230058318eb5a55e2fd5c7a734d87e700ddc8b38f71e`  
		Last Modified: Tue, 17 Jul 2018 12:14:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:44d2e80d9256ffc47e49ab401c646c5f578b28bd22d0e499dbec260587e44a05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54484272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4521d513bd2dbbc80dab59e0be5cd16dec7045450be9fa30362b94af26caf8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:41:17 GMT
ADD file:0bed3eaaae645032c97675a7bd5ab648e3dc5c9b8dbf47bdf46dc3dc3f5bbf97 in / 
# Wed, 05 Sep 2018 10:41:18 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:41:25 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:93230300312bc76ba2a56c21099f7321b96750fc3289f7c742cc96329c0c2c3d`  
		Last Modified: Wed, 05 Sep 2018 10:49:36 GMT  
		Size: 54.5 MB (54484044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b6cb704b265689271baf255222f4831e55fd7af2af86aeea163643cb32a712`  
		Last Modified: Wed, 05 Sep 2018 10:49:41 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

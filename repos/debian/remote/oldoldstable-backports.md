## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:7f2f15e8b3fe9b525311340a5393bce496975ba8404fe9aa064182a79fd101b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `debian:oldoldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:5876a9b980b4e3c8d91b176c252a33502372023cc868014fe01df5bac1cac867
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39339371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8386552ed24a5c11cd0ecbcba0e36efbf0eea3b27836e9e4c25fad89e27d0047`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:46:10 GMT
ADD file:014dc05131e44584cbfc50e9cbf52090e4604cdce70b180b35963b734c04beef in / 
# Sat, 28 Apr 2018 06:46:10 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 06:46:32 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:83f317d5e188a100094431554301bdc3fde03d697286d6d873b05f3d65db15f5`  
		Last Modified: Sat, 28 Apr 2018 08:32:05 GMT  
		Size: 39.3 MB (39339145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a23837653e24108a8bead5797c27070263c5f963bcb20597aa57c8ad5a91bb`  
		Last Modified: Sat, 28 Apr 2018 08:32:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:33c5aed8274159e77660693799efc2ce066f221deb2ef743365eb83cf73cffb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36949908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee8d42ef7c9255f0c0ac11524d350b65c4002bd647193ff2d7368940c6be4d5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:56:43 GMT
ADD file:7ee8d0cf4d4c4439b41ea3a8191ec94e1e3fc84da1c0d3f96d998146faef707a in / 
# Wed, 14 Mar 2018 19:56:44 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:56:56 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:7ddf372ce56170845e4c84daa3ec3817618f28d27a68d4aba4f6b08ba953d328`  
		Last Modified: Wed, 14 Mar 2018 20:08:14 GMT  
		Size: 36.9 MB (36949682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d735f85b6d490eb443e5c537a941adfd369b2364314afe71d2e6af94551401`  
		Last Modified: Wed, 14 Mar 2018 20:08:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:6b6245bda6ca5c644e88598a9d8a93e738bdf3f0d5ed82a91c9d3b1e9889a9d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35662768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83bbf37d90731b198be0e64cd79de0072ad4a8b1525873f8f676fa78bd62cdb9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:27:59 GMT
ADD file:8e9bb7236e3340065a6d4b2c027ca27d864573739642dc8f5ef07bd4759d4adc in / 
# Wed, 14 Mar 2018 12:28:00 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 12:28:14 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:b9d6bb805d51b835026e96fb57fcde47680ab79092168b3332d121224ed3d399`  
		Last Modified: Wed, 14 Mar 2018 12:40:02 GMT  
		Size: 35.7 MB (35662542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1480cc94e5ac37facbad89d712476598c61c8c544d6bae19f9eeed6fccc066`  
		Last Modified: Wed, 14 Mar 2018 12:40:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `debian:oldoldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:518f10bc723c8d19b88f90b340fcc869ee6695f13a186c6bff43cecbffa5f88f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37440955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc411706653875e926d180212d776a18794a26995be360603c22411f648a0405`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 14:33:13 GMT
ADD file:bd525d3e35bbdeb475485501a4197eddd45225d73d1bdfeb24abe50783d10a94 in / 
# Tue, 27 Mar 2018 14:33:14 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 14:40:01 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:e131281dd33bec340db60f068c09290e0ce91079b6ca50b59eea8ff36b45d31d`  
		Last Modified: Tue, 27 Mar 2018 17:34:27 GMT  
		Size: 37.4 MB (37440728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8590e2610efb911cd396fa1a9ede9d3550faf334c76643453835f879d3cb7e`  
		Last Modified: Tue, 27 Mar 2018 17:38:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

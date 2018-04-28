## `debian:oldoldstable-backports`

```console
$ docker pull debian@sha256:f7a5195ac161af0457a5377205aca1717946342306b3068e1515aefeacf81ef6
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
$ docker pull debian@sha256:fc735492b1040f88e03e7fc8a245e568e388ce719fd981183337d13263b0a5e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37993126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9759e8d3d9f648c33df563ac675269e9dd7fc6fbcedbef2ffd6a690990f99dd`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:50:07 GMT
ADD file:0394636793cb4517a3261c639be4da2b9c339a881a1077f8bfb9d0c1484e82c3 in / 
# Sat, 28 Apr 2018 08:50:08 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 08:50:16 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:079073937c1b1e5afb181d050a5fe0b1bbb6d299c6298f7776d4bcf2624f3f58`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 38.0 MB (37992901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9219e043cab082367736e1395fb54e39e468237b617e40f7ab5fb866a9e207d7`  
		Last Modified: Sat, 28 Apr 2018 08:58:35 GMT  
		Size: 225.0 B  
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
$ docker pull debian@sha256:f7b7c2b6eb527fc8b8fc23a0b9f0b8d88f4e21af3fe5f172ef4e99af7e61c346
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40532339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acee9f4ee91fce2a9320bde225b31d065fd4eb6495cb61949001b8db0a0454db`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:57 GMT
ADD file:479ea51c2e88b4e971046c74d9523e53270f45b811f51f5b89a386a5ce4a381d in / 
# Sat, 28 Apr 2018 10:39:57 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:40:02 GMT
RUN echo 'deb http://deb.debian.org/debian oldoldstable-backports main' > /etc/apt/sources.list.d/backports.list
```

-	Layers:
	-	`sha256:0ce793862b8dfe00e88821c5f8c0a90c0e10b8cf2648b6aaf24feceae54abfac`  
		Last Modified: Sat, 28 Apr 2018 10:45:34 GMT  
		Size: 40.5 MB (40532114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae34aa123eb84c12174667667a8de4407647c8e57dcaa86688bd14d4139fc2`  
		Last Modified: Sat, 28 Apr 2018 10:45:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

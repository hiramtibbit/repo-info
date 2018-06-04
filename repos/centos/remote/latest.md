## `centos:latest`

```console
$ docker pull centos@sha256:369d6aa8915bc6723aaa0e40de86d1b4f4efe1bae5ce07e851fc567417a640e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `centos:latest` - linux; amd64

```console
$ docker pull centos@sha256:eed5b251b615d1e70b10bcec578d64e8aa839d2785c2ffd5424e472818c42755
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74693368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f7960eb7e4cb46f1a02c1f8174c6fac07ebf1eb6d8deffbcb5c695f1c9edd5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; arm variant v7

```console
$ docker pull centos@sha256:d28186b3247ad4e040c9c3a38e9021402f1e76d72642f537866f5a4b764a2827
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68156366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3985e82e9f60459361971f664790d193587b3f19571b70b0ea1951fc5e61d0b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Apr 2018 20:51:06 GMT
ADD file:08e92d41b32e8d8dbbf1c51252617e0c63268be95968c3159bdb59d8a70ed639 in / 
# Wed, 11 Apr 2018 20:51:07 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180403
# Wed, 11 Apr 2018 20:51:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4720572038cedb16bfe312702ed8f35b7d317f9422bf7a951813628898655cc0`  
		Last Modified: Wed, 11 Apr 2018 20:51:45 GMT  
		Size: 68.2 MB (68156366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; arm64 variant v8

```console
$ docker pull centos@sha256:a8a82b093607460c25468e06e95d387b8b7e4666d2b50f5c713e3abed20016dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73381211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f65840122d0e74a2ad96078641dc4f8067f3e601ff4859e6fb264e22df61c35`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Apr 2018 02:55:23 GMT
ADD file:7ba2f8db615a5f1ea7d72ead939e3e97d42ca174557104b1cdf3ab04d7d17e11 in / 
# Tue, 10 Apr 2018 02:55:24 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180402
# Tue, 10 Apr 2018 02:55:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1e9dd4c85ba2a2f015a09ae4f0bb9f8e09ab07845641a918222596b0ae91dd25`  
		Last Modified: Tue, 10 Apr 2018 02:56:31 GMT  
		Size: 73.4 MB (73381211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; 386

```console
$ docker pull centos@sha256:eca35a3757df970e23db13dec7367de9fcffa96ebf17865a6a91c1b44377af1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73601530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65714568ac197af769f51fe97b8e34ec3d5ce2dd2b6a4d63aed19a828dfcaf54`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 13 Apr 2018 20:25:30 GMT
ADD file:b121c2aaef8af861eadeb1471032825cb9464c4b6cb3f0747df0e8297a0a6bf1 in / 
# Fri, 13 Apr 2018 20:25:31 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180403
# Fri, 13 Apr 2018 20:25:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:443b12714f8a5cc36e7ead31b263ee20ce3d5b8287592b11eb7bc086389d8eb4`  
		Last Modified: Fri, 13 Apr 2018 20:26:20 GMT  
		Size: 73.6 MB (73601530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; ppc64le

```console
$ docker pull centos@sha256:9110a7c594f3040bf67bef6465fe7dd23596d21a58c6bac34907bf84f8c6e1e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76311531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086fbdad6a978a24da8c03d026ce050dbb13d380e60dea85c4abb966a2110a5b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Apr 2018 02:17:14 GMT
ADD file:8bfded3e68ff7b115d751cfd2ca761095b2fd715ca1ee22ee9bc1d068c707779 in / 
# Tue, 10 Apr 2018 02:17:16 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180402
# Tue, 10 Apr 2018 02:17:17 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8c387629bebe42d42adf4a19f5f5680195708e8021c9b955f2f0a7a4da40ec87`  
		Last Modified: Tue, 10 Apr 2018 02:17:57 GMT  
		Size: 76.3 MB (76311531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

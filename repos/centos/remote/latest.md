## `centos:latest`

```console
$ docker pull centos@sha256:f1d0384f6457887aa40cb36243e0e6b5dd899d5cc1548ba825c986ca839aa647
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
$ docker pull centos@sha256:bb5e3ee4ea167a6c22c9d772b2dbe75556b33c302e5b4787d764f3b4a9b91bad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73490272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b755cf648b470bd5e426c1ca3307fced136bbf5cb964b1410155b7e8be49c5d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Jun 2018 08:40:49 GMT
ADD file:bc62049efc7a19f459e97a79441fc4f623c3e93a7e63c29cd1bf4f185ce436bd in / 
# Tue, 05 Jun 2018 08:40:50 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180601
# Tue, 05 Jun 2018 08:40:51 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6bb27a31bdf75cb06f9e84ff5b2e0e515f9795794a6747b0bc4016689602bf6c`  
		Last Modified: Tue, 05 Jun 2018 08:41:38 GMT  
		Size: 73.5 MB (73490272 bytes)  
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
$ docker pull centos@sha256:4b0811ac7a88d642ac229d934c586477be177e5a8ede400481e4bab509af672a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77804098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c3bccc9acb868b28b99323455c0a1e25e7392cca3dc09ca5590f9ff0392da82`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Jun 2018 08:17:10 GMT
ADD file:c33a8a14fb84c42fd3804668b63befc1f7b1d013f89b0c515d0c6ada495c4f54 in / 
# Tue, 05 Jun 2018 08:17:12 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Tue, 05 Jun 2018 08:17:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:07ab266263dd291eadf9bd75c7ced592dd8caf06ede79850a7060ce8d4b1ece0`  
		Last Modified: Tue, 05 Jun 2018 08:17:50 GMT  
		Size: 77.8 MB (77804098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

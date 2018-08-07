## `centos:latest`

```console
$ docker pull centos@sha256:2de7b4cae4066003dafc85ce64bb3e2b0ea295f2330aa63e8bf23a552b0b5c36
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
$ docker pull centos@sha256:fc2476ccae2a5186313f2d1dadb4a969d6d2d4c6b23fa98b6c7b0a1faad67685
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.7 MB (74694681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5182e96772bf11f4b912658e265dfe0db8bd314475443b6434ea708784192892`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; arm variant v7

```console
$ docker pull centos@sha256:d4515ca57a32a2c1ac4cc6d5acec101ae7c2e58d484942e40b8deee607e5935f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69853757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee182b938b69745896857696205fccdede104c742137cd812563c54b088ef1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Jun 2018 11:59:05 GMT
ADD file:428d5c1af01a962665e29845c467d822057a10910b4983599cd02cca0dfcb988 in / 
# Tue, 05 Jun 2018 11:59:06 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Tue, 05 Jun 2018 11:59:06 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d01992b4c8eed2cae9938dae1b0a6dfaab9e03aa11590da69269900c296792b7`  
		Last Modified: Tue, 05 Jun 2018 11:59:55 GMT  
		Size: 69.9 MB (69853757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; arm64 variant v8

```console
$ docker pull centos@sha256:15486b0f0b0b55d864d8454e98a9c3d570e4d22b6b266a7fc4ec60db7f9d2f9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73451804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8bed901118d68da99ae09df6c05c232a4bcd7cd0f95f9c34aba6b9d62667d88`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 07 Aug 2018 08:40:55 GMT
ADD file:4d5a85cacf2ca4ad89fcb54e1fabb2b7b12465e401b1cc95eb5305628753a167 in / 
# Tue, 07 Aug 2018 08:40:57 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Tue, 07 Aug 2018 08:40:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:e22522ad67dfdffb2b928653d0c9cc00a0db8cc0bb5bd998c9d51865ebc508f4`  
		Last Modified: Tue, 07 Aug 2018 08:42:08 GMT  
		Size: 73.5 MB (73451804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; 386

```console
$ docker pull centos@sha256:da003c507cec3532d1fbb1d417a683408dfb1a1a7a899792730f0d1d2a2e0dff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75631476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1797d705c2b656b61935fe07ab00c82e3e8f15ea59c2cf82697ac628b312d1a5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Jun 2018 19:14:57 GMT
ADD file:c3240db15687584b61bb6a0ca0e4a8174ceafcbf8acac5c3deb4a6021ebdeffc in / 
# Tue, 05 Jun 2018 19:14:57 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180602
# Tue, 05 Jun 2018 19:14:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:e2cc4faeb7e4eb5a43fdbd2bdf35dec9e9d1c27c2a979d54d44a4aed12f7ac22`  
		Last Modified: Tue, 05 Jun 2018 19:16:11 GMT  
		Size: 75.6 MB (75631476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; ppc64le

```console
$ docker pull centos@sha256:f748fe044ab6154cb455953eac924fc936fd4bb891c7312ba070eb0ef659acf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78798832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d93fe8f3f356e45568c4482217a8480af968b89d5d3cc077f6a26d0d939a1e34`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 07 Aug 2018 08:18:26 GMT
ADD file:1b00e310c0794426c86ac117f7fd866f72d673f2c2f94c213f6ed7f9001e8e34 in / 
# Tue, 07 Aug 2018 08:18:28 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Tue, 07 Aug 2018 08:18:30 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8b0894842811bbb1e8e4bf07eb245205386cd6fcc221a597fc5ba263000f76bc`  
		Last Modified: Tue, 07 Aug 2018 08:19:19 GMT  
		Size: 78.8 MB (78798832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

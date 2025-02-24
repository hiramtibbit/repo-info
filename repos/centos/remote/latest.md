## `centos:latest`

```console
$ docker pull centos@sha256:b5e66c4651870a1ad435cd75922fe2cb943c9e973a9673822d1414824a1d0475
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
$ docker pull centos@sha256:ca58fe458b8d94bc6e3072f1cfbd334855858e05e1fd633aa07cf7f82b048e66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75403831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f38484d220fa527b1fb19747638497179500a1bed8bf0498eb788229229e6e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; arm variant v7

```console
$ docker pull centos@sha256:9fd67116449f225c6ef60d769b5219cf3daa831c5a0a6389bbdd7c952b7b352d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70029389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c52f2d0416faa8009082cf3ebdea85b3bc1314d97925342be83bc9169178efe`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Mar 2019 12:00:18 GMT
ADD file:e9a3f27674e8ef05c9fb52ea3995976938e8063024e52e52c8f72f0514f1f10c in / 
# Fri, 15 Mar 2019 12:00:19 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Fri, 15 Mar 2019 12:00:20 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:193bcbf05ff9ae85ac1a58cacd9c07f8f4297dc648808c347cceb3797ae603af`  
		Last Modified: Mon, 11 Feb 2019 09:47:52 GMT  
		Size: 70.0 MB (70029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; arm64 variant v8

```console
$ docker pull centos@sha256:f25f24daae92b5b5fe75bc0d5d9a3d2145906290f25aa434c43bfcefecd10dec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74163767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a51de8a65d533b6706fbd63beea13610e5486e49141610e553a3e784c133a37`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Mar 2019 08:43:35 GMT
ADD file:a30d31b82540f050cf2ef8b77a636ef15b875c7a3b9481b4d78b5b92332a71fa in / 
# Fri, 15 Mar 2019 08:43:36 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Fri, 15 Mar 2019 08:43:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:90c48ff53512085fb5adaf9bff8f1999a39ce5e5b897f5dfe333555eb27547a7`  
		Last Modified: Fri, 15 Mar 2019 08:44:28 GMT  
		Size: 74.2 MB (74163767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; 386

```console
$ docker pull centos@sha256:1f832b4e3b9ddf67fd77831cdfb591ce5e968548a01581672e5f6b32ce1212fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75654099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe70670fcbec5e3b3081c6800cb531002474c36563689b450d678a34a89b62c3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 10 Oct 2018 10:38:55 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Fri, 15 Mar 2019 10:38:43 GMT
ADD file:1bff68db945cc0f9c1fc4a69400bfad48924c746dd3c9261dd39989dd52cb830 in / 
# Fri, 15 Mar 2019 10:38:43 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20181006
# Fri, 15 Mar 2019 10:38:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:39016a8400a36ce04799adba71f8678ae257d9d8dba638d81b8c5755f01fe213`  
		Last Modified: Fri, 15 Mar 2019 10:39:26 GMT  
		Size: 75.7 MB (75654099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:latest` - linux; ppc64le

```console
$ docker pull centos@sha256:3fb2d138701004acf3f41cde60415d09a052b47b070dbf8b6320fc18f3403750
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76787221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bd48e3f2dd6055ee9c38a91fee6c5ff7e9768a91edc4905a30139af301852e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Mar 2019 20:33:31 GMT
ADD file:a894c0fed2e34d026ea978e0f58b90fc26e6500adef435153c3f8fa06af40304 in / 
# Thu, 14 Mar 2019 20:33:37 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 20:33:39 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:deab1c539926c1ca990d5d025c6b37c649bbba025883d4b209e3b52b8fdf514a`  
		Last Modified: Fri, 15 Mar 2019 08:17:55 GMT  
		Size: 76.8 MB (76787221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

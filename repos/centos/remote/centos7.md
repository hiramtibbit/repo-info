## `centos:centos7`

```console
$ docker pull centos@sha256:92d23a2bd90c258ade0aa076cc0ca64c75aed6eecfec9f2acf9e1c6e14b76385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `centos:centos7` - linux; amd64

```console
$ docker pull centos@sha256:365fc7f33107869dfcf2b3ba220ce0aa42e16d3f8e8b3c21d72af1ee622f0cf0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75165529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1148e4cc2c148c6890a18e3b2d2dde41a6745ceb4e5fe94a923d811bf82ddb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:centos7` - linux; arm variant v7

```console
$ docker pull centos@sha256:65d68928b28bd5878bf53b8e0611b0cae52a9f5876110916891f4b6e04040336
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69853138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb63e3c96f54a97414c0aeac6e6c709e4dd54d7eb1dce08c669605662d3f51f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 07 Aug 2018 12:06:18 GMT
ADD file:8b763ef22f8c3765b00d2f5d39f38eee7fd677abb9d6d1c6c3138a56e2c063fc in / 
# Tue, 07 Aug 2018 12:06:19 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180805
# Tue, 07 Aug 2018 12:06:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f98cb03e8d557f5fadff544769d6efa28e545dab0ed92580a31fbe026a3648f6`  
		Last Modified: Tue, 07 Aug 2018 12:06:55 GMT  
		Size: 69.9 MB (69853138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:centos7` - linux; arm64 variant v8

```console
$ docker pull centos@sha256:ce1e4e9809d1b12e379e7a812f4e41aea4f6eaf6075136a99f64898d5e889626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73479007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fe5b06a1f87d5ec87616e454dfa12a97469677706a90973ed0dea681fca7485`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 10 Oct 2018 08:40:28 GMT
ADD file:6c778a25df1d3921a1f0c4d1f22255937f257dae9116be463a675173124c0662 in / 
# Wed, 10 Oct 2018 08:40:29 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Wed, 10 Oct 2018 08:40:30 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:38163f410fa060991684d6e8fe0b0eb85182cb6a8257ae76a9ad55e939d2f274`  
		Last Modified: Wed, 10 Oct 2018 08:41:17 GMT  
		Size: 73.5 MB (73479007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:centos7` - linux; 386

```console
$ docker pull centos@sha256:d070fe76cc044d7cda5e5f9623cfa875ec53ddc268c3e7799c6a00b05bab3ca9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75660126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce86589d900145c56f035468675c26a71a5344b454c700e70262173ed462ec9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 10 Oct 2018 10:38:55 GMT
MAINTAINER https://github.com/CentOS/sig-cloud-instance-images
# Wed, 10 Oct 2018 10:39:06 GMT
ADD file:c574252496a0d85d62f89d7447f35f09436fb9a3d80b9ccc5f4c395df2f42a7d in / 
# Wed, 10 Oct 2018 10:39:06 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20181006
# Wed, 10 Oct 2018 10:39:07 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:772072aaf465d4f46edfd6bd1b1888874b15d5947b282970848b9967d5817d04`  
		Last Modified: Wed, 10 Oct 2018 10:40:02 GMT  
		Size: 75.7 MB (75660126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `centos:centos7` - linux; ppc64le

```console
$ docker pull centos@sha256:d0f81db1a19cb5b6b22fca24069b7c66583e5baf42d36fd6df0c84a68776ce7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.5 MB (76518000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74428bb259024327fa78ba04cdb2dfa533a5098e4faa5db26fe99322e5cd41ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Dec 2018 09:28:23 GMT
ADD file:533f7bf854c6f78f9d3b148e19747fdd95f2e4fc51d0c091858f80cc7d04b09a in / 
# Thu, 06 Dec 2018 09:28:24 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 09:28:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:23856db8b6dd5446b0c9e2943c667570731e5431189dc0513531b29c78201b51`  
		Last Modified: Thu, 06 Dec 2018 09:31:58 GMT  
		Size: 76.5 MB (76518000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

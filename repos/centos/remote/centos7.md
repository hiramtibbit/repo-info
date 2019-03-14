## `centos:centos7`

```console
$ docker pull centos@sha256:a81ea5364ff9199b53c7de2eda6dffbff0739116a0908c39e83d7d74b2702a71
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

### `centos:centos7` - linux; arm variant v7

```console
$ docker pull centos@sha256:a757bdb58fcfd0656121b77e2fef6629c27062563219e0729ee77bb291e29d5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70028874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696a2a326214d2c5b0fb9849a8744e1da20c7c5c9d36a5bbc2697a6f3ae0249a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Dec 2018 12:58:41 GMT
ADD file:55e9ef36644ac92db8d8b25e3a32bd832bb2b9df5f21aabed195f2ab41ee4459 in / 
# Thu, 06 Dec 2018 12:58:42 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 12:58:43 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:848bc3b64acac10d70e39a27bd8fad888a66b9d4a2822e43d7280a0fcb86a8cd`  
		Last Modified: Thu, 06 Dec 2018 12:59:27 GMT  
		Size: 70.0 MB (70028874 bytes)  
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

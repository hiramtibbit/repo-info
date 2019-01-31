## `openjdk:8-jdk-alpine`

```console
$ docker pull openjdk@sha256:39d0f4075ccc0076c496b4f7a4e87e6eed63fe1086a10d04c521362c7f69a56c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:8-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:a68a9d335eb80e316856803c44b48ba664756f7efe477b3867e858c824b1fd05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72858225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a93502ddd8714195247e194073e5b66a5ac47560a8f995f6ba987fc6e26b84`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:42:14 GMT
ENV LANG=C.UTF-8
# Thu, 31 Jan 2019 02:42:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 Jan 2019 02:42:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 31 Jan 2019 02:42:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 31 Jan 2019 02:42:15 GMT
ENV JAVA_VERSION=8u191
# Thu, 31 Jan 2019 02:42:15 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Thu, 31 Jan 2019 02:42:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdc61458cffd62ac4c8b61e8c802e215f17f950e740aa6b7845f71784d7b615`  
		Last Modified: Thu, 31 Jan 2019 02:45:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa7fce0c25feb9b2bdcdc9df4516fa9572442ce9f92838af4f35bf82b847e3e`  
		Last Modified: Thu, 31 Jan 2019 02:45:41 GMT  
		Size: 70.7 MB (70650950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-alpine` - linux; arm variant v6

```console
$ docker pull openjdk@sha256:dcb65b1ec8e65e5a2251288fde31386c75f52f9c2e8be7b7a85230e0253a6333
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70283205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4543f6170411e5f7253679e4a54c618b4cf793d46eb250f95d50182699685106`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:54:13 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 09:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 09:54:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 08:52:32 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 08:52:33 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 08:52:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db946754b322adc3ac60fe5714a9c65ff7c92700903efa2f530018cbf95e2746`  
		Last Modified: Fri, 21 Dec 2018 09:55:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1d16e6f5fe0af05c42a079828ae5f8c6cf49b4f40a792df5d1066074aba468`  
		Last Modified: Fri, 11 Jan 2019 08:53:27 GMT  
		Size: 68.1 MB (68137010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:efce37e72e95e0b6bdbff78b3a361570067a22549e3058161d9213f1007bc65a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71277577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e7ca5b66b3d5f571f8f448c76c574ed2439e32126586ed735b844557c691a2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:05:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 13:05:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 09:55:17 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 09:55:18 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 09:55:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9e9373e1630a3fd7acf3a7b3b66ef8e25b4b7b60f52929a98b45991a15255e`  
		Last Modified: Fri, 11 Jan 2019 09:58:00 GMT  
		Size: 69.2 MB (69177325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-alpine` - linux; 386

```console
$ docker pull openjdk@sha256:7cb8288f5441aca54177d109b38aaf3726605650180a7ff0a3c93e9ea30f13ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73566914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:236d6c96600d125a89387bc880eb9118b5537eeb0fd511a4a67db78c5ce97ae1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 17:15:19 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 17:15:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 17:15:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 17:15:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 12:02:56 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 12:02:56 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 12:03:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa5ad7015b94f77d17fc7434e4c4966902dcf6ddf7393a9e74d72a91e3a2f4b`  
		Last Modified: Fri, 21 Dec 2018 17:17:01 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee3ca43afc104e5b9084a05a79ed310fce42ea1dc534fe84afc015eccf1b82b`  
		Last Modified: Fri, 11 Jan 2019 12:04:28 GMT  
		Size: 71.3 MB (71294932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-alpine` - linux; ppc64le

```console
$ docker pull openjdk@sha256:ee35222d3bbe8c23f0cee331f66d2da91331a9670f8f79dc29894ae60a342c06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72033624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5610ffb3fbe8410c64cb401106c97edee4f3bd38fcd78b9b7c3bd7f661b6806c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:27:06 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 11:27:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 11:27:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 11:27:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 09:31:40 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 09:31:42 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 09:31:53 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c68a7687c05687b556f4161aa0149bd285ea670773baee7d2eb53c9b5cb242`  
		Last Modified: Fri, 21 Dec 2018 11:30:53 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ac8f0288cbe59eace2140191092345812d841835755758ae7c47cfe0b054cd`  
		Last Modified: Fri, 11 Jan 2019 09:34:14 GMT  
		Size: 69.8 MB (69838438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8-jdk-alpine` - linux; s390x

```console
$ docker pull openjdk@sha256:494e54762303ee6b11fedcc1d8628fcd3ce1aa0fb110ab497ad15a63a35a8102
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71755821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f2f65961f4000103c0d58b7ff0607f331188a58bf4cb5886f9418a870eae89`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:28:45 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:28:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:28:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 13:28:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 12:48:50 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 12:48:50 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 12:48:54 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834a618d8a86ef384988744d20f6cca1936684bdbeb27cf0dd33b0c95965cfd9`  
		Last Modified: Fri, 21 Dec 2018 13:31:20 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d605cca1e986d56258e4e101717d85842bae5d27bcc663ab4d1f0d59f62f99`  
		Last Modified: Fri, 11 Jan 2019 12:50:12 GMT  
		Size: 69.4 MB (69447560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

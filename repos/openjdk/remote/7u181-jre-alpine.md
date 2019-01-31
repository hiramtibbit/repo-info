## `openjdk:7u181-jre-alpine`

```console
$ docker pull openjdk@sha256:f20bc25eb04f1b09b3cc1fec1d7f8c8b930a6a269bc26d54cabdf9e11702ed2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7u181-jre-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:632d3515a887adf0817b9c91eec2e9359d76e2d30736990e8913296f45a37454
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64151440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea2b8ab7c845242f3d3c9108603431f63fe97a05425c54d31d82f9cf551592c`
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
# Thu, 31 Jan 2019 02:43:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 31 Jan 2019 02:43:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 31 Jan 2019 02:43:06 GMT
ENV JAVA_VERSION=7u181
# Thu, 31 Jan 2019 02:43:06 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Thu, 31 Jan 2019 02:43:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:37f304490de84703ca7c8b0e7501dca02577d224514d2d6819236abba0a961d0`  
		Last Modified: Thu, 31 Jan 2019 02:46:37 GMT  
		Size: 61.9 MB (61944165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-alpine` - linux; arm variant v6

```console
$ docker pull openjdk@sha256:0b64e841a2480a313b160a7e7e0016966ee3a9459e119d6835bd0509ac26c5be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54561876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce299f10c848bb778f71eac8e12c112e03bf42876a4c4d1fea3f1f791029b77a`
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
# Fri, 21 Dec 2018 09:54:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 21 Dec 2018 09:54:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 21 Dec 2018 09:54:53 GMT
ENV JAVA_VERSION=7u181
# Fri, 21 Dec 2018 09:54:53 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Fri, 21 Dec 2018 09:55:08 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:8a37aa98ca475090fbc9ef2474004f6e002719aeb6d974bc6030168a8632e35d`  
		Last Modified: Fri, 21 Dec 2018 09:56:49 GMT  
		Size: 52.4 MB (52415681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-alpine` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:8f4aeab9355b8540b01d896bce5c77bae3dc77a96c552097969cdd1272cb62c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61775474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550330ad1296c16b56e3f02c2cd670cf388c2f31582a26cdf6d90f5d3eba7a2c`
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
# Fri, 21 Dec 2018 13:07:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 21 Dec 2018 13:07:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 21 Dec 2018 13:07:38 GMT
ENV JAVA_VERSION=7u181
# Fri, 21 Dec 2018 13:07:39 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Fri, 21 Dec 2018 13:08:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:56ad684952dc6f867fec5ccb86697be06b4824f87f30302fbd1f727cb5796a9c`  
		Last Modified: Fri, 21 Dec 2018 13:11:26 GMT  
		Size: 59.7 MB (59675222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-alpine` - linux; 386

```console
$ docker pull openjdk@sha256:2f7b7b05ec49657c0c27e2a2d2aec957e0c02a20b7cfe9d29b95b74bb7ba2543
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67227611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6373ba12d710680c0fcba5b64f7593d96837191ef4ba95455acc2481cac7e3`
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
# Fri, 21 Dec 2018 17:16:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 21 Dec 2018 17:16:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 21 Dec 2018 17:16:05 GMT
ENV JAVA_VERSION=7u181
# Fri, 21 Dec 2018 17:16:05 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Fri, 21 Dec 2018 17:16:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:fb077538c9d9aa452e3c943b2dc261b2beab6bb164c6219a94584f792480dde6`  
		Last Modified: Fri, 21 Dec 2018 17:18:06 GMT  
		Size: 65.0 MB (64955629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-alpine` - linux; ppc64le

```console
$ docker pull openjdk@sha256:ab7909b5790c28f85cdee4bd68fe04d654577e2a6257dc8e84a9e3611002f04e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.0 MB (56032449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c84935d0de96697b5fa951a221b305002aa39d4e95340c671b472f2f93e41b`
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
# Fri, 21 Dec 2018 11:28:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 21 Dec 2018 11:28:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 21 Dec 2018 11:28:48 GMT
ENV JAVA_VERSION=7u181
# Fri, 21 Dec 2018 11:28:50 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Fri, 21 Dec 2018 11:29:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:dee57ec43a0fb9d34db77d0da1ad877fdfb284d9e234399ead89b4c1b45bff20`  
		Last Modified: Fri, 21 Dec 2018 11:32:33 GMT  
		Size: 53.8 MB (53837263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-alpine` - linux; s390x

```console
$ docker pull openjdk@sha256:7f34e6022030418f38e337b6b45a0214dee1e63e02ed5204519913c6c4d41219
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56409694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbd77400ce0812c73266b9b4fc5ad87b9125465816e717f6e14b4c4d6564d98`
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
# Fri, 21 Dec 2018 13:29:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 21 Dec 2018 13:29:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 21 Dec 2018 13:29:33 GMT
ENV JAVA_VERSION=7u181
# Fri, 21 Dec 2018 13:29:34 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Fri, 21 Dec 2018 13:29:40 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:c0efa740de5fc655b0beecd73954b9c0425a78eeb539d779e6119b4ebc3e05a8`  
		Last Modified: Fri, 21 Dec 2018 13:32:34 GMT  
		Size: 54.1 MB (54101433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

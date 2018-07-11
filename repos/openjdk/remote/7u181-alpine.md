## `openjdk:7u181-alpine`

```console
$ docker pull openjdk@sha256:1e1770acbd6fdd4d8050da9964be98ed2a86fd7a8676373b45564807b7449544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `openjdk:7u181-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:d34ab932a8a514cf4b860939fb7fec730a196333e0db7810f6ceee33716cb8af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80470644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbda53dffc7d056c18e96e9fd82bbeb9c069f10fb4788d316006925c89f10e53`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:35:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 11 Jul 2018 00:35:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 11 Jul 2018 00:35:53 GMT
ENV JAVA_VERSION=7u181
# Wed, 11 Jul 2018 00:35:53 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Wed, 11 Jul 2018 00:36:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311ad0da45338842480bf25c6e6b7bb133b7b8cf709c3470db171ec370da5539`  
		Last Modified: Wed, 11 Jul 2018 00:37:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5147f2354ad8b5c9a08cbc0ea3401ca047cb35585808b803950f5489e8d0d5e9`  
		Last Modified: Wed, 11 Jul 2018 00:43:16 GMT  
		Size: 78.3 MB (78263863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-alpine` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6679cc9f9041ed2c2238e8c6c5f4ba132a8c88525b708a283fd69a67f51d9602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78096407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4748e64fc6a1a94235e40e4ae04d5f8d9b56a02c95c4ab491acf1257602443e5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 08:42:59 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 08:43:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 08:45:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 11 Jul 2018 08:45:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 11 Jul 2018 08:45:21 GMT
ENV JAVA_VERSION=7u181
# Wed, 11 Jul 2018 08:45:22 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Wed, 11 Jul 2018 08:45:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6021084a8eee491399113c29faf511efbb84b0299920f83c1bfbca669a70ee`  
		Last Modified: Wed, 11 Jul 2018 08:49:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02e390b87680086e9e3996081b4997abdd7958fa51134d30ec5dd230f515243`  
		Last Modified: Wed, 11 Jul 2018 08:54:13 GMT  
		Size: 76.0 MB (75996480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-alpine` - linux; 386

```console
$ docker pull openjdk@sha256:645d36fad1e48e82f5946c36bd3d6a9b504605dde25bd3a16433c9ffa592073a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83572645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4185ba0d11f2ae2897bf1f8a94089219861822eda6cfcdf2995b0ea6db712dcb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:42:07 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 10:42:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 10:43:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 11 Jul 2018 10:43:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 11 Jul 2018 10:43:07 GMT
ENV JAVA_VERSION=7u181
# Wed, 11 Jul 2018 10:43:07 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Wed, 11 Jul 2018 10:43:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a25bd05f353e6067ad7c0b5b95675b1b6f7740cd5393ff80362fa3acc51cfa0`  
		Last Modified: Wed, 11 Jul 2018 10:45:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ead1e6afe17da926a67b0089648267c95a5bf5a1f3335c5e57b7e48c4f69232`  
		Last Modified: Wed, 11 Jul 2018 10:50:45 GMT  
		Size: 81.3 MB (81301311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-alpine` - linux; ppc64le

```console
$ docker pull openjdk@sha256:d4fcbf6cdbb6ed65640914b8fdb260477248215b9005f7edf6d67a453d142d55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72433651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58fb0c481f0b0bf64a5564e9edf6af50a7ec458bd2348439133e8a23f60d9d91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:30:08 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 09:30:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 09:35:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 11 Jul 2018 09:35:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 11 Jul 2018 09:36:12 GMT
ENV JAVA_VERSION=7u181
# Wed, 11 Jul 2018 09:36:16 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Wed, 11 Jul 2018 09:36:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20211aade657f59a9c4f2a84c24b7c3c88fa58b2decb513c620ef1e6e74029f5`  
		Last Modified: Wed, 11 Jul 2018 09:54:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90625c5d60521e7a83a3db02708e9480a32ed5c0bdfb537bcacf49002f467b13`  
		Last Modified: Wed, 11 Jul 2018 09:58:22 GMT  
		Size: 70.2 MB (70238375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

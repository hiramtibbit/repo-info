## `maven:alpine`

```console
$ docker pull maven@sha256:d47cf93ac1e24d81aebf3b5f3c94c758ee1399db56b965cfeb46ac75c0c1c57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:alpine` - linux; amd64

```console
$ docker pull maven@sha256:0d41be522f347c7c3a5cf83db0b593004d1a3ef59ba4e8c4667fa65de7ee4915
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83943946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b02baa40afcbe972bdbcb52b6baaa4405b9011c6b1cf173a29a31c1f6aaa5d3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:06:56 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:06:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:43:53 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 12 Sep 2018 03:43:53 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 12 Sep 2018 03:43:53 GMT
ARG USER_HOME_DIR=/root
# Wed, 12 Sep 2018 03:43:54 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 12 Sep 2018 03:43:54 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 12 Sep 2018 03:43:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 12 Sep 2018 03:43:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 12 Sep 2018 03:43:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 12 Sep 2018 03:43:56 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 12 Sep 2018 03:43:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 12 Sep 2018 03:43:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 12 Sep 2018 03:43:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe815adf554b18a057fade5a6b9498765d20c055f80d8d2facfb3a9cb00b66d0`  
		Last Modified: Wed, 12 Sep 2018 00:09:10 GMT  
		Size: 70.6 MB (70581326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052943d623343a424a10dd7bfdf989189c652f145501d30cc16c688784d5d898`  
		Last Modified: Wed, 12 Sep 2018 03:44:58 GMT  
		Size: 2.2 MB (2165124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f25e5900d35a2672acfb00ef0bb239468ac4f456489c11da3dfb8573bc854b`  
		Last Modified: Wed, 12 Sep 2018 03:44:59 GMT  
		Size: 9.0 MB (8989218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e94ef7083021ae113b8000b9881ed5051188ede89ed15d65d045ed70022593`  
		Last Modified: Wed, 12 Sep 2018 03:44:57 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c84eb16507ed995b43ecec7ddfa3b0af9011358419438b36eafcee91d3bcb86`  
		Last Modified: Wed, 12 Sep 2018 03:44:57 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:591574c4226e39af628695199ad8004c4d58695cf0f43796cfb84f803fe6ffac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81292967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419b25c1c74e19e48a551c8a5b3ea470135238d2bae3021fbdaee8c1155ac243`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:28:56 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:28:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 08:28:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 08:28:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 08:28:58 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 08:28:58 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 08:29:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 09:04:15 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 12 Sep 2018 09:04:16 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 12 Sep 2018 09:04:16 GMT
ARG USER_HOME_DIR=/root
# Wed, 12 Sep 2018 09:04:17 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 12 Sep 2018 09:04:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 12 Sep 2018 09:04:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 12 Sep 2018 09:04:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 12 Sep 2018 09:04:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 12 Sep 2018 09:04:20 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 12 Sep 2018 09:04:21 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 12 Sep 2018 09:04:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 12 Sep 2018 09:04:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5330a9c830688a5533553fc6f68b39796b550d1e9e2adec9da6321849c3091f`  
		Last Modified: Wed, 12 Sep 2018 08:30:15 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc6a0cf1612b2dfd88775d4b635d04fe6b99bc3fdb4b25d28f1aa1244bf0a9a`  
		Last Modified: Wed, 12 Sep 2018 08:30:30 GMT  
		Size: 68.1 MB (68076599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae10c89cb69adf875cb7f0728c9bbd44f2102e3ac7698a708aec8231e6580261`  
		Last Modified: Wed, 12 Sep 2018 09:04:51 GMT  
		Size: 2.1 MB (2079182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ed2a4e68e8fc96fe3f54d7228d7b33e6b6cfc91d7dc562311afc752096b585`  
		Last Modified: Wed, 12 Sep 2018 09:04:53 GMT  
		Size: 9.0 MB (8989215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4535a81b8279d8bb028db56a89866e1ec6fb5d55a88a889339e91b18a7a48faa`  
		Last Modified: Wed, 12 Sep 2018 09:04:49 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa17e6eaf6eef9384b515e84e2557255a2edb45533ac875c7ab7a07061160307`  
		Last Modified: Wed, 12 Sep 2018 09:04:51 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:249e89915f7c6bdc67416f5685d1eec8541fb4d4e6423878713c0088e8d3cab1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82253140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a8b89fd43f465e3af8b03b758767bd79bb68c3b98663441ab77c5af66a2a27`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 11 Jul 2018 08:43:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 08:43:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 08:43:05 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 08:43:06 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 08:43:19 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 10:48:33 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 11 Jul 2018 10:48:34 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 11 Jul 2018 10:48:34 GMT
ARG USER_HOME_DIR=/root
# Wed, 11 Jul 2018 10:48:35 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 11 Jul 2018 10:48:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 11 Jul 2018 10:48:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 11 Jul 2018 10:48:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 11 Jul 2018 10:48:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 11 Jul 2018 10:48:47 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 11 Jul 2018 10:48:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 11 Jul 2018 10:48:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 11 Jul 2018 10:48:49 GMT
CMD ["mvn"]
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
	-	`sha256:da5d8d43f13050741168e1cb5742b1af6d4ca005549ef6f9f7627fc20feb9ed5`  
		Last Modified: Wed, 11 Jul 2018 08:49:46 GMT  
		Size: 69.1 MB (69115738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c45f6a6395e6a70342ad018474e8992be0bd0397bc013a4a806cb30f0253f24`  
		Last Modified: Wed, 11 Jul 2018 10:50:51 GMT  
		Size: 2.0 MB (2047138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74aa71a6fb32565b4b381d9b775339033a0ec078dc0b562c6b2281ad495f1222`  
		Last Modified: Wed, 11 Jul 2018 10:50:51 GMT  
		Size: 9.0 MB (8989225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06e3869515514ec0315413106a261673210b89aa5eeaa2f26efc4fdcd9cd08f`  
		Last Modified: Wed, 11 Jul 2018 10:50:49 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41d49fa92b6b057b2a8aa7b5312b66609401a1ff84bad070e956806766926f6`  
		Last Modified: Wed, 11 Jul 2018 10:50:49 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; 386

```console
$ docker pull maven@sha256:93949b48e6fa3eb7737b0dbe53a9dedf0f598d5aeb259b2b8e861fec02a28555
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84751597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae7674762ca6481bc68e27888db30676d3f62e9db94a1d7c9d81dccb4f6a4e41`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 12:59:25 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:59:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:59:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 12:59:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 12:59:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 12:59:28 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 12:59:37 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 07 Sep 2018 04:21:24 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 07 Sep 2018 04:21:25 GMT
ARG MAVEN_VERSION=3.5.4
# Fri, 07 Sep 2018 04:21:25 GMT
ARG USER_HOME_DIR=/root
# Fri, 07 Sep 2018 04:21:25 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Fri, 07 Sep 2018 04:21:25 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Fri, 07 Sep 2018 04:21:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 07 Sep 2018 04:21:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 07 Sep 2018 04:21:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 07 Sep 2018 04:21:28 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 07 Sep 2018 04:21:28 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 07 Sep 2018 04:21:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 07 Sep 2018 04:21:29 GMT
CMD ["mvn"]
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
	-	`sha256:edf08ad1a21ccfc6fc77d4ec7546706cea699ca0d86afc80106c79650cb258f0`  
		Last Modified: Wed, 05 Sep 2018 13:26:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f6c6bc9aee9e974d2dba0d91dc06cd68dc456f23011b3ff4cbb95ebc2e0866`  
		Last Modified: Wed, 05 Sep 2018 13:26:32 GMT  
		Size: 71.2 MB (71209923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6bad912b68236afbef0ab2f9c92e7da6dd40f28a1833b21c9ed39c6d4d8c59`  
		Last Modified: Fri, 07 Sep 2018 04:24:34 GMT  
		Size: 2.3 MB (2279999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829714045ddf0ebd8e71a70c434424d18cbcbe7d57594d72d1b0dd4f4b3e1577`  
		Last Modified: Fri, 07 Sep 2018 04:24:34 GMT  
		Size: 9.0 MB (8989229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c362bb07038d7eb8d56ff789ddf6c0d18da9e018eea350c72f26fad735c4883`  
		Last Modified: Fri, 07 Sep 2018 04:24:34 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9048c4946a3b7fd6f0fbe1739586f62ba7f46e6104733b433d77a11971fc3ea0`  
		Last Modified: Fri, 07 Sep 2018 04:24:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; ppc64le

```console
$ docker pull maven@sha256:b7b54239e6157c2ca700bb10a07d4bb29f7259394935714ed0527cd6ee6b33c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83097547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f8170fd2fed635a58ccdcd425161ca0591a3087e9fbe66223a686c4c072d3c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 11 Jul 2018 09:30:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 09:30:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 09:30:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 09:30:29 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 09:31:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 11:28:53 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 11 Jul 2018 11:28:59 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 11 Jul 2018 11:29:01 GMT
ARG USER_HOME_DIR=/root
# Wed, 11 Jul 2018 11:29:02 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 11 Jul 2018 11:29:03 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 11 Jul 2018 11:29:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 11 Jul 2018 11:29:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 11 Jul 2018 11:29:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 11 Jul 2018 11:29:20 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 11 Jul 2018 11:29:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 11 Jul 2018 11:29:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 11 Jul 2018 11:29:34 GMT
CMD ["mvn"]
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
	-	`sha256:4940bac8a334c32365ae230ca1e85891c85b3cc84fc823afc696aeb87f241727`  
		Last Modified: Wed, 11 Jul 2018 09:54:40 GMT  
		Size: 69.8 MB (69756150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac38177107fc7cecd6d56795af4d845960502510b0919302096fd243ce2671bd`  
		Last Modified: Tue, 17 Jul 2018 19:05:22 GMT  
		Size: 2.2 MB (2155774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48307993ad61aed21938a042290f53fdddff6841ae7d4c51daf7276835dd4ed`  
		Last Modified: Tue, 17 Jul 2018 19:05:19 GMT  
		Size: 9.0 MB (8989231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17990864dd53c7c22ea9b25ff76ca0f7d6a18eecefb3b5d74c6f4be98ba064ff`  
		Last Modified: Tue, 17 Jul 2018 19:05:15 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb832e123cfb83f9c6333c6ff878c2caf98d4ae13a0665f123b3288b172821b`  
		Last Modified: Tue, 17 Jul 2018 19:05:15 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; s390x

```console
$ docker pull maven@sha256:803937b6c6e15c13dc74157e80a9b37eae99d3089edf30afaeb585cb36cea4fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82931971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:567a72ce736dedd71d4360d05bfa04334ea0aa29960dfed110829d7293fcb449`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:48:07 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 11:48:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 11:48:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 11:48:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 11:48:08 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 11:48:08 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 11:48:12 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 12:47:57 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 11 Jul 2018 12:47:57 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 11 Jul 2018 12:47:57 GMT
ARG USER_HOME_DIR=/root
# Wed, 11 Jul 2018 12:47:57 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 11 Jul 2018 12:47:58 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 11 Jul 2018 12:48:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 11 Jul 2018 12:48:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 11 Jul 2018 12:48:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 11 Jul 2018 12:48:08 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 11 Jul 2018 12:48:09 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 11 Jul 2018 12:48:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 11 Jul 2018 12:48:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b948ae8f2138a45776e1be04e263eed4e16432ba2b82c7c0e4a71afc6f9c878c`  
		Last Modified: Wed, 11 Jul 2018 11:50:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de7d6fd0a5e971cb0db85e096afe6d69454cfbaabba67d76b193f2b5ebfdd52`  
		Last Modified: Wed, 11 Jul 2018 11:50:20 GMT  
		Size: 69.4 MB (69381442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41334a5d79fae9580fa06c7b6c542cc774134a194b1a0bb1ffb52d694cb32e33`  
		Last Modified: Wed, 11 Jul 2018 12:49:05 GMT  
		Size: 2.3 MB (2252300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6aeef389008b192ce1f393f6447c6511e3d2bc62078550fef1c79632ee70317`  
		Last Modified: Wed, 11 Jul 2018 12:49:05 GMT  
		Size: 9.0 MB (8989228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c8dca34d6467b4ff8ea6ca3913fcfebee94fe4c35ac64b6be47446ab21d8a1`  
		Last Modified: Wed, 11 Jul 2018 12:49:04 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363ba02ef3e8981a9df0a1aa922c0c2ff66745a7ab3467e9e98d57ae5903bf74`  
		Last Modified: Wed, 11 Jul 2018 12:49:04 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

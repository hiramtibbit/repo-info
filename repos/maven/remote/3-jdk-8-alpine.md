## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:b6cfa57a53eec51c9c7ef68701dc6951896ff5ac8eeca19d27d52457035b6491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-8-alpine` - linux; amd64

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

### `maven:3-jdk-8-alpine` - linux; arm variant v6

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

### `maven:3-jdk-8-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:5905a22249357e882eb87626d1d270aa876c14a523df285be4a0cb082630e3e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82256145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67e1b13f44bb3682e28fa7eb074bf110703d21e001f513b818e63b933777cb24`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:31:14 GMT
ENV LANG=C.UTF-8
# Sat, 15 Sep 2018 10:31:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 15 Sep 2018 10:31:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 15 Sep 2018 10:31:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 15 Sep 2018 10:31:31 GMT
ENV JAVA_VERSION=8u171
# Sat, 15 Sep 2018 10:31:32 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 15 Sep 2018 10:31:44 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 15 Sep 2018 16:42:21 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 15 Sep 2018 16:42:22 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 15 Sep 2018 16:42:23 GMT
ARG USER_HOME_DIR=/root
# Sat, 15 Sep 2018 16:42:24 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 15 Sep 2018 16:42:25 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 15 Sep 2018 16:42:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 15 Sep 2018 16:42:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 15 Sep 2018 16:42:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 15 Sep 2018 16:42:34 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 15 Sep 2018 16:42:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 15 Sep 2018 16:42:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 15 Sep 2018 16:42:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ccd8840b9ed31daf1700ec6ed07458ba25d6734206c6c4c5910f09d8c0a6`  
		Last Modified: Sat, 15 Sep 2018 10:49:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0856fc6892ba80b6fab7480110b6913ba927962fc8c40602db9f56d51413c941`  
		Last Modified: Sat, 15 Sep 2018 10:49:57 GMT  
		Size: 69.1 MB (69115871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a7309a21c2d0baeb4fcf9e93b6c6419aa11ceb49e1956da3329839f21e340c`  
		Last Modified: Sat, 15 Sep 2018 16:45:45 GMT  
		Size: 2.0 MB (2049760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d24e754ba2cb077dad1701e4dd86c6f344c33067f0de88528efbb54d18e7afb`  
		Last Modified: Sat, 15 Sep 2018 16:45:46 GMT  
		Size: 9.0 MB (8989227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0432e34b8e5574d3059e94b8ade5286c9f61b8a07ee26ae8b01a60357582f36f`  
		Last Modified: Sat, 15 Sep 2018 16:45:44 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883f9a40f543243114762b580b5b222d84e351a7508fc87ec355f7a8f1768df0`  
		Last Modified: Sat, 15 Sep 2018 16:45:43 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; 386

```console
$ docker pull maven@sha256:bcbe559aa724df5a0786d00ec29f38fac9104c12df0ae375b37f765158b57f8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84753611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687be366df0367b7a61ab951a7b12df733a6bad73b0240fafcbdb68499742c26`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:26:37 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:26:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 12:26:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 12:26:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 12:26:38 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 12:26:39 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 12:26:43 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 18:15:26 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 12 Sep 2018 18:15:27 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 12 Sep 2018 18:15:27 GMT
ARG USER_HOME_DIR=/root
# Wed, 12 Sep 2018 18:15:27 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 12 Sep 2018 18:15:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 12 Sep 2018 18:15:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 12 Sep 2018 18:15:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 12 Sep 2018 18:15:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 12 Sep 2018 18:15:31 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 12 Sep 2018 18:15:32 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 12 Sep 2018 18:15:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 12 Sep 2018 18:15:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e11b9507e2b27f5ba6cf1ca7a6129f7238ae95981ee1dce74b023e8fea1d68`  
		Last Modified: Wed, 12 Sep 2018 12:28:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c44e31b3fde843ce77451a9d3432fecef5208c345c56937b36b3626b930550`  
		Last Modified: Wed, 12 Sep 2018 12:28:23 GMT  
		Size: 71.2 MB (71210069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1638e5c0186f0211b5479b73fe10f9fb164651f4e74531bea06055ab93ac64a`  
		Last Modified: Wed, 12 Sep 2018 18:16:21 GMT  
		Size: 2.3 MB (2281335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1471b1e570afd9e9f1f1cc7e626996e239330828ce080be4887f6bfb0d62dee0`  
		Last Modified: Wed, 12 Sep 2018 18:16:21 GMT  
		Size: 9.0 MB (8989220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ba61bb8cbd556673cb847fda46bb235cfe17b4ef8211c8c6ebf2d3107fe0bd`  
		Last Modified: Wed, 12 Sep 2018 18:16:20 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb44837aaec132555959f760dec4d31241fb9ee1a26eeda8ebf30ed1d8711b5`  
		Last Modified: Wed, 12 Sep 2018 18:16:20 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; ppc64le

```console
$ docker pull maven@sha256:1d26782188f0a15bfdcfe37826c1f83734f7b065cf6c403edc28fc84adf70efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83100779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26d6fe28a964783101486b32df7d9a7147367cb9e87bd2c3a2a3b3baad15cd2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 10:42:47 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 10:42:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 10:42:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 10:42:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 10:42:51 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 10:42:52 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 10:43:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 15:00:52 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 12 Sep 2018 15:00:54 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 12 Sep 2018 15:00:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 12 Sep 2018 15:00:56 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 12 Sep 2018 15:00:58 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 12 Sep 2018 15:01:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 12 Sep 2018 15:01:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 12 Sep 2018 15:01:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 12 Sep 2018 15:01:03 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 12 Sep 2018 15:01:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 12 Sep 2018 15:01:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 12 Sep 2018 15:01:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54bbb0272d84bd92ba5131b652f8b30f8a037eb25502b09336b9879057a5b41`  
		Last Modified: Wed, 12 Sep 2018 10:45:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de69629a94cc7adfc02c94bb5764387c5b3132ed0500a6c07b2048d7d09deb3f`  
		Last Modified: Wed, 12 Sep 2018 10:45:50 GMT  
		Size: 69.8 MB (69756665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba652ce728eb968c9491fa5f17e41dd442b077e69132e3365883aa044de08e1e`  
		Last Modified: Wed, 12 Sep 2018 15:03:02 GMT  
		Size: 2.2 MB (2158150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e13d5d26b88c3d549f5b6940da45cc69848d97749dad2079b9fc664333473e`  
		Last Modified: Wed, 12 Sep 2018 15:03:03 GMT  
		Size: 9.0 MB (8989215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226c26a7ab0fc106010613b3c8df083a4efb62839a9289706e33ffa1247f9121`  
		Last Modified: Wed, 12 Sep 2018 15:03:01 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9499f0d0d9e3cfa2feb995883149eb9db4d2c0281f7d02f5702e7113248f1f54`  
		Last Modified: Wed, 12 Sep 2018 15:03:01 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; s390x

```console
$ docker pull maven@sha256:e250a3a3eece12d4ea830792ae2b116fe807c67fc8fa2d82ebcfb17110e02191
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82935661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a35982b3a8881d38607efcf1b5bd82d8fd54b3ba2d64a82b6629953f7c47e5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:14:33 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 13:14:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 13:14:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 13:14:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 13:14:34 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 13:14:34 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 13:14:37 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 14:37:43 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 12 Sep 2018 14:37:43 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 12 Sep 2018 14:37:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 12 Sep 2018 14:37:43 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 12 Sep 2018 14:37:43 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 12 Sep 2018 14:37:50 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 12 Sep 2018 14:37:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 12 Sep 2018 14:37:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 12 Sep 2018 14:37:51 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 12 Sep 2018 14:37:51 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 12 Sep 2018 14:37:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 12 Sep 2018 14:37:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d467c81155dfdb8e21d7a7abb5210cdfe51c5e8336b7a58bf0fecf06d36633e`  
		Last Modified: Wed, 12 Sep 2018 13:16:20 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5076f0b2ce57a9a8b84d1be529d601310aab2edcd0146ea5571c32c8b4c338b4`  
		Last Modified: Wed, 12 Sep 2018 13:16:27 GMT  
		Size: 69.4 MB (69381652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe10ecb1bf0c96292161fcc5a56bab6f554dd2eb249220939cd809c7fbcf426`  
		Last Modified: Wed, 12 Sep 2018 14:38:54 GMT  
		Size: 2.3 MB (2255515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e7b324c7aa2be7af489bf1ac254fb30b5bbafd3ff6122deb364c0379960994`  
		Last Modified: Wed, 12 Sep 2018 14:38:54 GMT  
		Size: 9.0 MB (8989223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef03f5ff057fb89e32c1ebba241a1a13fc4f59740e8b914b5d10fd01139913`  
		Last Modified: Wed, 12 Sep 2018 14:38:54 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4510b649d3864dfad97942518977b82b7b2538a6130fdd8e64e16ad00b716cd2`  
		Last Modified: Wed, 12 Sep 2018 14:38:53 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

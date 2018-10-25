## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:170b56a94d0cfb1bdd5b74fff339487d7e7c8f4ad93c7bbecc253ee8eb96dcbc
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
$ docker pull maven@sha256:dcd0da4501bbc9b110fd3f6bee27a719612a86ac103de374f45846f8330eb139
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83973258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb4bb0d899412484c538a9ef78829c42031ae18e8d068e5c833cc22fbc517de3`
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
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:57:12 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 24 Oct 2018 23:57:12 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 24 Oct 2018 23:57:12 GMT
ARG USER_HOME_DIR=/root
# Wed, 24 Oct 2018 23:57:12 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 24 Oct 2018 23:57:12 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 24 Oct 2018 23:57:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 24 Oct 2018 23:57:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 24 Oct 2018 23:57:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 24 Oct 2018 23:57:16 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 24 Oct 2018 23:57:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 24 Oct 2018 23:57:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 24 Oct 2018 23:57:17 GMT
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
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f88801c955d02aa49c59b4ff045f9b5f57dfa39c7f639c1dc5ab15759d695f6`  
		Last Modified: Wed, 24 Oct 2018 23:59:43 GMT  
		Size: 2.2 MB (2165224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610acd6c8983747c382c00300ff4f5593cb8ea70a9155fbdcaf8eb6c76689b46`  
		Last Modified: Wed, 24 Oct 2018 23:59:43 GMT  
		Size: 9.0 MB (8989228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2814e90e330a73b5048543daa1b6cff63592ca1fac5be356a4327fbdeea7184`  
		Last Modified: Wed, 24 Oct 2018 23:59:42 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b24ea8a8cdacef4d9dd0e63729809249a58becde11abed137d6e5d26b77f118`  
		Last Modified: Wed, 24 Oct 2018 23:59:43 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:1b0d2a5a5b045057bd54fef0a75d3dc9c86e428607b3a7d776a8d8c16a7c09e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81311127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25507a91268baf45947eed8cf153064c6f601a1c0fd53c6776597aca72e5fcb`
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
# Thu, 25 Oct 2018 07:53:02 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 07:53:03 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 07:53:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 08:14:51 GMT
RUN apk add --no-cache curl tar bash procps
# Thu, 25 Oct 2018 08:14:51 GMT
ARG MAVEN_VERSION=3.5.4
# Thu, 25 Oct 2018 08:14:52 GMT
ARG USER_HOME_DIR=/root
# Thu, 25 Oct 2018 08:14:52 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Thu, 25 Oct 2018 08:14:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Thu, 25 Oct 2018 08:14:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 25 Oct 2018 08:14:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 25 Oct 2018 08:14:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 25 Oct 2018 08:14:59 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 25 Oct 2018 08:15:00 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 25 Oct 2018 08:15:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 25 Oct 2018 08:15:00 GMT
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
	-	`sha256:c95eff44029f51d2395d3cfdf8d60bb14a5fbd85a9196ede5b93d383718f135e`  
		Last Modified: Thu, 25 Oct 2018 07:53:50 GMT  
		Size: 68.1 MB (68094689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b723fbae21b04e45b30309990ec4aa8873da1bfe263d90b6b5b0aab4857ea6c4`  
		Last Modified: Thu, 25 Oct 2018 08:15:13 GMT  
		Size: 2.1 MB (2079223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8586e0882fd01a7dfc5a3d61a4db9b11d36696aa8efbaccba3cb1eefa63e0b`  
		Last Modified: Thu, 25 Oct 2018 08:15:14 GMT  
		Size: 9.0 MB (8989238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df66e262fb8b29e8389afed51ae8921684f4aa8572f984d7a14a5903a62f9f03`  
		Last Modified: Thu, 25 Oct 2018 08:15:13 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9049ca4d3484162abc24ea029a4ecbce19200533e8017e48e295f0471b590831`  
		Last Modified: Thu, 25 Oct 2018 08:15:13 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:bd89e0c87f5ce859c8ca9b5de1f0c7784d881f52394485db6323cf9bdefba2b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82277476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b4d5ea36f6b202456f9c651e617a27b5437b330904b130aa3beaeb5b9de6e4d`
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
# Thu, 25 Oct 2018 09:17:13 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 09:17:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 09:17:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 10:43:56 GMT
RUN apk add --no-cache curl tar bash procps
# Thu, 25 Oct 2018 10:43:58 GMT
ARG MAVEN_VERSION=3.5.4
# Thu, 25 Oct 2018 10:43:59 GMT
ARG USER_HOME_DIR=/root
# Thu, 25 Oct 2018 10:43:59 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Thu, 25 Oct 2018 10:44:00 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Thu, 25 Oct 2018 10:44:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 25 Oct 2018 10:44:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 25 Oct 2018 10:44:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 25 Oct 2018 10:44:16 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 25 Oct 2018 10:44:17 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 25 Oct 2018 10:44:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 25 Oct 2018 10:44:19 GMT
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
	-	`sha256:95c8c0ea9a4484bac07a9a5923049b830db1970c35f5a50b5f7c5c324adca6c3`  
		Last Modified: Thu, 25 Oct 2018 09:30:35 GMT  
		Size: 69.1 MB (69137169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42437f14501f0033e5ca9fefee209af2ad9feeca293565c36fee30e77b0bf018`  
		Last Modified: Thu, 25 Oct 2018 10:47:17 GMT  
		Size: 2.0 MB (2049795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a638ec23c7351ef7cbd5886126f438e0b47aaf9fe0db6ef311cd73ad80d1090f`  
		Last Modified: Thu, 25 Oct 2018 10:47:18 GMT  
		Size: 9.0 MB (8989225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b25e8560e0c3a96b8f78e348a0227bfcba096b3237b98e9e8dc44f384ad380`  
		Last Modified: Thu, 25 Oct 2018 10:47:15 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8620bf100ab0e84e0f8a8af54728d4c5d117cb5176e58af6a12da319b086b0d8`  
		Last Modified: Thu, 25 Oct 2018 10:47:15 GMT  
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
$ docker pull maven@sha256:21b2f05e89c085243de02426650a3946596f6dcdd1085dc61fb9d146a3528159
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83122941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e9dee0221306faf08764fecea76fdaa59334decb12b426869d32c8577fed61`
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
# Thu, 25 Oct 2018 08:45:36 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 08:45:37 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 08:45:54 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 10:00:07 GMT
RUN apk add --no-cache curl tar bash procps
# Thu, 25 Oct 2018 10:00:08 GMT
ARG MAVEN_VERSION=3.5.4
# Thu, 25 Oct 2018 10:00:08 GMT
ARG USER_HOME_DIR=/root
# Thu, 25 Oct 2018 10:00:09 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Thu, 25 Oct 2018 10:00:10 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Thu, 25 Oct 2018 10:00:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 25 Oct 2018 10:00:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 25 Oct 2018 10:00:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 25 Oct 2018 10:00:16 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 25 Oct 2018 10:00:17 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 25 Oct 2018 10:00:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 25 Oct 2018 10:00:19 GMT
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
	-	`sha256:fb00f32e4a75f305158af884488aae10a3f24258267e868647d16caa982d5714`  
		Last Modified: Thu, 25 Oct 2018 08:56:30 GMT  
		Size: 69.8 MB (69778771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35728e44b747c587d19d8c0a7e13818fe47a2907b5523e51dd3b7803bef161eb`  
		Last Modified: Thu, 25 Oct 2018 10:02:19 GMT  
		Size: 2.2 MB (2158184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd99e1e3202b8db330243ade10fe0fd3df3f02fc50f7ae98de046458ef04c1c`  
		Last Modified: Thu, 25 Oct 2018 10:02:19 GMT  
		Size: 9.0 MB (8989235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc8f78a1e8dc37db98d9bf6a84a8b9853a554a66dc2f66399da63c3adfea8b2`  
		Last Modified: Thu, 25 Oct 2018 10:02:18 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7122a02b9c76879a9469355ea6203cfdc94db67387ca785079360cef16945277`  
		Last Modified: Thu, 25 Oct 2018 10:02:18 GMT  
		Size: 360.0 B  
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

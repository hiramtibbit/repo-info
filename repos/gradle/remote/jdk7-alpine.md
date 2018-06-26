## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:b6419e6880642e186afd60735c2318032e0c8553f4c0a8530b6de69d93d01a0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `gradle:jdk7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:f8f8a93d9a6bb5e72ff82f72bb6f526ad7e5d900cc85a45c36544f87d3ba48e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155674560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45ab84c09da644b2827733c0daf6f7a9769f29c3622937be16e81e6b97b3f42a`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 02:04:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 06 Jun 2018 02:04:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 06 Jun 2018 02:04:36 GMT
ENV JAVA_VERSION=7u151
# Wed, 06 Jun 2018 02:04:36 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Wed, 06 Jun 2018 02:04:44 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 16 Jun 2018 08:07:35 GMT
CMD ["gradle"]
# Sat, 16 Jun 2018 08:07:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 25 Jun 2018 23:20:51 GMT
ENV GRADLE_VERSION=4.8.1
# Mon, 25 Jun 2018 23:20:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Mon, 25 Jun 2018 23:20:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 25 Jun 2018 23:20:56 GMT
USER [gradle]
# Mon, 25 Jun 2018 23:20:56 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 25 Jun 2018 23:20:56 GMT
WORKDIR /home/gradle
# Mon, 25 Jun 2018 23:21:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f4dbc50da8407166ee96a8f817633942e9a1e1c0f939667abf99a9e9b33cb3`  
		Last Modified: Wed, 06 Jun 2018 02:24:42 GMT  
		Size: 77.4 MB (77404822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145d798fcac1c7bd9a526866273615ebcf9996122a53f476a328988b5ddebb39`  
		Last Modified: Mon, 25 Jun 2018 23:25:26 GMT  
		Size: 76.2 MB (76203822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc05ae47a0faf5bda6fa682411934f2e4f510455dd4e225c8d341e68c351c0c`  
		Last Modified: Mon, 25 Jun 2018 23:25:19 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:58fc0ad67b0d4a174a53d326af450256656b1a65acf15fa3d52db5a106faf352
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.6 MB (153627787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e14325795daef6bfa21147ee666308fdeb3ce18ec60668686dfdc77fff945dd`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:05:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 11:05:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:05:23 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 11:05:23 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 11:06:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 20 Jun 2018 09:27:16 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 09:27:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 08:52:11 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 08:52:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 08:52:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 08:52:25 GMT
USER [gradle]
# Tue, 26 Jun 2018 08:52:25 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 08:52:26 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 08:52:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416413fec3fbf11f3e37e924a354ac977f1933f06f58afe41111736da2f4828d`  
		Last Modified: Tue, 05 Dec 2017 11:12:21 GMT  
		Size: 75.4 MB (75434547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f94c790788b01604b5733f2db6c8a19e3fe66d161b490653dd792c207e44fc5`  
		Last Modified: Tue, 26 Jun 2018 08:58:13 GMT  
		Size: 76.2 MB (76203766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e357186a978dd8fc16043b60d442299cba7f71bf56150a4b143aa29d4854024a`  
		Last Modified: Tue, 26 Jun 2018 08:58:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-alpine` - linux; 386

```console
$ docker pull gradle@sha256:2b4407e4d5456c11601fd9af7e772334024fb0fd2367cea33247ecea71f39005
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158825691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f2f7ba666fabaca9a225969b2cb7bbfd248c1a328153c66ba2e2d17f3845934`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 10:39:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Jun 2018 10:40:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 01 Jun 2018 10:40:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 01 Jun 2018 10:40:40 GMT
ENV JAVA_VERSION=7u151
# Fri, 01 Jun 2018 10:40:40 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Fri, 01 Jun 2018 10:40:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 20 Jun 2018 11:08:34 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 11:08:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 10:44:33 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 10:44:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 10:44:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 10:44:42 GMT
USER [gradle]
# Tue, 26 Jun 2018 10:44:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 10:44:43 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 10:44:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730d81ac3b103a2b66d5e57cd18c6079b49738517c93f83aa9bcc442da1f2b21`  
		Last Modified: Fri, 01 Jun 2018 10:42:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63213ead468f3ce61f47a24b1ed9d82e343cf76d9fc57ed02b5e867cadf2e86`  
		Last Modified: Fri, 01 Jun 2018 10:45:27 GMT  
		Size: 80.5 MB (80494949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6691306ec65bd044baa89d77a792c1e1f5b106dbe93fc596cc463f476f53e7e5`  
		Last Modified: Tue, 26 Jun 2018 10:49:15 GMT  
		Size: 76.2 MB (76203972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7417d108d1f8dd5c94421866867cb0bab644be6c34f80e2f46e73f1350b790c6`  
		Last Modified: Tue, 26 Jun 2018 10:49:04 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk7-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:e5f13a3f73179a9fd4bbe061279af1bcba04fed8d39205d8f6ccff0fc6df4641
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (147967277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519f12222c488633a337753caccab69e77f2b72bbe0dd06d38280459ae48f7bf`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:47:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:47:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Dec 2017 11:48:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 05 Dec 2017 11:48:01 GMT
ENV JAVA_VERSION=7u151
# Tue, 05 Dec 2017 11:48:02 GMT
ENV JAVA_ALPINE_VERSION=7.151.2.6.11-r0
# Tue, 05 Dec 2017 11:48:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 20 Jun 2018 08:18:17 GMT
CMD ["gradle"]
# Wed, 20 Jun 2018 08:18:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 26 Jun 2018 08:22:25 GMT
ENV GRADLE_VERSION=4.8.1
# Tue, 26 Jun 2018 08:22:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
# Tue, 26 Jun 2018 08:22:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 26 Jun 2018 08:22:39 GMT
USER [gradle]
# Tue, 26 Jun 2018 08:22:43 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 26 Jun 2018 08:22:44 GMT
WORKDIR /home/gradle
# Tue, 26 Jun 2018 08:22:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=af334d994b5e69e439ab55b5d2b7d086da5ea6763d78054f49f147b06370ed71
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80117bba7af560896439d844c0f3998317292d41faacc0a842ce3dd7e14605`  
		Last Modified: Tue, 05 Dec 2017 11:51:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1061c72558b55c62bfb93a17e9c05869fb18ca7ae72cb680eda1102a80b13b6e`  
		Last Modified: Tue, 05 Dec 2017 11:51:24 GMT  
		Size: 69.7 MB (69681273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9085696ab05841986510d05918982f1bcf86764ffaa6c7cdab6633bda29271`  
		Last Modified: Tue, 26 Jun 2018 08:29:29 GMT  
		Size: 76.2 MB (76203887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ebae0a9d415e0bdd58618933721dcc969a2c90cd78f7186c9db2918b05f10d`  
		Last Modified: Tue, 26 Jun 2018 08:29:21 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:565fcd89f29ba23cbee0048fb41073300b30864b1f9283b3d780827455dc497e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:6950ab94b1f8d791d00908c6377c2bf88a139036043c5cba6dae40be82c3ebe9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90790815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71096ad61025e4ae340a077cc5da470ba106b086aa84ebbf947b75dc38e3a25`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 06 Jun 2018 04:03:10 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 22 Jun 2018 17:23:13 GMT
ARG MAVEN_VERSION=3.5.4
# Fri, 22 Jun 2018 17:23:14 GMT
ARG USER_HOME_DIR=/root
# Fri, 22 Jun 2018 17:23:14 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Fri, 22 Jun 2018 17:23:14 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Fri, 22 Jun 2018 17:23:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 22 Jun 2018 17:23:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 22 Jun 2018 17:23:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 22 Jun 2018 17:23:17 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 22 Jun 2018 17:23:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 22 Jun 2018 17:23:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 22 Jun 2018 17:23:18 GMT
CMD ["mvn"]
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
	-	`sha256:6ad7369419699e5e80804b506ae038c79f1d2ee3de29d25d6545b03248411e4e`  
		Last Modified: Wed, 06 Jun 2018 04:07:14 GMT  
		Size: 2.3 MB (2329875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dde6ceaf7ecfc7f1b523ed0dfc0a2956453ae503c64e05f5e6a5b1cea89c0b5`  
		Last Modified: Fri, 22 Jun 2018 17:31:01 GMT  
		Size: 9.0 MB (8989225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cf899a784fe82fac1a1fa13317c537b5981d5328881fe71610a00ed2f1bd4d`  
		Last Modified: Fri, 22 Jun 2018 17:31:00 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e547bec359fa106f3fa584ccbc3b3d7f7adad136c62faa6fa1db2dcfe4262d17`  
		Last Modified: Fri, 22 Jun 2018 17:31:00 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7-alpine`

```console
$ docker pull gradle@sha256:8694d3137e92dbee8d2dc251a4a2e4acc963b75add5f5d52199051548525e48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:8fcac95a6133ea5179c9020dbdda4266932da9adac6ca5b7bb2635e807514da7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142049037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:691031f41312599fddf4e2e3e5d57a3bcda43ef8bf7f53a91946351e228c5287`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:36:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 11 Jul 2018 00:36:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 11 Jul 2018 00:36:18 GMT
ENV JAVA_VERSION=7u181
# Wed, 11 Jul 2018 00:36:18 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Wed, 11 Jul 2018 00:36:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 01:51:27 GMT
CMD ["gradle"]
# Wed, 11 Jul 2018 01:51:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 17 Jul 2018 23:22:43 GMT
ENV GRADLE_VERSION=4.9
# Tue, 17 Jul 2018 23:22:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
# Tue, 17 Jul 2018 23:22:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 17 Jul 2018 23:23:03 GMT
USER [gradle]
# Tue, 17 Jul 2018 23:23:04 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 17 Jul 2018 23:23:04 GMT
WORKDIR /home/gradle
# Tue, 17 Jul 2018 23:23:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e66e69dce8173dd2004b39ba93586a184628bc6c28461bc771d6835f7f9b0d28
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
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
	-	`sha256:588d105900e7447fcfb49bd427d524c15671eb978e06411014ded9da22e786bb`  
		Last Modified: Wed, 11 Jul 2018 00:46:04 GMT  
		Size: 61.9 MB (61929873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da50893422943540e254e15c73de70a6276157d4be89c15ee94cf0f9d4fe3278`  
		Last Modified: Tue, 17 Jul 2018 23:38:54 GMT  
		Size: 77.9 MB (77912245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d63524f5b34ce921e1a7631a95726dab8fa293ff574349793a2d82a617c0e60`  
		Last Modified: Tue, 17 Jul 2018 23:38:45 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

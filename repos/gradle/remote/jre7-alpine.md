## `gradle:jre7-alpine`

```console
$ docker pull gradle@sha256:fd42306b26cc07e375a0d820e6dd541f5f0387c208ba776cfc667d0d8537940f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; ppc64le

### `gradle:jre7-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:f280e746123af3bc5ac8acf642cf851145eda318cbde8be59163d1d93fcbb05a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (135992249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83c66b7a88c7adf2cc12e12f5efcc794861b99efd8f2f04271cf47059fb5d64`
-	Default Command: `["gradle"]`

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
# Wed, 11 Jul 2018 09:39:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 11 Jul 2018 09:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 11 Jul 2018 09:40:02 GMT
ENV JAVA_VERSION=7u181
# Wed, 11 Jul 2018 09:40:06 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Wed, 11 Jul 2018 09:40:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 10:52:58 GMT
CMD ["gradle"]
# Wed, 11 Jul 2018 10:53:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 28 Aug 2018 08:24:15 GMT
ENV GRADLE_VERSION=4.10
# Tue, 28 Aug 2018 08:24:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
# Tue, 28 Aug 2018 08:24:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 28 Aug 2018 08:24:25 GMT
USER [gradle]
# Tue, 28 Aug 2018 08:24:26 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 28 Aug 2018 08:24:27 GMT
WORKDIR /home/gradle
# Tue, 28 Aug 2018 08:24:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=248cfd92104ce12c5431ddb8309cf713fe58de8e330c63176543320022f59f18
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
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
	-	`sha256:e5bac9544381ea9bbf77636cd3c7eabf0a54f67053f4c1e97c6dfaccfa8c1fb8`  
		Last Modified: Wed, 11 Jul 2018 09:59:58 GMT  
		Size: 53.8 MB (53837682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e5af7dba7ff1610278ef650f0d9a6788483d16dc04cb7419f7d0b42851edf3`  
		Last Modified: Tue, 28 Aug 2018 08:38:08 GMT  
		Size: 80.0 MB (79959058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026575b49ce2b4c0cc11ede6f7430a754bc9b3983433274709676d3e075b28ac`  
		Last Modified: Tue, 28 Aug 2018 08:37:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

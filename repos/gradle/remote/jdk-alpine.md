## `gradle:jdk-alpine`

```console
$ docker pull gradle@sha256:1f3a32fff75197df5a3532072213e9fefca25ab6194662375dfa3ee7d57a29fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:e829e0f4afdbe1606903752076d600d7e29ccda4ed50547f5cb0a42eaebb53fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160695153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2581954e3cda252e5e83bfdc672a83bc0e178fedaf65b2a3569162c1fa264a74`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:30 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:05:34 GMT
CMD ["gradle"]
# Wed, 03 Apr 2019 00:05:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 03 Apr 2019 00:05:35 GMT
ENV GRADLE_VERSION=5.3.1
# Wed, 03 Apr 2019 00:05:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Wed, 03 Apr 2019 00:05:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 03 Apr 2019 00:05:41 GMT
USER gradle
# Wed, 03 Apr 2019 00:05:41 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 03 Apr 2019 00:05:42 GMT
WORKDIR /home/gradle
# Wed, 03 Apr 2019 00:05:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec484ea07ed1e4b3d2c8bb6ffb98d668fc1602607ced25e40a0d3649c875af12`  
		Last Modified: Tue, 02 Apr 2019 23:47:15 GMT  
		Size: 70.7 MB (70716050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de9e8966587b0f0fecdbb8ac218e44234a3cfd8002617a6f83f2aef7eb843e0`  
		Last Modified: Wed, 03 Apr 2019 00:07:16 GMT  
		Size: 87.2 MB (87223997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bf2e90692754981079fd0424c6f5271588ae5771e1b1efac03f185130dc80b`  
		Last Modified: Wed, 03 Apr 2019 00:07:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:cf4834db753379139df4be4e81de50e2ba7aaadcd4a57af16fe2d3f10f590fba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (157963849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a921a34c34ac45c4918316f23e6fde1003e64079d68319a2d21cac8cb30bf0`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:39:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:28 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:18 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:09:22 GMT
CMD ["gradle"]
# Wed, 03 Apr 2019 08:09:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 03 Apr 2019 08:09:22 GMT
ENV GRADLE_VERSION=5.3.1
# Wed, 03 Apr 2019 08:09:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Wed, 03 Apr 2019 08:09:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 03 Apr 2019 08:09:31 GMT
USER gradle
# Wed, 03 Apr 2019 08:09:32 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 03 Apr 2019 08:09:32 GMT
WORKDIR /home/gradle
# Wed, 03 Apr 2019 08:09:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0393a14d1960a50cd05e064e3f884d804949e369b4aa1acccff9559455a59373`  
		Last Modified: Wed, 03 Apr 2019 07:53:29 GMT  
		Size: 68.2 MB (68198806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d432f3276983ee7a06c7860b0a0410cd80811cef26ba174b32d953007567a698`  
		Last Modified: Wed, 03 Apr 2019 08:10:46 GMT  
		Size: 87.2 MB (87223960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca102a56a0c98edebee0312c22b7474eaaa8da0ec200b3e2a7d866be5bc68c54`  
		Last Modified: Wed, 03 Apr 2019 08:10:33 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b69bbfdccc04dec7c622d4e6c9180fd68e5fa53882221b10b37f5df8cb7ee454
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160638443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6147bf1964af195acdf39ffd9c62f0c4dfd93efb0e053fedd90cef8198f3502`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 09:50:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 04:00:22 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:11 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:37:30 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:20:53 GMT
CMD ["gradle"]
# Wed, 03 Apr 2019 11:20:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 03 Apr 2019 11:20:54 GMT
ENV GRADLE_VERSION=5.3.1
# Wed, 03 Apr 2019 11:20:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Wed, 03 Apr 2019 11:21:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 03 Apr 2019 11:21:07 GMT
USER gradle
# Wed, 03 Apr 2019 11:21:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 03 Apr 2019 11:21:08 GMT
WORKDIR /home/gradle
# Wed, 03 Apr 2019 11:21:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c794d8f542f34acbd5b514f49f1b9ea6514669aef4f50a7ee40b75b16414fea3`  
		Last Modified: Wed, 03 Apr 2019 09:40:10 GMT  
		Size: 70.7 MB (70726135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bafcc47d58d82ab21ea1fd0618044b7c67ee21997d38d2eca6bae7ff657db0`  
		Last Modified: Wed, 03 Apr 2019 11:23:09 GMT  
		Size: 87.2 MB (87223992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998bd993e06a9b7c9439fc125b7c0377d8889d6a63e4bea3a09e5c74548410b`  
		Last Modified: Wed, 03 Apr 2019 11:22:56 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-alpine` - linux; 386

```console
$ docker pull gradle@sha256:5c525db87cb9c9b7d911c3109a16c0c4ca903684a576dc71ad0120f29b8c7dbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161340242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e8e93abe8e63abf8ed647118b9c0329f0013558773c99183b6be74c4839757`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 06:52:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 00:59:24 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 00:59:24 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 00:59:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 00:59:30 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 01:28:11 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 01:28:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 10:46:40 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 10:46:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 10:46:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 10:46:46 GMT
USER gradle
# Sat, 30 Mar 2019 10:46:46 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 10:46:46 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 10:46:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29fdc0cb71d31a07cb04cdbbbdf71d1bb8124779043b68e8b2ced3a452c76c2`  
		Last Modified: Thu, 28 Mar 2019 01:17:33 GMT  
		Size: 69.0 MB (68971323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdc89a1fe2c3874b2e9e46e1d7d2c973ffc576d550ba6f8c57de740f3d81055`  
		Last Modified: Thu, 28 Mar 2019 01:17:26 GMT  
		Size: 2.4 MB (2395245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff63dca70f4c55daa58d76aea2e4d18e30125a5984e028bdf9ce7893435e8e`  
		Last Modified: Sat, 30 Mar 2019 10:49:25 GMT  
		Size: 87.2 MB (87223942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad5ac12964903271472710ddb696101c931f2c6893ac09719c13d81d4b99250`  
		Last Modified: Sat, 30 Mar 2019 10:49:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:16f1accec9d4089bc13872f9125fd983c2b4b9939e7f461ad99bc06263a13e14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161443367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15f7d3c17a53a939517685da346bacf8a19b938c78bd334d14da880305e009a`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:13:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:13:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:28:48 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:02 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:10:48 GMT
CMD ["gradle"]
# Wed, 03 Apr 2019 11:10:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 03 Apr 2019 11:10:55 GMT
ENV GRADLE_VERSION=5.3.1
# Wed, 03 Apr 2019 11:10:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Wed, 03 Apr 2019 11:11:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Wed, 03 Apr 2019 11:11:17 GMT
USER gradle
# Wed, 03 Apr 2019 11:11:22 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 03 Apr 2019 11:11:27 GMT
WORKDIR /home/gradle
# Wed, 03 Apr 2019 11:11:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132514eedc1a32fb5e719c1522819c4b674a7a5bdd92e6462eda8c528de89730`  
		Last Modified: Wed, 03 Apr 2019 09:12:27 GMT  
		Size: 71.4 MB (71440365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134b3344c41ae1aadd68c75b92f826075472652a87c699d53d8ad6dce2bc66eb`  
		Last Modified: Wed, 03 Apr 2019 11:13:54 GMT  
		Size: 87.2 MB (87223953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4e058168284bacba588d8b9bfcf1fa693ac5aaef1fc51ad723554a85179200`  
		Last Modified: Wed, 03 Apr 2019 11:13:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk-alpine` - linux; s390x

```console
$ docker pull gradle@sha256:2eda0d27853fbaeefff81a97b865afd61f4196ba19f56d6990dde3d9e7e7a51d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159267830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d1143a2abc27c7e682e04d2038e6bb10cbc208d70be970186b5a4f13f87692`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 04:02:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 11:47:47 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 11:47:47 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 11:47:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 11:47:53 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:31:24 GMT
CMD ["gradle"]
# Thu, 28 Mar 2019 12:31:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 30 Mar 2019 11:41:53 GMT
ENV GRADLE_VERSION=5.3.1
# Sat, 30 Mar 2019 11:41:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
# Sat, 30 Mar 2019 11:41:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 30 Mar 2019 11:41:58 GMT
USER gradle
# Sat, 30 Mar 2019 11:41:59 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 30 Mar 2019 11:41:59 GMT
WORKDIR /home/gradle
# Sat, 30 Mar 2019 11:42:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcc05893c86c1acfd195664d5fa59d66ceadb75e30392d02ca3235d66219dd9`  
		Last Modified: Thu, 28 Mar 2019 11:52:43 GMT  
		Size: 67.3 MB (67307919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a7a3eb521b30c6756829a31c5df6f078a561bfca8cd24feef8b4a9aa06847f`  
		Last Modified: Thu, 28 Mar 2019 11:52:35 GMT  
		Size: 2.2 MB (2194224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c32470f1e0d646de371479f56f5e367f57d835c9467dfe2fe0c950c66098573`  
		Last Modified: Sat, 30 Mar 2019 11:45:22 GMT  
		Size: 87.2 MB (87224005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a3c5ad4f3c2ae6678f9454356875866b5b6b562624549c7f33c647538f6ac9`  
		Last Modified: Sat, 30 Mar 2019 11:45:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

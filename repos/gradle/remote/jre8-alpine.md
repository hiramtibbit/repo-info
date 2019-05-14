## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:de2e9ddb7cf0f06275929757903306f9a00c8acb5b34900c18b33af6ecb1684e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:953e78efe1fc3815b09db4b01c61ba36204542e312fece76cf18c72b66ecedc7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144787732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd24e5242bd3d8055236b258a3a7114fcc2168b59de89d29096abc5894489698`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 01:32:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:09:09 GMT
CMD ["gradle"]
# Sat, 11 May 2019 04:09:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 11 May 2019 04:09:10 GMT
ENV GRADLE_VERSION=5.4.1
# Sat, 11 May 2019 04:09:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Sat, 11 May 2019 04:09:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 11 May 2019 04:09:17 GMT
USER gradle
# Sat, 11 May 2019 04:09:17 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 11 May 2019 04:09:17 GMT
WORKDIR /home/gradle
# Sat, 11 May 2019 04:09:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6abafe80f63b02535fc111df2ed6b3c728469679ab654e03e482b6f347c9639`  
		Last Modified: Sat, 11 May 2019 01:37:30 GMT  
		Size: 54.9 MB (54935634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b88bc6ed3ad3b5cbdfc8ca288307beae17d8a5910650d71fb89035bc9bc075`  
		Last Modified: Sat, 11 May 2019 04:10:41 GMT  
		Size: 87.1 MB (87094687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ca7aa79e4a1d804257d29660d729ed7806e050b08cbc1c2d62942f5286b8f8`  
		Last Modified: Sat, 11 May 2019 04:10:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-alpine` - linux; arm variant v6

```console
$ docker pull gradle@sha256:562d4048e9ef00dcb61f8af7be7f9f87fb0c4bbd26c9bc94d317cd3589c00069
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142038363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed6a49f86af9a3e2bf57d9864ee09ded137a22959e32e41a45ec6ae76c69ad0`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:47:14 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 08:47:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 08:47:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 08:47:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 08:47:37 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 08:47:37 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 08:47:44 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 10:35:06 GMT
CMD ["gradle"]
# Sat, 11 May 2019 10:35:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 11 May 2019 10:35:07 GMT
ENV GRADLE_VERSION=5.4.1
# Sat, 11 May 2019 10:35:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Sat, 11 May 2019 10:35:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 11 May 2019 10:35:16 GMT
USER gradle
# Sat, 11 May 2019 10:35:17 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 11 May 2019 10:35:17 GMT
WORKDIR /home/gradle
# Sat, 11 May 2019 10:35:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2b204f0fc5c4fd136771b708ddfd60e2bdc3cc56eff6e6e3d4ee5440b4c930`  
		Last Modified: Sat, 11 May 2019 08:48:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89395c9328f57513fe72be19d67c664b40bf3fc50c1770846eeac95042f3a5a6`  
		Last Modified: Sat, 11 May 2019 08:49:18 GMT  
		Size: 52.4 MB (52399849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7440464f7f352412bab98da5a6d60d261300351cc7a1be22deecb4f7714b333`  
		Last Modified: Sat, 11 May 2019 10:36:15 GMT  
		Size: 87.1 MB (87094676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c31529f5c9451eff2612e8c5c16ac93b569b4923a6e3f3a078cc7838814bbb`  
		Last Modified: Sat, 11 May 2019 10:36:02 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-alpine` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:eb8861ec82d42cf9c54063d72c8702d7acadd9eadaa00784be075d405a922aa3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144726437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb886a320b846c780353b340a69aa52e05233a9d694bdae3d6f15034a39ff31b`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:18:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:18:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:18:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:18:56 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:18:57 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 09:19:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 16:34:10 GMT
CMD ["gradle"]
# Sat, 11 May 2019 16:34:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 11 May 2019 16:34:11 GMT
ENV GRADLE_VERSION=5.4.1
# Sat, 11 May 2019 16:34:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Sat, 11 May 2019 16:34:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 11 May 2019 16:34:24 GMT
USER gradle
# Sat, 11 May 2019 16:34:24 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 11 May 2019 16:34:25 GMT
WORKDIR /home/gradle
# Sat, 11 May 2019 16:34:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2cc770c6ebbe90978672d360accf2434f83f9f0339ecd592224d794d5e35e`  
		Last Modified: Sat, 11 May 2019 09:21:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9072aa1a230005b2e358809d99ea667b32e1404f13e626b9bf5f3f5eb9f8dd1`  
		Last Modified: Sat, 11 May 2019 09:21:55 GMT  
		Size: 54.9 MB (54942530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15098c34617ca5f88144e4d9d2cf26f68c717d9b7b0660a7e3786c1670d6a295`  
		Last Modified: Sat, 11 May 2019 16:36:32 GMT  
		Size: 87.1 MB (87094752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97ea07cea1e6fe3ccb60be59dada3006ff548a80b0281a573786e414b6243dc`  
		Last Modified: Sat, 11 May 2019 16:36:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-alpine` - linux; 386

```console
$ docker pull gradle@sha256:8851681270707f157a74cd343acaa2c492574aa60a973be56cf2c93559be4d75
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145402637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106022c45e03f24a7f9db694284dc2173090b7a5f9d7e5d068e07b70edd81e6b`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:28:39 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 15:28:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 15:28:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 15:28:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 15:28:53 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 15:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 15:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 16:42:57 GMT
CMD ["gradle"]
# Sat, 11 May 2019 16:42:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 11 May 2019 16:42:57 GMT
ENV GRADLE_VERSION=5.4.1
# Sat, 11 May 2019 16:42:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Sat, 11 May 2019 16:43:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 11 May 2019 16:43:02 GMT
USER gradle
# Sat, 11 May 2019 16:43:03 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 11 May 2019 16:43:03 GMT
WORKDIR /home/gradle
# Sat, 11 May 2019 16:43:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a94db5087f7f8bcd0cadca9c6d446a22a96182ec9c08d67fda830b278e8dc2`  
		Last Modified: Sat, 11 May 2019 15:30:11 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca1537ab582bec5eed73622e871888861f80509db0e2ec3b0150007b8ac52c3`  
		Last Modified: Sat, 11 May 2019 15:30:38 GMT  
		Size: 55.6 MB (55555506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f849f2a47f778a268bbc5f799ccd58f858d39b518bd2bafa38617246bb4ddb77`  
		Last Modified: Sat, 11 May 2019 16:44:02 GMT  
		Size: 87.1 MB (87094666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0de2fe57e05bbaf29cc2a4825ed5b183852ab54aca68b7c427cb2068950d7d`  
		Last Modified: Sat, 11 May 2019 16:43:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-alpine` - linux; ppc64le

```console
$ docker pull gradle@sha256:0c55a707641e547f16e0fc901d75799c0cf949607c9e5719992b1bfe68857987
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145468213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9286d12fbd21db9cae335d4395e3bf0bd3b1a6d36575cb776a5d4271e46649a7`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:44:37 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:44:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:45:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:45:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:45:43 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:45:45 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 14 May 2019 00:19:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 14 May 2019 01:02:22 GMT
CMD ["gradle"]
# Tue, 14 May 2019 01:02:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 14 May 2019 01:02:32 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 14 May 2019 01:02:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 14 May 2019 01:02:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 14 May 2019 01:02:55 GMT
USER gradle
# Tue, 14 May 2019 01:02:58 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 14 May 2019 01:03:02 GMT
WORKDIR /home/gradle
# Tue, 14 May 2019 01:03:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97b7b4784d132b1e215acf6612c7852271c10c4ff9f096f9847f16559741c5e`  
		Last Modified: Tue, 14 May 2019 00:26:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3e5548354bbdda75469be7096c7b47d15194f61d016e87a8878b9c0a117e46`  
		Last Modified: Tue, 14 May 2019 00:28:10 GMT  
		Size: 55.6 MB (55592060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd07bd1f8dbf82fc0f8197f763d41c58585699e7e04e6fe0f0d8f8b32a867bf2`  
		Last Modified: Tue, 14 May 2019 01:06:58 GMT  
		Size: 87.1 MB (87094726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe3407e6430101698a23a67275460ab8899a03ca8a3fe64d06234c8c21143b8`  
		Last Modified: Tue, 14 May 2019 01:06:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8-alpine` - linux; s390x

```console
$ docker pull gradle@sha256:ba401a782e1f25cbab5bf3a5e911e31570ef8c15686d5594ed6a8a8b918303d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143322557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14a6cf767c9b584589d12325d21151b76438fc661a8c517b156f694d4a858ce1`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:04:28 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 14:04:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 14:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 14:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 14:04:48 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 14:04:48 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 14:04:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 14:44:52 GMT
CMD ["gradle"]
# Sat, 11 May 2019 14:44:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 11 May 2019 14:44:52 GMT
ENV GRADLE_VERSION=5.4.1
# Sat, 11 May 2019 14:44:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Sat, 11 May 2019 14:44:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget -qO gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mkdir -p /opt     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && addgroup -S -g 1000 gradle     && adduser -D -S -G gradle -u 1000 -s /bin/ash gradle     && mkdir /home/gradle/.gradle     && chown -R gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 11 May 2019 14:44:58 GMT
USER gradle
# Sat, 11 May 2019 14:44:58 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 11 May 2019 14:44:59 GMT
WORKDIR /home/gradle
# Sat, 11 May 2019 14:45:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beaa0ca3e410795baed0978b91dcb428e9f31c46e39a429f31aa4c833592476a`  
		Last Modified: Sat, 11 May 2019 14:06:07 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7c2c80927bdfb59bf08ec75eb6365291f3209fb2ea435e845d1aa703723bd`  
		Last Modified: Sat, 11 May 2019 14:06:29 GMT  
		Size: 53.7 MB (53684176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a19389d6d862cf4806d34087a76c5b2ae5de9b0e189df0de9131df46e1a374`  
		Last Modified: Sat, 11 May 2019 14:46:16 GMT  
		Size: 87.1 MB (87094674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5682e552840fbec32acd70d2ec512523fc80f2c68724bace055d38bd6c7f5a60`  
		Last Modified: Sat, 11 May 2019 14:46:10 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

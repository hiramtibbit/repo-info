## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:ff2e8d63fbc79ec993bbb207270f6cf83c5c7992618bf057cfe8385532bb82fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:aab0832afd8587bba75d043690111b61bb4a416fbb22412960869e64eedba2d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92699847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0a554874b112154179d992d57c94219e64ef2a7203fe4c791fe1d739873af8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 01:32:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 01:32:52 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 01:32:52 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 01:33:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:20:50 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 11 May 2019 04:20:50 GMT
ARG MAVEN_VERSION=3.6.1
# Sat, 11 May 2019 04:20:51 GMT
ARG USER_HOME_DIR=/root
# Sat, 11 May 2019 04:20:51 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Sat, 11 May 2019 04:20:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Sat, 11 May 2019 04:20:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 11 May 2019 04:20:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 11 May 2019 04:20:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 11 May 2019 04:20:54 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 11 May 2019 04:20:54 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 11 May 2019 04:20:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 11 May 2019 04:20:54 GMT
CMD ["mvn"]
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
	-	`sha256:3ae69dd7029f39bbf8cf000fbbdfe51b3da20af6b1f02dc38628171f97893552`  
		Last Modified: Sat, 11 May 2019 01:37:54 GMT  
		Size: 78.6 MB (78584203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049464f01c034d66d306d7b1ad413eefe1de42d99836ebe397cc593b9418be6f`  
		Last Modified: Sat, 11 May 2019 04:21:54 GMT  
		Size: 2.2 MB (2195285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2552879f83c3c3483345fa257a412136884503dedae3aafb5a0796f8face2eb`  
		Last Modified: Sat, 11 May 2019 04:21:54 GMT  
		Size: 9.2 MB (9161872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bd9ea34ae980fa6be7929ab9850d84f5de955c8fc58e28bc9cdd231d5753f7`  
		Last Modified: Sat, 11 May 2019 04:21:53 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e272892efbe91fe8aebe14edbf7dfe527bdf68db1736dc42e9c44f65917d0dcb`  
		Last Modified: Sat, 11 May 2019 04:21:53 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:34af64e246dedbff857f893a4575f87d0915f6f7f20e2725b2d8300cbd87aeef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82748574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f392c69092b86792a720c98bf7af9199a416046f8d8b715ada66b2de8de458`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:47:14 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 08:47:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 08:47:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 08:47:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 08:47:49 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 08:47:50 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 08:48:12 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 10:12:45 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 11 May 2019 10:12:45 GMT
ARG MAVEN_VERSION=3.6.1
# Sat, 11 May 2019 10:12:46 GMT
ARG USER_HOME_DIR=/root
# Sat, 11 May 2019 10:12:46 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Sat, 11 May 2019 10:12:46 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Sat, 11 May 2019 10:12:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 11 May 2019 10:12:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 11 May 2019 10:12:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 11 May 2019 10:12:54 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 11 May 2019 10:12:54 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 11 May 2019 10:12:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 11 May 2019 10:12:55 GMT
CMD ["mvn"]
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
	-	`sha256:c4cdaacb9da6f826ff01b4354f3494c9beed59529cce8f3a512923b7378fb4cf`  
		Last Modified: Sat, 11 May 2019 08:49:37 GMT  
		Size: 68.9 MB (68946892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d478b2436b5962b490ec8be27233c315833ec64d9944a05c364d636dc79842`  
		Last Modified: Sat, 11 May 2019 10:13:26 GMT  
		Size: 2.1 MB (2094905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857f9d0b3e55e37643473f7d446542b73cc61f496e169079cd35bf35bf8f02e7`  
		Last Modified: Sat, 11 May 2019 10:13:27 GMT  
		Size: 9.2 MB (9161895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce9113524d2c206de55668100496368d677da3e30cac7bf4163089469e221e1`  
		Last Modified: Sat, 11 May 2019 10:13:25 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccd77c063305139fa35cfbf48da14cf0ae68ae0dab1edc7e181a454751d7028`  
		Last Modified: Sat, 11 May 2019 10:13:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm variant v7

```console
$ docker pull maven@sha256:b5c39ce756baa4f12819be3ca9af62486efac1c7fa5fdcfe3567f9d2e18e51c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81079197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c89c9b10446c112f6f762e763677d1ab2f640568c34d2072839c1055f342557`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:16:43 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 12:16:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 12:17:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 12:17:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 12:17:26 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 12:17:27 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 12:17:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 13:12:35 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 11 May 2019 13:12:36 GMT
ARG MAVEN_VERSION=3.6.1
# Sat, 11 May 2019 13:12:36 GMT
ARG USER_HOME_DIR=/root
# Sat, 11 May 2019 13:12:36 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Sat, 11 May 2019 13:12:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Sat, 11 May 2019 13:12:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 11 May 2019 13:12:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 11 May 2019 13:12:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 11 May 2019 13:12:44 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 11 May 2019 13:12:45 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 11 May 2019 13:12:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 11 May 2019 13:12:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962e53e3f8337e63290eb26703e31f0e87d70db371afae581ad3898b1dccb972`  
		Last Modified: Sat, 11 May 2019 12:19:01 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922294a51cfa16abfa3004273ba618aaf7432d18ab35c374daa30840f671ea54`  
		Last Modified: Sat, 11 May 2019 12:20:04 GMT  
		Size: 67.6 MB (67608723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07ffa5e0aa616c862012cf0b3dd414547f9908b6c3879e71a2aa95a93d40475`  
		Last Modified: Sat, 11 May 2019 13:13:46 GMT  
		Size: 2.0 MB (1956453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bea4f806388ad1b5b9c02465779ce4432378b6e8cdaab3e8e8e8a44015ab9c`  
		Last Modified: Sat, 11 May 2019 13:13:46 GMT  
		Size: 9.2 MB (9161903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30961b14d94d0e4a145edae608e29a7c7c278b6c09716aca9fffe6e645f9a36`  
		Last Modified: Sat, 11 May 2019 13:13:44 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52a0453e0231f431492ad9eecfe34c55f9cced84b39baf9cc33d36db7d19ad9`  
		Last Modified: Sat, 11 May 2019 13:13:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e4acc50819a2d6272e0f556ac06d83e535aca21586580bd0006eb184281de42a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92303846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caeb459eefbb222063288722021b2b1f57963cfef9036e6c796ffb87a9b7c138`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:18:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:19:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 09:19:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 09:19:11 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 09:19:12 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 09:19:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 17:09:57 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 11 May 2019 17:09:58 GMT
ARG MAVEN_VERSION=3.6.1
# Sat, 11 May 2019 17:09:58 GMT
ARG USER_HOME_DIR=/root
# Sat, 11 May 2019 17:09:59 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Sat, 11 May 2019 17:10:00 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Sat, 11 May 2019 17:10:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 11 May 2019 17:10:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 11 May 2019 17:10:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 11 May 2019 17:10:14 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 11 May 2019 17:10:14 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 11 May 2019 17:10:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 11 May 2019 17:10:15 GMT
CMD ["mvn"]
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
	-	`sha256:766b9da0247eccf351064a4a4c555f605427261bf327756f71cd133d088444ea`  
		Last Modified: Sat, 11 May 2019 09:22:25 GMT  
		Size: 78.2 MB (78212484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560971f07180e95fc8f39ef3ee579feb9cdc254828d1af6b4d5697e8179d5414`  
		Last Modified: Sat, 11 May 2019 17:11:26 GMT  
		Size: 2.2 MB (2239279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58fc9462f97176199f2dbc1d41fcbf2e478a90d7ab0c39aaf901496061c3007`  
		Last Modified: Sat, 11 May 2019 17:11:28 GMT  
		Size: 9.2 MB (9161851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82f0ed870cf39aacbe3982238ad5f33eca1b9b51f7cc4fb67a258753d44aa07`  
		Last Modified: Sat, 11 May 2019 17:11:24 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54708bb22cf66fe68e77fd7af34f7c608e301848ade1d2f69f16f0da17101723`  
		Last Modified: Sat, 11 May 2019 17:11:24 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; 386

```console
$ docker pull maven@sha256:554e2b8c99198d0d13a094eeb8034ba2e552ec73bd3a1de2c141519aff04ec5d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95744754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5204f1791d5ae3ecccb04f630889aeb447e67b2ae557a163c880acf6964a3e8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:28:39 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 15:28:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 15:29:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 15:29:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 15:29:06 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 15:29:06 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 15:29:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 16:41:25 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 11 May 2019 16:41:25 GMT
ARG MAVEN_VERSION=3.6.1
# Sat, 11 May 2019 16:41:25 GMT
ARG USER_HOME_DIR=/root
# Sat, 11 May 2019 16:41:25 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Sat, 11 May 2019 16:41:25 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Sat, 11 May 2019 16:41:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 11 May 2019 16:41:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 11 May 2019 16:41:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 11 May 2019 16:41:28 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 11 May 2019 16:41:29 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 11 May 2019 16:41:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 11 May 2019 16:41:29 GMT
CMD ["mvn"]
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
	-	`sha256:81a3179e84f5ec060d4c39c7fda0b13ca2f23356ef96f434316a14d9d41db23d`  
		Last Modified: Sat, 11 May 2019 15:30:55 GMT  
		Size: 81.5 MB (81512079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6166f73df6791c7964ee2eb2fc5fa3e86776baaaf86b3cb5a1125d69bd2f8cc`  
		Last Modified: Sat, 11 May 2019 16:42:08 GMT  
		Size: 2.3 MB (2317261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12031cd623cc99ef079453ac1cddf36a90de19d47ef86bfccec2d54d07e173e`  
		Last Modified: Sat, 11 May 2019 16:42:09 GMT  
		Size: 9.2 MB (9161872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873d78557c805052cbffb50a0e9c310ab5b7765a9a3e1631898e7c993a66d508`  
		Last Modified: Sat, 11 May 2019 16:42:08 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87780e141ce1f57b804fd707ada1c1bed5818d7d3567a316e39b2db5268920c`  
		Last Modified: Sat, 11 May 2019 16:42:08 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; ppc64le

```console
$ docker pull maven@sha256:62183ab388b1d506c7a005ee71fe7ac197837b9d32b21412dbe2bfa3219c5773
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86501856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dcab6d25816e32a158e9f77ab6f8fb1f39d300e47b8dba092dc3613fc77511`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:44:37 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:44:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:46:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 14 May 2019 00:19:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 14 May 2019 00:19:34 GMT
ENV JAVA_VERSION=7u211
# Tue, 14 May 2019 00:19:42 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Tue, 14 May 2019 00:20:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 14 May 2019 00:47:27 GMT
RUN apk add --no-cache curl tar bash procps
# Tue, 14 May 2019 00:47:32 GMT
ARG MAVEN_VERSION=3.6.1
# Tue, 14 May 2019 00:47:35 GMT
ARG USER_HOME_DIR=/root
# Tue, 14 May 2019 00:47:38 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Tue, 14 May 2019 00:47:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Tue, 14 May 2019 00:47:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 14 May 2019 00:47:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 14 May 2019 00:48:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 14 May 2019 00:48:04 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 14 May 2019 00:48:05 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 14 May 2019 00:48:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 14 May 2019 00:48:11 GMT
CMD ["mvn"]
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
	-	`sha256:cf2ab48685d767638ca1e4af97d6bdd804e823ec99bdee7a55e3c152df662008`  
		Last Modified: Tue, 14 May 2019 00:29:10 GMT  
		Size: 72.2 MB (72223590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fa345bdc0d3dc2d5e6a3449a45799b368364e69c340f5ef420199e3d767634`  
		Last Modified: Tue, 14 May 2019 00:50:55 GMT  
		Size: 2.3 MB (2333909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffaf87d43005203a1566762fa965c7114508a18a0ac533476777e7e0dc6de003`  
		Last Modified: Tue, 14 May 2019 00:50:54 GMT  
		Size: 9.2 MB (9161884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e941967e9465b92b22ae121fee9e37fa67df2ecb63a210fedd2ff9feec50980`  
		Last Modified: Tue, 14 May 2019 00:50:52 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779bf348f3479bdc676a60e03984b4fe014380d45656b0ba640cbaf9781879f9`  
		Last Modified: Tue, 14 May 2019 00:50:52 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; s390x

```console
$ docker pull maven@sha256:3f3c3d07a9c2f485f47caeeac869a2e0f0f460b4ec45bf2b5012ba9205cd9ffd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84609801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4233290f9d05f9b5e45428ae4cc991811220a2f4310b8a47bbeb75cf237c36b0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:04:28 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 14:04:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 14:04:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 14:04:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 14:04:56 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 14:04:56 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 14:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 14:56:20 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 11 May 2019 14:56:20 GMT
ARG MAVEN_VERSION=3.6.1
# Sat, 11 May 2019 14:56:21 GMT
ARG USER_HOME_DIR=/root
# Sat, 11 May 2019 14:56:21 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Sat, 11 May 2019 14:56:21 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Sat, 11 May 2019 14:56:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 11 May 2019 14:56:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 11 May 2019 14:56:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 11 May 2019 14:56:27 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 11 May 2019 14:56:27 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 11 May 2019 14:56:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 11 May 2019 14:56:28 GMT
CMD ["mvn"]
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
	-	`sha256:12d2318f5bbb8a7a3fb1b99300ab305ffb74ed16325080e9603133439ea79da3`  
		Last Modified: Sat, 11 May 2019 14:06:43 GMT  
		Size: 70.6 MB (70645620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6ba2a882770515f3816ed45c742f4d796b7b33bf0496829e708d0f7e3c589e`  
		Last Modified: Sat, 11 May 2019 14:57:31 GMT  
		Size: 2.3 MB (2257526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdc3741abae5ab07b7d99b71d64d5ab831d4a949900d481436c39d682332056`  
		Last Modified: Sat, 11 May 2019 14:57:31 GMT  
		Size: 9.2 MB (9161872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03f72600b776cfe7d91ab2f1dcba4e03215b4d8f009b3130539d9107d0fc90d`  
		Last Modified: Sat, 11 May 2019 14:57:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ccb2fece08632ca2cc474d917cdf9be83056f2b1b25788ab7d2e16f7539e9c`  
		Last Modified: Sat, 11 May 2019 14:57:30 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

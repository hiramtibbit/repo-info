## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:74c0803d07b8cc6b6d21c9e11bbd2f377dd94c14266cba5277164c407007d677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:15633e7ca399f06a55d91182a43c6f48ac875e0a83ecfef1cdcce765b8bf2878
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92584270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f88040e7a610d4998114c080714aaa5f5ffa413b92cde142703b9da9a51246`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:40:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 05 Feb 2019 20:40:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 07 Feb 2019 01:27:30 GMT
ENV JAVA_VERSION=7u201
# Thu, 07 Feb 2019 01:27:30 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Thu, 07 Feb 2019 01:27:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 01:53:49 GMT
RUN apk add --no-cache curl tar bash procps
# Thu, 07 Feb 2019 01:53:49 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 01:53:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 01:53:49 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 01:53:50 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 01:53:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 01:53:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 01:53:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 01:53:52 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 01:53:53 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 01:53:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 01:53:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bfa6965a035a4719e052b4cec1444df97ee7080152ddff6920a714fec6d03`  
		Last Modified: Thu, 07 Feb 2019 01:30:27 GMT  
		Size: 78.5 MB (78547911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dc71df5efe4b5d96a4a89d50bb00a69e36157cf7da7ef7ff23b178641a16bb`  
		Last Modified: Thu, 07 Feb 2019 01:54:43 GMT  
		Size: 2.2 MB (2192362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d827f48b1cc91a048a20edfb87632170ed23a9248ee463b92cc6b141971eea29`  
		Last Modified: Thu, 07 Feb 2019 01:54:44 GMT  
		Size: 9.1 MB (9087924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0617198f524362a3f2ccf8c0033db5253227925e0f180645c6d34caf5555b514`  
		Last Modified: Thu, 07 Feb 2019 01:54:42 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24dcf01e6498f8e3d64c2cf105fbd0800d9957710a2e28ca3608f38361067cad`  
		Last Modified: Thu, 07 Feb 2019 01:54:42 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:a33730f4ebbb595f324395e661fce1bd0855245368aeb7c586fb8f54421711d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82084329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df28e877cb817cedabfed9b73e8f99facd52fbeb3aa78bab14c19161406cb4f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:54:13 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 09:54:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 21 Dec 2018 09:54:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 21 Dec 2018 09:54:37 GMT
ENV JAVA_VERSION=7u181
# Fri, 21 Dec 2018 09:54:37 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Fri, 21 Dec 2018 09:54:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 11:09:43 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 21 Dec 2018 11:09:43 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 21 Dec 2018 11:09:44 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Dec 2018 11:09:44 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 21 Dec 2018 11:09:44 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 21 Dec 2018 11:09:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 21 Dec 2018 11:09:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Dec 2018 11:09:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Dec 2018 11:09:52 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 21 Dec 2018 11:09:52 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 21 Dec 2018 11:09:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Dec 2018 11:09:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db946754b322adc3ac60fe5714a9c65ff7c92700903efa2f530018cbf95e2746`  
		Last Modified: Fri, 21 Dec 2018 09:55:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b8b3a51e4e41b398bced2ee50baf21f073d591ea45754439141f1cf9f72e90`  
		Last Modified: Fri, 21 Dec 2018 09:56:27 GMT  
		Size: 68.8 MB (68753516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fe0543e6c23e799c713093d85c14539a2ca5319d27ce6f034aaebed7cb5fe1`  
		Last Modified: Fri, 21 Dec 2018 11:10:26 GMT  
		Size: 2.1 MB (2095549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d549429b429b9488a508ee568117937ace0088ae08f07a0de142e3c843fc74`  
		Last Modified: Fri, 21 Dec 2018 11:10:27 GMT  
		Size: 9.1 MB (9087957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea27f255113fbc139ef11da4853f1988333d43f2136b6cb8718026a80f6cf5a`  
		Last Modified: Fri, 21 Dec 2018 11:10:25 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75850d9bc360c5789344f21991bcc16eb2788be93209aeb331f07f3cc2639948`  
		Last Modified: Fri, 21 Dec 2018 11:10:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:9dad49ec25c039dcb6c0e6d72a0bed8fdabc427f62c8de4cfaccc2760b7a763c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92232265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed86634b68ba720f112ff178031d1910317c7accd9a4b88d47af01e0509ab2a2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 06 Feb 2019 12:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 07 Feb 2019 06:17:16 GMT
ENV JAVA_VERSION=7u201
# Thu, 07 Feb 2019 06:17:17 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Thu, 07 Feb 2019 06:17:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 06:46:51 GMT
RUN apk add --no-cache curl tar bash procps
# Thu, 07 Feb 2019 06:46:53 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 06:46:54 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 06:46:55 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 06:46:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 06:47:04 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 06:47:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 06:47:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 06:47:07 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 06:47:08 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 06:47:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 06:47:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188c1d240d46caf2f20008b2abc8389e56ddf3d69731f8ab9295cd1916806bd2`  
		Last Modified: Thu, 07 Feb 2019 06:20:21 GMT  
		Size: 78.2 MB (78218520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e093178cc17e349016dba9ea72e09be3413deb8feda33ea9ea85be6d54c7b459`  
		Last Modified: Thu, 07 Feb 2019 06:51:33 GMT  
		Size: 2.2 MB (2236396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5c448e74d1f7df936bcf1e413578d3a71a6f5cf8da23ceed72170aef8636bb`  
		Last Modified: Thu, 07 Feb 2019 06:51:34 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e22120a745f3a837ba23f35315ccdb5bd1f15596a81e601a87f68b8f9f84eb2`  
		Last Modified: Thu, 07 Feb 2019 06:51:30 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0efccca57b130d8a3f7838dd578a31f7e154cf23e94dcdf2a05133cc1b3a40`  
		Last Modified: Thu, 07 Feb 2019 06:51:30 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; 386

```console
$ docker pull maven@sha256:502fcd41958664183e49bd130ece8ff3c5b17b1636bfb8495c013290a24efeac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (94971128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a56bbab036b55e512437611203964977b195e1094d19044b0c30a6e4a687b9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 17:15:19 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 17:15:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 17:15:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 21 Dec 2018 17:15:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 21 Dec 2018 17:15:47 GMT
ENV JAVA_VERSION=7u181
# Fri, 21 Dec 2018 17:15:47 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Fri, 21 Dec 2018 17:15:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 19:24:06 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 21 Dec 2018 19:24:06 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 21 Dec 2018 19:24:07 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Dec 2018 19:24:07 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 21 Dec 2018 19:24:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 21 Dec 2018 19:24:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 21 Dec 2018 19:24:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Dec 2018 19:24:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Dec 2018 19:24:10 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 21 Dec 2018 19:24:10 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 21 Dec 2018 19:24:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Dec 2018 19:24:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa5ad7015b94f77d17fc7434e4c4966902dcf6ddf7393a9e74d72a91e3a2f4b`  
		Last Modified: Fri, 21 Dec 2018 17:17:01 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c540a22393861f3c778576cd02a2c9865932be40efcc01682087cf51c47660`  
		Last Modified: Fri, 21 Dec 2018 17:17:46 GMT  
		Size: 81.3 MB (81316419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0755f949111c9d8b9a67773d0472a7d4a031c40d52802c8ae2ed643280ce0a7`  
		Last Modified: Fri, 21 Dec 2018 19:24:58 GMT  
		Size: 2.3 MB (2293683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:747eef3e8ba5c26aac19f0481d5ac22d9939e3dc7205ec84938547f122c1309e`  
		Last Modified: Fri, 21 Dec 2018 19:24:58 GMT  
		Size: 9.1 MB (9087938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bb1c9a8ecb2621caf160889604aacd81bde158525ab92fd5317e4c8361f27b`  
		Last Modified: Fri, 21 Dec 2018 19:24:53 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919ab2a06b0ada7848f7a7d0d4979b75ae22c0c0559d3be77b2a1ed6d6b72a0e`  
		Last Modified: Fri, 21 Dec 2018 19:24:58 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; ppc64le

```console
$ docker pull maven@sha256:4e15ad7c152a6890a5821b9307274848e92e38d0e76a1c38c768a17186287733
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86379029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203c0d1244cb5f53652f40a7222438828a26606c2dbe4adbbeddd5e23a4aa442`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:30:19 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:30:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:33:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 06 Feb 2019 11:33:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 06 Feb 2019 11:33:13 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Feb 2019 11:33:15 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r2
# Wed, 06 Feb 2019 11:33:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 01:58:06 GMT
RUN apk add --no-cache curl tar bash procps
# Thu, 07 Feb 2019 01:58:08 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 01:58:09 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 01:58:11 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 01:58:12 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 01:58:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 01:58:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 01:58:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 01:58:20 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 01:58:21 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 01:58:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 01:58:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ffc70c988f1eca134348f8c977a0a8eca65b127503f8a7d6561fd73acaf47f`  
		Last Modified: Wed, 06 Feb 2019 11:40:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0ec5186660a6898e92f495b12c540801b983e3f1f3abc1c970031896fb1f1c`  
		Last Modified: Wed, 06 Feb 2019 11:42:17 GMT  
		Size: 72.2 MB (72180594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ff32db9bb2e89dabcb558e791c087011a0e2c389b3f4e7e4d410149384fef8`  
		Last Modified: Thu, 07 Feb 2019 02:01:27 GMT  
		Size: 2.3 MB (2330295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6643fbfd8dadde04825ad1526b000369fe61a3089d3fd5a380f6439d3f23c9a`  
		Last Modified: Thu, 07 Feb 2019 02:01:27 GMT  
		Size: 9.1 MB (9087955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c706e9dca01de9a4ba7be0948db69ff919ae516422818f1756f3d751b217688`  
		Last Modified: Thu, 07 Feb 2019 02:01:26 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f46e4c13e8db7cc9c3e1bce17594c4bb971fe81ce7b468d5a2de9686bcd648`  
		Last Modified: Thu, 07 Feb 2019 02:01:26 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; s390x

```console
$ docker pull maven@sha256:752d036b57125ef962c42adf2f9d4566099b11f233fcf257f50a7e61b4f825a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84475877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b53d27eb1d1bef47968a84e538c1f4ae5fac213afb16888ae321cec5d5030d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:21:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 06 Feb 2019 13:21:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 06 Feb 2019 13:21:03 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Feb 2019 13:21:03 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r2
# Wed, 06 Feb 2019 13:21:12 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 19:10:43 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 06 Feb 2019 19:10:43 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 06 Feb 2019 19:10:44 GMT
ARG USER_HOME_DIR=/root
# Wed, 06 Feb 2019 19:10:44 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 06 Feb 2019 19:10:44 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 06 Feb 2019 19:10:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 06 Feb 2019 19:10:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 06 Feb 2019 19:10:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 06 Feb 2019 19:10:55 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 06 Feb 2019 19:10:55 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 06 Feb 2019 19:10:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 06 Feb 2019 19:10:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d1a7308c276b4bfe36b12f01b7c57f79adfc7eb55e0263fd725e1308d13412`  
		Last Modified: Wed, 06 Feb 2019 13:25:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ad85bcf602f989247e09c9f082978a05ea9fe6e73d2b3d74a6829ec1d71f32`  
		Last Modified: Wed, 06 Feb 2019 13:25:57 GMT  
		Size: 70.6 MB (70589972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6f8982636ee4caf334eac0d13c5fd309d34cfec6819b03a823913431309477`  
		Last Modified: Wed, 06 Feb 2019 19:12:41 GMT  
		Size: 2.3 MB (2255105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f2368bb3b9ed7e6e1d8e2b939301fa7eaf9c973cbf4b84c699458259218078`  
		Last Modified: Wed, 06 Feb 2019 19:12:41 GMT  
		Size: 9.1 MB (9087926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd5e57faa224da111285d8377022fc97e96b8cb3414ee4c739d9c51f19c9402`  
		Last Modified: Wed, 06 Feb 2019 19:12:40 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a57f2efde963dfa5e1b999a23ae63826deaf1122bf04e0a8a72479976b3e80`  
		Last Modified: Wed, 06 Feb 2019 19:12:40 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

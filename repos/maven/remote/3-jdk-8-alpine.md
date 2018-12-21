## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:b826cf351e06fabf90153ea63a9ba5c87fad32e36ae907744306298bd29131d1
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
$ docker pull maven@sha256:9006e57b6d71da1e48e71c2a803f87924bc26ae097f9ed19704041689b532e01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84072176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79abdd64abd13d8d9c5cb12b857493e098f6697a858adf88e77aa6f6846683ae`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:34:27 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 21 Dec 2018 05:34:27 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 21 Dec 2018 05:34:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Dec 2018 05:34:27 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 21 Dec 2018 05:34:28 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 21 Dec 2018 05:34:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 21 Dec 2018 05:34:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Dec 2018 05:34:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Dec 2018 05:34:30 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 21 Dec 2018 05:34:30 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 21 Dec 2018 05:34:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Dec 2018 05:34:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a5c2c61767e93d1e332a4319f396f39b0dc6b2ee9e4cd2b9d0d5270c82556c`  
		Last Modified: Fri, 21 Dec 2018 00:44:52 GMT  
		Size: 70.6 MB (70610751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2227bd680c7e44038a0e56dd8a19017ce0617c5d77d221d773e59e2e954eb28`  
		Last Modified: Fri, 21 Dec 2018 05:35:28 GMT  
		Size: 2.2 MB (2165152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e06122a30027d402b8a7be2db5dbd64936da904b7d8b2bd1521d916b160883c`  
		Last Modified: Fri, 21 Dec 2018 05:35:28 GMT  
		Size: 9.1 MB (9087908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9584b13a806ddd25fe68ee9f14597ef63d48ca4e3022395d3ba1ba069193280`  
		Last Modified: Fri, 21 Dec 2018 05:35:27 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6bf691e221ee80357d3bd9fec25207b186467f7717bfacfe1cfde2ebe2d68d`  
		Last Modified: Fri, 21 Dec 2018 05:35:28 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:a9642567730e72214e7791e0cc20a5be2994a73f1315d66ba7f9e6f0a7949049
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81409363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:625fafadf4e852cbf2912ed229e8d4adca02957d9bffe235d404f433afe402ad`
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
# Fri, 21 Dec 2018 09:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 09:54:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 09:54:15 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 09:54:15 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 09:54:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 11:10:00 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 21 Dec 2018 11:10:00 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 21 Dec 2018 11:10:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Dec 2018 11:10:01 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 21 Dec 2018 11:10:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 21 Dec 2018 11:10:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 21 Dec 2018 11:10:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Dec 2018 11:10:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Dec 2018 11:10:13 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 21 Dec 2018 11:10:13 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 21 Dec 2018 11:10:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Dec 2018 11:10:14 GMT
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
	-	`sha256:3757ad24851028e675477d11ebabb3ef5754bd214b33725d5618c7e68892890b`  
		Last Modified: Fri, 21 Dec 2018 09:55:40 GMT  
		Size: 68.1 MB (68094877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54bcb1177ccf75a56da240eaa7e0b8fbf6b8e09ffc344169ce22bdd607a7c54`  
		Last Modified: Fri, 21 Dec 2018 11:10:36 GMT  
		Size: 2.1 MB (2079245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8032bb6668af45d9cdfb9a5505cf5615bc48589fe32bfe36dda3893522bd7af`  
		Last Modified: Fri, 21 Dec 2018 11:10:36 GMT  
		Size: 9.1 MB (9087938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ecc05fda848c6863ab9d953dfe5264fca0f06147be16e56e3ff771d648ad56d`  
		Last Modified: Fri, 21 Dec 2018 11:10:34 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:184ca40667959027341790eec5cf97fe4dc834b9fbc95d8a1c4adf232a6e23cb`  
		Last Modified: Fri, 21 Dec 2018 11:10:34 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:7afc82fa8a961c26a8c67d4c17c385e252a7886cb52d29f102460e363275ee45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82376480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cab898c6daa6476d254704e095749cb0d756a14fab623844d65275940cb0898`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:05:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 13:05:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:05:59 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:06:00 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:06:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 16:44:45 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 21 Dec 2018 16:44:46 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 21 Dec 2018 16:44:47 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Dec 2018 16:44:47 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 21 Dec 2018 16:44:48 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 21 Dec 2018 16:44:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 21 Dec 2018 16:45:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Dec 2018 16:45:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Dec 2018 16:45:01 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 21 Dec 2018 16:45:02 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 21 Dec 2018 16:45:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Dec 2018 16:45:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fde07cdb5ae38bd30bb347c8a434884fc5f60c2be9752f0a82280ce413597f9`  
		Last Modified: Fri, 21 Dec 2018 13:09:48 GMT  
		Size: 69.1 MB (69137383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25aec40f78c543f8be0185e43dfd3eab63c5c47fa6b1d3621e828f85ddc58ea5`  
		Last Modified: Fri, 21 Dec 2018 16:46:03 GMT  
		Size: 2.0 MB (2049805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b29d79856f7426ab37bec323a45e8f835397debb51ae780793b9a7016260ea`  
		Last Modified: Fri, 21 Dec 2018 16:46:06 GMT  
		Size: 9.1 MB (9087932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fb33567d3e426cb8c3d601c107b2a37be499fc29d0acba1ca0593dcfd859c9`  
		Last Modified: Fri, 21 Dec 2018 16:46:01 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21868d98dfbaa598188695aed287d57aef318b64efb0d3a3071e6cb5a41ceb39`  
		Last Modified: Fri, 21 Dec 2018 16:46:01 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; 386

```console
$ docker pull maven@sha256:58a3c5548f31e3e7669c46fb4a03190048dfc5507b963f400505e4d03f501687
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84891173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fab634795dd0992579858e1050f770062536b154d5cb33d6e7884200966e9f`
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
# Thu, 25 Oct 2018 11:02:11 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 11:02:11 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 11:02:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 12:32:48 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 03 Nov 2018 11:05:58 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 03 Nov 2018 11:05:58 GMT
ARG USER_HOME_DIR=/root
# Sat, 03 Nov 2018 11:05:58 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 03 Nov 2018 11:05:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 03 Nov 2018 11:06:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 03 Nov 2018 11:06:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 03 Nov 2018 11:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 03 Nov 2018 11:06:02 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 03 Nov 2018 11:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 03 Nov 2018 11:06:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 03 Nov 2018 11:06:02 GMT
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
	-	`sha256:f898332a6e71f8394d1c46d7cf33950ec55b47bc93eafb41e9c3de00d919f25c`  
		Last Modified: Thu, 25 Oct 2018 11:12:01 GMT  
		Size: 71.2 MB (71248861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b08cf2781e6139765d12c7d54beafddedbbaefcbd67eb9ced0b9b402c12d40`  
		Last Modified: Thu, 25 Oct 2018 12:34:27 GMT  
		Size: 2.3 MB (2281388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8d9c3de6ddf4fbe85c315af5761cb9b3d7df54112ac3971cfba4eb18aae04a`  
		Last Modified: Sat, 03 Nov 2018 11:11:41 GMT  
		Size: 9.1 MB (9087934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcf674ce026e3837d12309a4efe0892dc702d457e9ad92eea3d59ad8f4d88f2`  
		Last Modified: Sat, 03 Nov 2018 11:11:40 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20df7e42a86cdad9ee4c5dfbeb0ba1e952d327986f85abab9b0013bffa12b79`  
		Last Modified: Sat, 03 Nov 2018 11:11:40 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; ppc64le

```console
$ docker pull maven@sha256:46ca46a9bc061e31ddb55aaaaf505f9d633d7ec3d0e5d5034d5c2ff1b37c532e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83221245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8fbe4a9b020859fcf3be70bab0d9f6dd2b99178aa7a18268d8d6b45b18abb79`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:27:06 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 11:27:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 11:27:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 11:27:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 11:27:17 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 11:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 11:27:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 13:32:56 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 21 Dec 2018 13:32:59 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 21 Dec 2018 13:33:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Dec 2018 13:33:02 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 21 Dec 2018 13:33:04 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 21 Dec 2018 13:33:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 21 Dec 2018 13:33:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Dec 2018 13:33:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Dec 2018 13:33:18 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 21 Dec 2018 13:33:20 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 21 Dec 2018 13:33:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Dec 2018 13:33:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c68a7687c05687b556f4161aa0149bd285ea670773baee7d2eb53c9b5cb242`  
		Last Modified: Fri, 21 Dec 2018 11:30:53 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904f27f1919762d4fbbdeec849067542dd748ccffa5d209974f3d3bab351353d`  
		Last Modified: Fri, 21 Dec 2018 11:31:01 GMT  
		Size: 69.8 MB (69778779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321eae131f7f8372395f976ef909b79248aac932b86753e2e04caa0c6b4e6ff1`  
		Last Modified: Fri, 21 Dec 2018 13:34:33 GMT  
		Size: 2.2 MB (2158229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a885353547fba4c181ce13723cebecfea6183f044e80f12a16cbcb1ee3333a5`  
		Last Modified: Fri, 21 Dec 2018 13:34:33 GMT  
		Size: 9.1 MB (9087947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1feb1fb21bb13c25e734b6f2e507bf8f9024630ff157412d5dadb6796feb551`  
		Last Modified: Fri, 21 Dec 2018 13:34:32 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6411def858fe77722de85e083a190130be6309d1568348980b3d17fbf7148d15`  
		Last Modified: Fri, 21 Dec 2018 13:34:33 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-alpine` - linux; s390x

```console
$ docker pull maven@sha256:575d592b54e853c1f22a53e23e82b13cb110e266c2feca7f7306ceb870be5127
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83057372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05c1707e336a05a8c905b49fa30f7d6e34333a0ac326e2f078fcc48de74db87`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:28:45 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:28:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:28:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 13:28:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:28:47 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:28:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:28:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 15:15:11 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 21 Dec 2018 15:15:11 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 21 Dec 2018 15:15:11 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Dec 2018 15:15:12 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 21 Dec 2018 15:15:12 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 21 Dec 2018 15:15:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 21 Dec 2018 15:15:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Dec 2018 15:15:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Dec 2018 15:15:16 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 21 Dec 2018 15:15:16 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 21 Dec 2018 15:15:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Dec 2018 15:15:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834a618d8a86ef384988744d20f6cca1936684bdbeb27cf0dd33b0c95965cfd9`  
		Last Modified: Fri, 21 Dec 2018 13:31:20 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2258a7607a5816eb30630336a16551ba889ca008ad17b970fa1b5972f800209`  
		Last Modified: Fri, 21 Dec 2018 13:31:26 GMT  
		Size: 69.4 MB (69404588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbca0db4c167da54c9c16d9a856953673af5cb69d7d6a6f3ba4e79b6c713b71`  
		Last Modified: Fri, 21 Dec 2018 15:15:57 GMT  
		Size: 2.3 MB (2255484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf42169fc56dc43bedc892a5c8f96020554babf76bf95e8fb060f1b9187f628`  
		Last Modified: Fri, 21 Dec 2018 15:15:58 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bcefa42234ca29f530a496d7d3a1996c9244c92bb4fdb06a36499e809e9618`  
		Last Modified: Fri, 21 Dec 2018 15:15:57 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21255e24eca796c25d631d080b839f8047beeedc80c50c17ebafde589477192c`  
		Last Modified: Fri, 21 Dec 2018 15:15:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

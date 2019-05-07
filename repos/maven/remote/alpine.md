## `maven:alpine`

```console
$ docker pull maven@sha256:70b8087091ecd669ad37d1463b30f0f90c986f28dc519ebef3a4a05ba871ac48
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

### `maven:alpine` - linux; amd64

```console
$ docker pull maven@sha256:a7f143dc6158008633ff745533f7fc02da9f3cefae6eb16696df00d8d98518b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84835856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff484b51a2f2101577802f29080ba02db3ec31588370f047bf47102e3d2c9ce`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:58:42 GMT
RUN apk add --no-cache curl tar bash procps
# Tue, 07 May 2019 00:58:42 GMT
ARG MAVEN_VERSION=3.6.1
# Tue, 07 May 2019 00:58:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 May 2019 00:58:43 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Tue, 07 May 2019 00:58:43 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Tue, 07 May 2019 00:58:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 May 2019 00:58:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 May 2019 00:58:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 May 2019 00:58:46 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 May 2019 00:58:46 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 07 May 2019 00:58:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 May 2019 00:58:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018b76c3c533954c0a7fbd9e90e85f48d7240c14898e0a3b822bdc8c38ca7b50`  
		Last Modified: Tue, 07 May 2019 00:23:15 GMT  
		Size: 70.7 MB (70732830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53244c3cf2a861d0b54b531f6f0988171d6cf02e9c25c85d0f0a308a0d4500f5`  
		Last Modified: Tue, 07 May 2019 00:59:32 GMT  
		Size: 2.2 MB (2182700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bd5451ff58ba94b5412bfd8a26e91734ea9a0f94006638fc8910f58a71d210`  
		Last Modified: Tue, 07 May 2019 00:59:32 GMT  
		Size: 9.2 MB (9161867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214281d1a0128b95b16c77e68e73e8925d1102315b33fccd6ccf6bef255ba130`  
		Last Modified: Tue, 07 May 2019 00:59:31 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6158a13d43658dff15c7b1c66f68d2722ec57c2ce7cfa0c707bda98bc6b388`  
		Last Modified: Tue, 07 May 2019 00:59:31 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:995c498418d18963065812855c01d8a463f8b99f2569551d7010b20eb9ace992
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81985112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352a0070c59567bc6808a6afc9d381afe13dcd0d7add22c495a729a1cb601d57`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:15:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 08:16:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 08:16:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 08:16:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 08:16:01 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 08:16:01 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 08:16:08 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 09:37:04 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 17 Apr 2019 07:49:46 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 07:49:46 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 07:49:47 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 07:49:47 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 07:49:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 07:49:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 07:49:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 07:49:54 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 07:49:55 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 07:49:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 07:49:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740f9654bf3d64555b0034839bc01523005f3494bc52b01109cf0ceb7de78ece`  
		Last Modified: Wed, 10 Apr 2019 08:17:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d5512e2e7258d1f55bc68caceb7da03d687aff8a58a8dea7af685645c0df87`  
		Last Modified: Wed, 10 Apr 2019 08:17:39 GMT  
		Size: 68.2 MB (68198815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8183ca062ac2e4172b0666ab3606a226ac38f6b32c74d840f5907096bbf05b00`  
		Last Modified: Wed, 10 Apr 2019 09:37:42 GMT  
		Size: 2.1 MB (2079517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba060065300c12125e310b016a2670d30fda9ee6df4c2b37b78fef468050b2d5`  
		Last Modified: Wed, 17 Apr 2019 07:50:17 GMT  
		Size: 9.2 MB (9161882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff14347a111ecbaac3e03eac4a02bbbbc83d852afd4a74c43e11acf976526cf`  
		Last Modified: Wed, 17 Apr 2019 07:50:16 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af8180e34346009d69f327b68d7057b6a43ecd3f3cc28fc57107dac41a44fac`  
		Last Modified: Wed, 17 Apr 2019 07:50:16 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; arm variant v7

```console
$ docker pull maven@sha256:69d19b717b99fa429f78126f48fe3372a44c70d484b3475f58e55e8792406b52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80838220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49c821600e937ac4d02f34848bed54bca036cf6dba5f59240aeb8878d78a53f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:32:33 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 12:32:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 12:32:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 12:32:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 12:32:36 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 12:32:36 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 12:32:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 16 Apr 2019 12:06:01 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 17 Apr 2019 12:00:40 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 12:00:41 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 12:00:41 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 12:00:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 12:00:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 12:00:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 12:00:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 12:00:52 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 12:00:53 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 12:00:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 12:00:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f84f012d7a2c98b878a374d23d4b8b84201bab90ec9ed1c77522e51fb0c55f8`  
		Last Modified: Wed, 10 Apr 2019 12:34:37 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d05d647430d1fbb09d53a234fe2d2ef0141a8e7fd97d0b97b04692c1b5734b`  
		Last Modified: Wed, 10 Apr 2019 12:34:48 GMT  
		Size: 67.4 MB (67386022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f703e31041dbdd131b0cb9dbba033a212ec85dd01dcb5b65408c5dfd59baefba`  
		Last Modified: Tue, 16 Apr 2019 12:06:59 GMT  
		Size: 1.9 MB (1938092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002b0f786fba720eb5797cce72a07dc4e7e2fd3d2c703993e67e83728252c08b`  
		Last Modified: Wed, 17 Apr 2019 12:03:12 GMT  
		Size: 9.2 MB (9161892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7907f98e572aac5951addd54ac9c05f3185e5a26d7f1777d10dd0d294c3105dd`  
		Last Modified: Wed, 17 Apr 2019 12:03:10 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439432773d39a38b8587bb576859079c3d7817ccfb91f1d069e983ab7496e8ee`  
		Last Modified: Wed, 17 Apr 2019 12:03:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:19b16546876131f837b0facd4f179401abda162f02b2e281fe78dbec963d893b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84819030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f90cff574bee91e1469589b132ece41967f523d74008f0a35ab10ad48929f73`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:49:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 13:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 13:49:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 13:49:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 09:02:23 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 09:02:23 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 09:02:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 09:52:49 GMT
RUN apk add --no-cache curl tar bash procps
# Tue, 07 May 2019 09:52:49 GMT
ARG MAVEN_VERSION=3.6.1
# Tue, 07 May 2019 09:52:50 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 May 2019 09:52:51 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Tue, 07 May 2019 09:52:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Tue, 07 May 2019 09:52:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 May 2019 09:52:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 May 2019 09:52:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 May 2019 09:52:59 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 May 2019 09:53:00 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 07 May 2019 09:53:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 May 2019 09:53:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262af2c613fda9d21034fdf7bbdb56296fdd19b65bdbb02d6795e631a674fa42`  
		Last Modified: Wed, 10 Apr 2019 13:54:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f72e0a28758dd64fd20208e436338fe6e2cdf3a3783b06daa045125246f0f6e`  
		Last Modified: Tue, 07 May 2019 09:04:46 GMT  
		Size: 70.7 MB (70740693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a639ea4f38e60635745ed4d1ace16f74ebed51e142e09a1a5e16ad681172d4fa`  
		Last Modified: Tue, 07 May 2019 09:53:41 GMT  
		Size: 2.2 MB (2226235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e70f2967ac1d74b6d6ff8f7c1014b3ec4c9bc014db29ea70f0f21d860594ad`  
		Last Modified: Tue, 07 May 2019 09:53:41 GMT  
		Size: 9.2 MB (9161869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd09008ccd5d1f7b753395c4eaec67d8d5e97266884da9e5375cdaa9a82927d`  
		Last Modified: Tue, 07 May 2019 09:53:39 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80822d8e527bc113fcf04266a332b797bd6097c83764ce1ead38db7915012e4`  
		Last Modified: Tue, 07 May 2019 09:53:41 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; 386

```console
$ docker pull maven@sha256:33146796d0f61e210f99ead54fffd46e56f5b8e80a296894a08052beac6b7f6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85547012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990334eb068d63013a46660c66ce492eeb51bfcdea970e6fa1e0b9a8aced6691`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:45:36 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 14:45:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 14:45:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 14:45:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 14:45:37 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 14:45:37 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 14:45:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 16:17:30 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 17 Apr 2019 10:47:28 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 10:47:28 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 10:47:29 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 10:47:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 10:47:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 10:47:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 10:47:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 10:47:32 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 10:47:32 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 10:47:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 10:47:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507150e9707de9812071bca1e05b447035474af8f628f739782f28876ce11ea7`  
		Last Modified: Wed, 10 Apr 2019 14:47:10 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5059bddf8be3bba05e3f82fb511f428ca3d2d2e77ce22f251af1875743dd1bb`  
		Last Modified: Wed, 10 Apr 2019 14:47:17 GMT  
		Size: 71.3 MB (71328044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedb9bb4567e256cae72ea29602daf09d93ec10475843b1e8034f0c8519d7360`  
		Last Modified: Wed, 10 Apr 2019 16:18:08 GMT  
		Size: 2.3 MB (2303490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0bf84bacdeab8fab0df86042c55d077735e5e711b548e12381dbdf6da59c60`  
		Last Modified: Wed, 17 Apr 2019 10:50:59 GMT  
		Size: 9.2 MB (9161862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a79c09e9aa091a9c56ede59a54763c93e98ce22db66955ed48c7fd6dcaea20`  
		Last Modified: Wed, 17 Apr 2019 10:50:58 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ae2e46976e24421268db0593aa25c5f55f891883a1781fe5cb7415add663c`  
		Last Modified: Wed, 17 Apr 2019 10:50:58 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; ppc64le

```console
$ docker pull maven@sha256:9e3c032a8c7f5d3a776f07d40de5a00a7ea07bf35cd4306bcdc57787bbbaa0e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85717215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:096d76a8629bb6fb0dfb4f693d726ec21dd5616f9000dd08ded172b054c08879`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 10:34:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 10:34:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 10:34:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 08:25:57 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 08:25:59 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 08:26:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 09:17:58 GMT
RUN apk add --no-cache curl tar bash procps
# Tue, 07 May 2019 09:18:04 GMT
ARG MAVEN_VERSION=3.6.1
# Tue, 07 May 2019 09:18:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 May 2019 09:18:14 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Tue, 07 May 2019 09:18:21 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Tue, 07 May 2019 09:18:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 May 2019 09:18:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 May 2019 09:18:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 May 2019 09:18:44 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 May 2019 09:18:46 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 07 May 2019 09:18:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 May 2019 09:18:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33502e4594fea19504ab3a271166aae35dc0104c699ca0bdf84559822c1c7be8`  
		Last Modified: Wed, 10 Apr 2019 10:38:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c5a4b8431f001fb80a4430b9848cdcba134c1775dff198ac8c645654d7e13`  
		Last Modified: Tue, 07 May 2019 08:29:15 GMT  
		Size: 71.5 MB (71452640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec477e1e17fda4e2269ab16442b46d2573471e6811af7f8ca15eb2855374f6d1`  
		Last Modified: Tue, 07 May 2019 09:19:52 GMT  
		Size: 2.3 MB (2320213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be23aa87660f78e8d2f03c3e0d86017e116b0d5bf32521c11fc0408ec8075348`  
		Last Modified: Tue, 07 May 2019 09:19:52 GMT  
		Size: 9.2 MB (9161889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a163957d3ae76bb4cf6d51c12095f0c9822159e0a57822e0ad4f31eefbb500a2`  
		Last Modified: Tue, 07 May 2019 09:19:50 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b2303bd6a8b1488dd7e28cf8235d949aed2f060172b936f6ec65025545b91e`  
		Last Modified: Tue, 07 May 2019 09:19:51 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:alpine` - linux; s390x

```console
$ docker pull maven@sha256:7f646508ab923a3188f39240a6404f286c4a8bd9b14f1711196374baa755ef7a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83414229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65865421032c90175916c532ae8729121a2aaa4aad6073b5f773078329d910fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:29:54 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 14:29:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 14:29:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 14:30:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 14:30:01 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 14:30:02 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 14:30:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 15:16:20 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 17 Apr 2019 11:54:18 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 11:54:19 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 11:54:19 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 11:54:20 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 11:54:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 11:54:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 11:54:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 11:54:28 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 11:54:29 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 11:54:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 11:54:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5d5378375b74e61c7006a4fcd138a028ad6edff3a385f04b5ad1a15363b3ed`  
		Last Modified: Wed, 10 Apr 2019 14:34:21 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030a6693ffa8ba310884afdf8a9ab7d2e0565c16665a3fb43cb37d2cb9caa1ef`  
		Last Modified: Wed, 10 Apr 2019 14:34:33 GMT  
		Size: 69.5 MB (69462098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c737186d30d10f8072d5bc76cee12f6c4d856697c1f461a1f7a7c6b775157b2`  
		Last Modified: Wed, 10 Apr 2019 15:17:14 GMT  
		Size: 2.2 MB (2245483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338ad7c8a83dd6aa57a19903c83d56396d4df7180b55f8ba0dfcfe0ce5a6790e`  
		Last Modified: Wed, 17 Apr 2019 11:57:34 GMT  
		Size: 9.2 MB (9161864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508e84a4799f2d35101a17aab49b4d4d4bc5f37cd4ada54572404a985f2bc351`  
		Last Modified: Wed, 17 Apr 2019 11:57:33 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d234fbc468563786784be462e81f08434d000de73f73ce18e2cc6bb949120bac`  
		Last Modified: Wed, 17 Apr 2019 11:57:34 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

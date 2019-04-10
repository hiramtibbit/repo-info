## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:7b243d4b9aa5dc921832eef3b46486f218ae2eba0194326774adaaa34d74e0b9
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
$ docker pull maven@sha256:c0f48f4dc9083077b3f7d84f123fb35a71c51f7d7c7f4a2278d61f4db41487d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92590444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c99087047e8fc857e1ee0b8226588f5a738d5a6dd5462d46924252e6b119ff5`
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
# Wed, 10 Apr 2019 01:53:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 Apr 2019 01:53:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 Apr 2019 01:53:14 GMT
ENV JAVA_VERSION=7u201
# Wed, 10 Apr 2019 01:53:14 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Wed, 10 Apr 2019 01:53:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 03:30:44 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 10 Apr 2019 03:30:44 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 10 Apr 2019 03:30:44 GMT
ARG USER_HOME_DIR=/root
# Wed, 10 Apr 2019 03:30:45 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 10 Apr 2019 03:30:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 10 Apr 2019 03:30:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 10 Apr 2019 03:30:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 10 Apr 2019 03:30:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 10 Apr 2019 03:30:47 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 10 Apr 2019 03:30:48 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 10 Apr 2019 03:30:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 10 Apr 2019 03:30:48 GMT
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
	-	`sha256:837635de1a239da7fe9b43f3268deec6b0329f6be718004bf2df888eb6668092`  
		Last Modified: Wed, 10 Apr 2019 01:58:01 GMT  
		Size: 78.5 MB (78548969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bba865b95cfad929fb342d6bd463f053edecc3d5f68e18c3e803d9e32140865`  
		Last Modified: Wed, 10 Apr 2019 03:31:46 GMT  
		Size: 2.2 MB (2195195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13979b7d62f1c25553ab4aa32af64ae7e8467fdd64c11a6d7616d5b6e9d35eda`  
		Last Modified: Wed, 10 Apr 2019 03:31:46 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160eb8b746062671084e82b5c0427ee2922350752acf405219dab03b294878ab`  
		Last Modified: Wed, 10 Apr 2019 03:31:45 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955ad38e32a2220c2deef41fd032fa010a0199890468520c1a02013e8950f128`  
		Last Modified: Wed, 10 Apr 2019 03:31:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm variant v6

```console
$ docker pull maven@sha256:5e44c2ea2212c3055ba8b56ca98892740a845c0451d45484f18aab0e27fc2b78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82656020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414e34b174b1c9d3e85745031407f5d4154aa1d94c018f3f3ac793532432511c`
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
# Wed, 10 Apr 2019 08:16:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 Apr 2019 08:16:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 Apr 2019 08:16:24 GMT
ENV JAVA_VERSION=7u201
# Wed, 10 Apr 2019 08:16:25 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Wed, 10 Apr 2019 08:16:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 09:36:48 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 10 Apr 2019 09:36:48 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 10 Apr 2019 09:36:49 GMT
ARG USER_HOME_DIR=/root
# Wed, 10 Apr 2019 09:36:49 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 10 Apr 2019 09:36:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 10 Apr 2019 09:36:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 10 Apr 2019 09:36:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 10 Apr 2019 09:36:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 10 Apr 2019 09:36:56 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 10 Apr 2019 09:36:57 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 10 Apr 2019 09:36:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 10 Apr 2019 09:36:57 GMT
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
	-	`sha256:967e2c680c66a92118e425319d425f17de122af5474a0352e2ed8b52e95bb63e`  
		Last Modified: Wed, 10 Apr 2019 08:18:22 GMT  
		Size: 68.9 MB (68928411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5ff1c3a27df06f661ee6e6c67205f28df3d935e00ea26e91c6f78f3f66891`  
		Last Modified: Wed, 10 Apr 2019 09:37:27 GMT  
		Size: 2.1 MB (2094855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf5e765ecbe0ee14eee84e129779056d78ea59905db7527daffd75bcc2af2c6`  
		Last Modified: Wed, 10 Apr 2019 09:37:27 GMT  
		Size: 9.1 MB (9087964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f472379b7f1bff700490317beb964caaf847972b2b7d4136bd5a000051c307`  
		Last Modified: Wed, 10 Apr 2019 09:37:27 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83369b2b05fc08d23da5bb548a21c16155224f9ac0157ed7a69ea666a5b79c6e`  
		Last Modified: Wed, 10 Apr 2019 09:37:27 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:49a4ee886b2bd4c0b0be7314e57c9425a0aa53327710fafd0fc404cfaede842b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92234709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9f8d496122c381c9e0f27890b9550732fa898633a78e7ca7fc3fccb86eaad3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 08 Mar 2019 09:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 08 Mar 2019 09:51:18 GMT
ENV JAVA_VERSION=7u201
# Fri, 08 Mar 2019 09:51:19 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Fri, 08 Mar 2019 09:51:44 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 13:16:37 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 08 Mar 2019 13:16:40 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 08 Mar 2019 13:16:41 GMT
ARG USER_HOME_DIR=/root
# Fri, 08 Mar 2019 13:16:42 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 08 Mar 2019 13:16:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 08 Mar 2019 13:16:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 08 Mar 2019 13:16:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 08 Mar 2019 13:16:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 08 Mar 2019 13:16:56 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 08 Mar 2019 13:16:57 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 08 Mar 2019 13:16:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 08 Mar 2019 13:16:58 GMT
CMD ["mvn"]
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
	-	`sha256:25a4b16151f9e8421d5062ccceff9a4c0190bbbdce9c59208430d8e7f81006da`  
		Last Modified: Fri, 08 Mar 2019 09:58:19 GMT  
		Size: 78.2 MB (78219140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc571845a29b00d6cd3ee53282aa3f7f4193e0fb250a2005125a954027e4f587`  
		Last Modified: Fri, 08 Mar 2019 13:18:12 GMT  
		Size: 2.2 MB (2238351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f8d837c2e86600f18dd82787932d79db181486be11e20bda35164653498ec4`  
		Last Modified: Fri, 08 Mar 2019 13:18:12 GMT  
		Size: 9.1 MB (9087928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507eea5ac6420c55aa59324014672a9e0a7942db3948baea15cffd284628e6e4`  
		Last Modified: Fri, 08 Mar 2019 13:18:10 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e66d556fdcabd65d3240317cc128375146d4470917338da15cd1198c17cd11`  
		Last Modified: Fri, 08 Mar 2019 13:18:10 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; 386

```console
$ docker pull maven@sha256:39ac6b1627461fb0ecfcf57d1b13df6079405ad1388722ecdfac76e77ba0c58f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95697372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f8154b7b2f882b58187a65e392dc3ad04ad5f476e1d4e5331cd4a11d6d2559`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 08 Mar 2019 06:52:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 08 Mar 2019 06:52:30 GMT
ENV JAVA_VERSION=7u201
# Fri, 08 Mar 2019 06:52:31 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Fri, 08 Mar 2019 06:52:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 11:10:34 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 08 Mar 2019 11:10:34 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 08 Mar 2019 11:10:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 08 Mar 2019 11:10:34 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 08 Mar 2019 11:10:34 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 08 Mar 2019 11:10:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 08 Mar 2019 11:10:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 08 Mar 2019 11:10:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 08 Mar 2019 11:10:39 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 08 Mar 2019 11:10:39 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 08 Mar 2019 11:10:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 08 Mar 2019 11:10:39 GMT
CMD ["mvn"]
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
	-	`sha256:027175927d439cf6ef3ee646bc809b371c21ebd344be8c63be096426ed399112`  
		Last Modified: Fri, 08 Mar 2019 06:54:34 GMT  
		Size: 81.5 MB (81542645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdb37511cf3d7d01fc48cae790667cd9285a994d5f45303ed2d30aec4974771`  
		Last Modified: Fri, 08 Mar 2019 11:11:20 GMT  
		Size: 2.3 MB (2316087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2909ed1ac2e12c33f2059a56e6dd988ea14f5c3d64537d0f6ee1799d4f143d5`  
		Last Modified: Fri, 08 Mar 2019 11:11:20 GMT  
		Size: 9.1 MB (9087938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88e4f13374f16d9fe4522904a0ea2623b7a171327ee61f3996225c02b085f1a`  
		Last Modified: Fri, 08 Mar 2019 11:11:19 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeb24d342bc675181aa18ea42ff3a1184aea8de02d9ae9310215ca203f5db29`  
		Last Modified: Fri, 08 Mar 2019 11:11:19 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; ppc64le

```console
$ docker pull maven@sha256:93df07e71cfc0c1b8dd25005ddd1767149ad825c9319cf323b6b2432c8f207fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86407315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34cf3eabec46adf9a0ddb801e9d01fa00fc4499aa439c78031e484f330561bb`
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
# Wed, 10 Apr 2019 10:35:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 10 Apr 2019 10:35:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 Apr 2019 10:35:53 GMT
ENV JAVA_VERSION=7u201
# Wed, 10 Apr 2019 10:36:00 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Wed, 10 Apr 2019 10:36:25 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 12:28:35 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 10 Apr 2019 12:28:37 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 10 Apr 2019 12:28:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 10 Apr 2019 12:28:42 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 10 Apr 2019 12:28:44 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 10 Apr 2019 12:28:50 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 10 Apr 2019 12:28:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 10 Apr 2019 12:28:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 10 Apr 2019 12:28:55 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 10 Apr 2019 12:28:56 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 10 Apr 2019 12:28:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 10 Apr 2019 12:29:00 GMT
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
	-	`sha256:95b8af92afdaa277d1ab5da764c40c524320947dc2fedbcdd2d19c162963233b`  
		Last Modified: Wed, 10 Apr 2019 10:40:14 GMT  
		Size: 72.2 MB (72203086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0212bb4f6a35b91890e16f9d169eddc003c162f67962706dda1fa7cf69a0a48`  
		Last Modified: Wed, 10 Apr 2019 12:30:48 GMT  
		Size: 2.3 MB (2333906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894fe8f11d7df95cbe5dbd8df19b5c048e8a35f1847838b91c30416f8b571760`  
		Last Modified: Wed, 10 Apr 2019 12:30:49 GMT  
		Size: 9.1 MB (9087957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7791e1c07107be7b958fcbca1ca99ebab91e45b70d36ba03251eb6e2f262b9`  
		Last Modified: Wed, 10 Apr 2019 12:30:47 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4cf715f143d8cc628b640adaa494dafd7f0b091946099c768043a86c45fde03`  
		Last Modified: Wed, 10 Apr 2019 12:30:47 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-alpine` - linux; s390x

```console
$ docker pull maven@sha256:ef1c0972d1537624278e1a3fb409fff496b1ec208db755fc0566a348ac7bf06c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84500875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c96390d642dc7f0b1cb76981335bb02e1341222ceaf899927fb66912e2dbdeb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:03:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 08 Mar 2019 04:03:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 08 Mar 2019 04:03:03 GMT
ENV JAVA_VERSION=7u201
# Fri, 08 Mar 2019 04:03:03 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Fri, 08 Mar 2019 04:03:12 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:26:52 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 08 Mar 2019 06:26:52 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 08 Mar 2019 06:26:52 GMT
ARG USER_HOME_DIR=/root
# Fri, 08 Mar 2019 06:26:53 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 08 Mar 2019 06:26:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 08 Mar 2019 06:26:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 08 Mar 2019 06:26:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 08 Mar 2019 06:26:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 08 Mar 2019 06:26:56 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 08 Mar 2019 06:26:56 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 08 Mar 2019 06:26:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 08 Mar 2019 06:26:56 GMT
CMD ["mvn"]
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
	-	`sha256:e71c31a5f97332b3c90cf6116783844150fd37b9b928042eade33b9b4a6b6767`  
		Last Modified: Fri, 08 Mar 2019 04:05:08 GMT  
		Size: 70.6 MB (70613849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1b04406cd70a6d0c4ae8fb70d442b3fa7b479dde6ffead9ffbbd34ccc9f8b`  
		Last Modified: Fri, 08 Mar 2019 06:27:37 GMT  
		Size: 2.3 MB (2256443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f66ec899b64f291fe78c2ae85506d80760315d0fead557af46fb9e644c1cf39`  
		Last Modified: Fri, 08 Mar 2019 06:27:38 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c16fb1f502abfb7013f6f89d5df244c59a71f2659d22d22ba077a1773f0e518`  
		Last Modified: Fri, 08 Mar 2019 06:27:37 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73df1980049dae62bc407298a2949970c4ec865b30daed5fed365edd261435e9`  
		Last Modified: Fri, 08 Mar 2019 06:27:37 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

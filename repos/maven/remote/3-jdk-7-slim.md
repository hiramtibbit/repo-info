## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:d424dd73ec63c776a876b68be1602df71587153a3e79f0bfc818946585ee2a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `maven:3-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:f014bc99491ac5a1391da1e3f80cab0e5a91a011006b223c91cd024135bfca35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126199263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c70dd26704b8c1a66cf21fede8cab85a1d5b830940dbb7dbab18fb81de2a294`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:38:00 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:38:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:38:02 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:38:02 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:38:02 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Feb 2019 08:38:03 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 06 Feb 2019 08:40:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 17:18:50 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 06 Feb 2019 17:18:50 GMT
ARG USER_HOME_DIR=/root
# Wed, 06 Feb 2019 17:18:50 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 06 Feb 2019 17:18:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 06 Feb 2019 17:20:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:21:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 06 Feb 2019 17:21:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 06 Feb 2019 17:21:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 06 Feb 2019 17:21:00 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 06 Feb 2019 17:21:00 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 06 Feb 2019 17:21:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 06 Feb 2019 17:21:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc81d08769a9ec46eb8d30dac8a051e145d33dd51080b8130b4eba1353984ef3`  
		Last Modified: Wed, 06 Feb 2019 08:55:47 GMT  
		Size: 463.8 KB (463803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4fc72adc56c8b865fa47c364c525707d456ea8fe2da898d4b099712b1b25ed`  
		Last Modified: Wed, 06 Feb 2019 08:55:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0212027f849c2ee8bf9e8aec483495fa86c980025a19bdb8cd0c8eccecd2560c`  
		Last Modified: Wed, 06 Feb 2019 08:55:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe278a73ad69b2ef099abdaa657801b73c5c93712c99b559c6428fe568c11e85`  
		Last Modified: Wed, 06 Feb 2019 08:56:01 GMT  
		Size: 85.2 MB (85236389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c331364c61b7cad07ad5e8f84d42840eb90bb90df366463702feaee0bc5d5d`  
		Last Modified: Wed, 06 Feb 2019 17:23:55 GMT  
		Size: 1.3 MB (1257794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f11312b85cafc5d30037a188a055a999374662079fd1b2910079097b71ce7d`  
		Last Modified: Wed, 06 Feb 2019 17:23:56 GMT  
		Size: 9.1 MB (9087928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dd6870536a521931eef9f3fc90c530dc2e5372441a8a3d3dba8cbbc0db131b`  
		Last Modified: Wed, 06 Feb 2019 17:23:54 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34df502406744d96304acd49148d9fe84f2fe5f0a5913b3eb2fd6fe62d026c73`  
		Last Modified: Wed, 06 Feb 2019 17:23:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:3a00a7619b02fd910ac282fb386f066cb25c08c6f45fa48e094d9f1adc9e6618
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111412797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5017d6fd4f6c6d7a7da9795791ee5e084ce988bd1fda07fdf0878c8c4c34fb0f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:57:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:57:50 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:57:55 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:57:56 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 12:57:57 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 12:59:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 16:37:02 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 16:37:03 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 16:37:03 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 16:37:04 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 16:38:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:38:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 16:38:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 16:38:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 16:38:21 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 16:38:21 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 16:38:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 16:38:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3763d98ea03ee233f604940ead709a70e0bc8a3dabe82c963d4cf3736f42e7`  
		Last Modified: Wed, 23 Jan 2019 13:12:26 GMT  
		Size: 456.5 KB (456522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83436a113941dd48780aff3dd0570f3a52e62cabd10f7dfcc7abb6f531fd4504`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9b39f7f31bf1d27cf03a6c8c8064f2aa83d493e3e99f894051099f04a62060`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137b656dde53360807ed41417977bfea38543dc529c7fc65910bae090d9caedd`  
		Last Modified: Wed, 23 Jan 2019 13:12:39 GMT  
		Size: 72.2 MB (72211580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c3c0434c4620bb8bdf3ddbdb7a1c718bfb275ffa769819aa334131fac0bdde`  
		Last Modified: Wed, 23 Jan 2019 16:40:32 GMT  
		Size: 1.2 MB (1195950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207ac1b27127b561c6341519753214474edc8d1fa40e6a1cd184228375eebb5b`  
		Last Modified: Wed, 23 Jan 2019 16:40:33 GMT  
		Size: 9.1 MB (9087964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ff963b26a959367739f0361a79e2b93266586454bd2f0cc2b463304cecb88a`  
		Last Modified: Wed, 23 Jan 2019 16:40:32 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d467b4c1d728e28889db1bda6e4280b94aae3665685e69572f55ff05f20f7d1c`  
		Last Modified: Wed, 23 Jan 2019 16:40:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:25ccd26732218b88ec6469eb01ccde8de66f846f202947b89d09144561788a10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107510539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d02232c6103fa1ff2fb145f7f331e2c837b55f9b70f619ec6c253888b5b849`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Feb 2019 12:59:27 GMT
ADD file:db8f660d9cf9ce7f20a1c04249f01bbe33e00ee01204fdf4bab78eb9bddfa112 in / 
# Thu, 07 Feb 2019 12:59:27 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 13:31:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 13:31:26 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 13:31:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 13:31:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 13:31:29 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 13:31:29 GMT
ENV JAVA_VERSION=7u181
# Thu, 07 Feb 2019 13:31:29 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 07 Feb 2019 13:33:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 16:32:41 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 16:32:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 16:32:42 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 16:32:43 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 16:33:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:33:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 16:33:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 16:33:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 16:33:58 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 16:33:59 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 16:33:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 16:33:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:06c740e232edb3bc22e51dfa51683e3cb5c62397ba3f08b08c24052eb63bc3c7`  
		Last Modified: Thu, 07 Feb 2019 01:20:36 GMT  
		Size: 26.3 MB (26304733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb9731f160ae8dce93d22819647d4044d497cc1f4ca920d722764fdca350b31`  
		Last Modified: Thu, 07 Feb 2019 13:36:02 GMT  
		Size: 432.4 KB (432407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:373de463300fcb8d44186d882e0ccafc1fb5cf7c3ffb484a507e074179b308f8`  
		Last Modified: Thu, 07 Feb 2019 13:36:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2a6fbbfd32a5ba3c023bbe0b87778024866e2d9a61ae50864d18d8f3662591`  
		Last Modified: Thu, 07 Feb 2019 13:36:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa406b248ae8d4c372c77a295d51ab3019e9847253eab2a58db3e7f064e051a`  
		Last Modified: Thu, 07 Feb 2019 13:36:16 GMT  
		Size: 70.5 MB (70548757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c05de1a9bae8f20971430b0f9130a4779b822bd29d23e097f430a2000962a8b`  
		Last Modified: Thu, 07 Feb 2019 16:34:55 GMT  
		Size: 1.1 MB (1135190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ecfe9f44b0790a6a9d942be1ae3aa62856187b04a9945c1a7f4bfabfb1a3a3`  
		Last Modified: Thu, 07 Feb 2019 16:34:56 GMT  
		Size: 9.1 MB (9087959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc7fcb80c63a3b99bbb1b07ee9e6c2350aeb4a4c67f516053a992508bb4181c`  
		Last Modified: Thu, 07 Feb 2019 16:34:55 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee60d7fac704dd5352fcb98b8eca68bc04b8be88aeaf88adfab64b292a737dc`  
		Last Modified: Thu, 07 Feb 2019 16:34:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; 386

```console
$ docker pull maven@sha256:d2acadba94f937a512a4c2c184ac73f121f8673c8eadd14f2efaf5a82898cab8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138346763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9b87c17b48c02181cd0fb03b5a35c2cad91d246b4c53f3578dedbb66a13085`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:59 GMT
ADD file:0f5ce19a631296a55839476a8427a6bb92538d0d63d89f0dfbeb8a1c8b0df1ff in / 
# Wed, 06 Feb 2019 11:59:00 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:25:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:25:33 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:25:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:25:36 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:25:36 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 13:25:36 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Feb 2019 13:25:37 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 06 Feb 2019 13:30:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:52:30 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 07:52:30 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 07:52:30 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 07:52:30 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 07:55:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 07:55:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 07:55:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 07:55:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 07:55:35 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 07:55:35 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 07:55:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 07:55:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c4ddbb4ee60739923db706a335f6f79e8a70a6a62aa8917fc9cc3b04b936afe5`  
		Last Modified: Wed, 06 Feb 2019 12:04:43 GMT  
		Size: 30.3 MB (30293283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167fb262e1b77a67750951db06cba6d1738b78aaf0349ef231f300f3d2b768f6`  
		Last Modified: Wed, 06 Feb 2019 13:44:09 GMT  
		Size: 466.4 KB (466371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faaf1ec93dca6775b42538337c6c4b4e4a75cc666eb1af82fdb84dbc10e7ecb5`  
		Last Modified: Wed, 06 Feb 2019 13:44:09 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bebe5be5ab3fe3c8c1503c64732af87d08645bd315bfcf03ea03b8563dc042`  
		Last Modified: Wed, 06 Feb 2019 13:44:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a625c488bbce97953902d1d72ece759ac2c9d458115435235aa7cf77373092`  
		Last Modified: Wed, 06 Feb 2019 13:44:40 GMT  
		Size: 97.2 MB (97177337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9f31d947149c23bbd09e73aecd9041b4b603c4c78ff2e3168be707a697ba48`  
		Last Modified: Thu, 07 Feb 2019 07:57:19 GMT  
		Size: 1.3 MB (1320349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d24e5158d25065a50c2f6d393a4854dfa9d64586db2feacda50addfdfa13fa`  
		Last Modified: Thu, 07 Feb 2019 07:57:20 GMT  
		Size: 9.1 MB (9087934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4126352d194902c1de240880980703f82294d34400c9c4cb917bbe742b6d7768`  
		Last Modified: Thu, 07 Feb 2019 07:57:19 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa44e0e76326fd14784c431744f4c94ff91b51eed6fb310866e0a16bc3a7eb4`  
		Last Modified: Thu, 07 Feb 2019 07:57:19 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

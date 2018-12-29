## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:14cccae48787f6aee8c7e872513df37959a17444da61266ee0ea43256f0d846b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `maven:3-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:f4f7f5ff0e815290182a7975c12091895e12956982425127c949de959e656d67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126199828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec054d06d8be041b1bb11aa387c230cfdde2325f4b86e8594d0053cfedac7ff6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:06:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 03:06:28 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 03:06:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 03:06:31 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 03:06:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 03:06:31 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 03:06:31 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 03:11:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 09:11:57 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 29 Dec 2018 09:11:57 GMT
ARG USER_HOME_DIR=/root
# Sat, 29 Dec 2018 09:11:57 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 29 Dec 2018 09:11:58 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 29 Dec 2018 09:13:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:13:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 29 Dec 2018 09:13:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 29 Dec 2018 09:13:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 29 Dec 2018 09:13:47 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 29 Dec 2018 09:13:48 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 29 Dec 2018 09:13:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 29 Dec 2018 09:13:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6670a1a594497beedeeb44939e2e71af22f942d506b9b364eda80d91bbb5ae`  
		Last Modified: Sat, 29 Dec 2018 03:26:59 GMT  
		Size: 463.8 KB (463767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb652a8c72b2bf4a42eb3c7b0b378c31acb66f874ae928e8582d8472ed6a04a`  
		Last Modified: Sat, 29 Dec 2018 03:26:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354db4b3a1cad290181859a674fe7c8a8abf1b3d6b17846d1f09edd3a9b945e9`  
		Last Modified: Sat, 29 Dec 2018 03:27:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776434d62c6179e3d6e9d1decfe79bbf3971b621308f17812c6be9197da63f93`  
		Last Modified: Sat, 29 Dec 2018 03:27:14 GMT  
		Size: 85.2 MB (85234988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a79179146e3617f75e14467227e8a2c33406108ca5249e4d4e645aaced9530a`  
		Last Modified: Sat, 29 Dec 2018 09:15:29 GMT  
		Size: 1.3 MB (1257702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9d99158308dde13761e7d4df389f5d0f6060629ee8c07bb44d387f2e8f8a17`  
		Last Modified: Sat, 29 Dec 2018 09:15:30 GMT  
		Size: 9.1 MB (9087926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79ff9a02218639d02606225302eade2c596f75000a2955944be7850fd6bdd7a`  
		Last Modified: Sat, 29 Dec 2018 09:15:29 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3288d5a881e5c9bc8ad5f3b5e4b64173455749b9362f30a2b9e3b4b197f945c4`  
		Last Modified: Sat, 29 Dec 2018 09:15:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:d2256eb90eb390f18365578d6876fcdf78afcd534b0fb1cd5b262c2e0e5120e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111392049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f699e0de12b4523a7cabfabc52deb8e191f81d853a4b73ccdc83b63ac0e172d8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 16 Nov 2018 09:51:23 GMT
ADD file:9ac898339cba260ad76a4387ca44eb463c4686a835b644c946bf729bdd99c9a0 in / 
# Fri, 16 Nov 2018 09:51:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:46:50 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:46:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 18:46:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 18:46:54 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 18:46:54 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 10:02:41 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 10:04:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 29 Nov 2018 10:40:46 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 29 Nov 2018 10:40:46 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Nov 2018 10:40:47 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 29 Nov 2018 10:40:47 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 29 Nov 2018 10:41:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 29 Nov 2018 10:41:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Nov 2018 10:41:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Nov 2018 10:41:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Nov 2018 10:41:44 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Nov 2018 10:41:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Nov 2018 10:41:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Nov 2018 10:41:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8e25b1f277cb004ed8d464c873f7b23f682ecb0449ae26255e5683c8117c03cf`  
		Last Modified: Fri, 16 Nov 2018 10:06:38 GMT  
		Size: 28.4 MB (28439693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97d3ac76f596094d2faf4d9b97203e08ce5afd71e70cea2276d705f668e8ab2`  
		Last Modified: Fri, 16 Nov 2018 19:11:19 GMT  
		Size: 456.5 KB (456456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44efb59fabe24905f659de4c769f38575715e4a34442299ebb35367e061af451`  
		Last Modified: Fri, 16 Nov 2018 19:11:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9efe14a7f01c686b5b682ecee3bda1b6db2cd2eff5e88fe2f64d45feabd214`  
		Last Modified: Fri, 16 Nov 2018 19:11:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d85cf3abfd9d17b99b5bc1e882ff4acba02d82aa10fee9fc6139d883de74fa`  
		Last Modified: Thu, 29 Nov 2018 10:09:31 GMT  
		Size: 72.2 MB (72210596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8703a15f4e53dc065e5feef1335f995a99e90189a3719f42ad35e4b3d8e819`  
		Last Modified: Thu, 29 Nov 2018 10:42:40 GMT  
		Size: 1.2 MB (1195851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9079f2f1e6723d8c35292586ad47496d10330cda860a936f3e490eb38f433a2f`  
		Last Modified: Thu, 29 Nov 2018 10:42:41 GMT  
		Size: 9.1 MB (9087962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc180902eafc82a8dfd903117ebbb65cf3c950565d0df2a0f3c78a568325cc6e`  
		Last Modified: Thu, 29 Nov 2018 10:42:40 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c657a0b0a1b443ce59812c0134347bb9946ec06e03fea648c75a695112585a6`  
		Last Modified: Thu, 29 Nov 2018 10:42:41 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:d899309ae7014c6bbadcd70653051388084571a5fa06e77bb091e8ff63507590
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107503814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b5f7c3318b8589cf8f3721bd4bad99b90531a4fa8e81fb52eabf13e162e324`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:49 GMT
ADD file:890668a9726ede3252622aea02e842f9f87317f42d3b82160296dd59421c2022 in / 
# Fri, 16 Nov 2018 13:02:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:39:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:39:24 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:39:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:39:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:39:28 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:39:29 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 13:25:08 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 13:26:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 29 Nov 2018 13:55:22 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 29 Nov 2018 13:55:23 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Nov 2018 13:55:23 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 29 Nov 2018 13:55:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 29 Nov 2018 13:56:04 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 29 Nov 2018 13:56:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Nov 2018 13:56:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Nov 2018 13:56:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Nov 2018 13:56:20 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Nov 2018 13:56:20 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Nov 2018 13:56:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Nov 2018 13:56:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:600e408e79d94fee598d85c5669b8f309933caa9c016cd9e9a318c30268351c8`  
		Last Modified: Fri, 16 Nov 2018 13:16:05 GMT  
		Size: 26.3 MB (26297719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5aacfb905f0966604c10307b4b5d648f29f3a78cd2d209b76d87feef537fb8`  
		Last Modified: Fri, 16 Nov 2018 20:05:24 GMT  
		Size: 432.3 KB (432320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e0d0b9ef307977084e07b8baf1baae1b2ebedd746167b00aec86b8beba86c9`  
		Last Modified: Fri, 16 Nov 2018 20:05:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5672f8ed0754cc07d97e5e4070eed41a3b868c034746be60805920a61b3814`  
		Last Modified: Fri, 16 Nov 2018 20:05:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2489f88de641c9d18b334243b3f0f0de9ca26ca82ad2dde9db88db173a1ff723`  
		Last Modified: Thu, 29 Nov 2018 13:33:08 GMT  
		Size: 70.5 MB (70549148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfb506f27fbb25279967695d917fcd29f9d9118ea8c1a5048c5325ef4971e96`  
		Last Modified: Thu, 29 Nov 2018 13:57:44 GMT  
		Size: 1.1 MB (1135167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc78997d9862411aa4c578361af0cb1da034e6eb743a51a019b270dd4a57b4`  
		Last Modified: Thu, 29 Nov 2018 13:57:45 GMT  
		Size: 9.1 MB (9087964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9732bac9ea6cc92de51c4c205a7ca4d07db743c62fc87897477d4a63fd1a2d2`  
		Last Modified: Thu, 29 Nov 2018 13:57:43 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760d8a8f09f1dc280a8cde9b64829239025f9b04893eb67c3310556af52eb2c8`  
		Last Modified: Thu, 29 Nov 2018 13:57:46 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; 386

```console
$ docker pull maven@sha256:e015db3ec70f520d24abef449fc50f5090d181be9707933c3a07844311fd7bad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138334402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68a7848f274a882202f2616c12aec97c80fc6e3ab61826ed747718402ca0f593`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 16 Nov 2018 12:27:08 GMT
ADD file:78e67c3bd2a85f8b06939a282c118818f354e8a045ae81ac223bbd8fd5a25ded in / 
# Fri, 16 Nov 2018 12:27:09 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 14:12:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:12:32 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:12:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:12:34 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:12:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 14:12:34 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 12:34:06 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 12:35:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 29 Nov 2018 14:51:26 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 29 Nov 2018 14:51:26 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Nov 2018 14:51:26 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 29 Nov 2018 14:51:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 29 Nov 2018 14:52:02 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 29 Nov 2018 14:52:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Nov 2018 14:52:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Nov 2018 14:52:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Nov 2018 14:52:05 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Nov 2018 14:52:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Nov 2018 14:52:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Nov 2018 14:52:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3141c499c103aa606c5213e7b03159670bbd0c82d7860890bf5f76d97255ab8a`  
		Last Modified: Thu, 15 Nov 2018 01:12:38 GMT  
		Size: 30.3 MB (30282191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1e2ab4ec11d6221b4b1147a4d872fcdf68f328ae78ed62fe70ed77e0dbf3a8`  
		Last Modified: Sat, 17 Nov 2018 14:55:24 GMT  
		Size: 466.3 KB (466285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871db67a3b796cc9923a0549b4fa26677f7e0f2f03b9abb8d62b33c5d3324bee`  
		Last Modified: Sat, 17 Nov 2018 14:55:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91b9f8e84f46849726fffe2fe4f7ad81701736123c46031f27c3a449c0be3f9`  
		Last Modified: Sat, 17 Nov 2018 14:55:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d632549ef414ded52740cf796c917663f0312075866a2109815ce1828245dc40`  
		Last Modified: Thu, 29 Nov 2018 12:41:26 GMT  
		Size: 97.2 MB (97176295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6179a4c4b67fb2ae8f74e18529354010edc462fa2f7ff40753bc5fa9f2841c50`  
		Last Modified: Thu, 29 Nov 2018 14:53:06 GMT  
		Size: 1.3 MB (1320212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ccd731f27df2b2923950ea18adfab3d6dc9ed48ccc0f67205a763aaa775eb6`  
		Last Modified: Thu, 29 Nov 2018 14:53:07 GMT  
		Size: 9.1 MB (9087928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78afa2564ae93f893537b033278ff0fd84a24c72044d337f918a05b66246d98`  
		Last Modified: Thu, 29 Nov 2018 14:53:06 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303834baf09fe83ef3ec1f7d921abb9248bd4f01e36f60b54cf1efe12c023968`  
		Last Modified: Thu, 29 Nov 2018 14:53:06 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

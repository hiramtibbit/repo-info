## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:bf9c405926a12b8a85f55c72ce4908527b632b06969bbd2e3ed6b2eae9d708c7
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
$ docker pull maven@sha256:ab48667e075e1cb1239ac2b6103cd2a75e4495eb5e859678b456dc2614e55387
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111417624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3030901d9f7b077e0d6d23a6eb9bd2f259f7d5544f9a663e9c42a66dad3af67b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 29 Dec 2018 09:50:38 GMT
ADD file:320775ecef6e4af88f2ae8e6e0218006206519d8b54df639063269cb7aa38441 in / 
# Sat, 29 Dec 2018 09:50:39 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:36:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 10:36:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 10:37:00 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 10:37:00 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 10:37:00 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 10:37:01 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 10:38:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 14:18:46 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 29 Dec 2018 14:18:47 GMT
ARG USER_HOME_DIR=/root
# Sat, 29 Dec 2018 14:18:48 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 29 Dec 2018 14:18:48 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 29 Dec 2018 14:19:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:20:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 29 Dec 2018 14:20:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 29 Dec 2018 14:20:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 29 Dec 2018 14:20:08 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 29 Dec 2018 14:20:09 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 29 Dec 2018 14:20:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 29 Dec 2018 14:20:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:79f818f2c6b1cf13b6d4022f7ab9a48b97fe7b3041abbab5fc7396d53791fa60`  
		Last Modified: Sat, 29 Dec 2018 10:00:17 GMT  
		Size: 28.5 MB (28464862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e49500d82d6f827e1717f039ac3297578216194fe6fb18748a49fe71d0602ef`  
		Last Modified: Sat, 29 Dec 2018 10:45:17 GMT  
		Size: 456.5 KB (456507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dae7a5a717d8511578fd71848badaa38d54cb49f313c9e0139295e45421a2ff`  
		Last Modified: Sat, 29 Dec 2018 10:45:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2f3b8df223449ed8aa4a37c84402437917ab5e5ac0dd8744c57d6210a13961`  
		Last Modified: Sat, 29 Dec 2018 10:45:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc98e43c895825417dc0a67acfe922e3d1e2dfadd4eee9088aad4e38e3047de9`  
		Last Modified: Sat, 29 Dec 2018 10:45:32 GMT  
		Size: 72.2 MB (72210926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3335ff2e8d6dc82938d4525bf13ae64299e89605b1c44a9f83c1bc7d242e20`  
		Last Modified: Sat, 29 Dec 2018 14:21:42 GMT  
		Size: 1.2 MB (1195893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39601435221f0956f73bc76a46c8e960bf2347a9d95083d24cbbfec453aeeda`  
		Last Modified: Sat, 29 Dec 2018 14:21:43 GMT  
		Size: 9.1 MB (9087947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c349faba71b51ca4307df1b71d199de78fdcf2432a4f95f2e13365953162a18`  
		Last Modified: Sat, 29 Dec 2018 14:21:42 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95fc8cb99c0bdbdd54c451b62695917218bf7e4ca98d2e1cc62aaa51e790e9`  
		Last Modified: Sat, 29 Dec 2018 14:21:42 GMT  
		Size: 360.0 B  
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
$ docker pull maven@sha256:28ff18f433232693507fc9cfaa40fffde46a475e240caee5f6a4515f007b2a05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138352571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9359faf1df1348cb4388f726a3fff7c1572bafe16c0f4aac347ad5f99df5b068`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 29 Dec 2018 11:44:18 GMT
ADD file:1a212513c2c6d6c2ebcdd2881510fd0e2497570f41edeea42cc4def19dfc6dcf in / 
# Sat, 29 Dec 2018 11:44:19 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:05:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 21:05:12 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 21:05:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 21:05:13 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 21:05:13 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 21:05:13 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 21:05:14 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 21:08:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 05:15:44 GMT
ARG MAVEN_VERSION=3.6.0
# Sun, 30 Dec 2018 05:15:44 GMT
ARG USER_HOME_DIR=/root
# Sun, 30 Dec 2018 05:15:44 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sun, 30 Dec 2018 05:15:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sun, 30 Dec 2018 05:18:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:18:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sun, 30 Dec 2018 05:18:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sun, 30 Dec 2018 05:18:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sun, 30 Dec 2018 05:18:39 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Sun, 30 Dec 2018 05:18:39 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sun, 30 Dec 2018 05:18:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sun, 30 Dec 2018 05:18:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ff487be3b1881d864168a704e636a085151c5b169d9417e82a6370e2b4423a9d`  
		Last Modified: Sat, 29 Dec 2018 12:06:40 GMT  
		Size: 30.3 MB (30298094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb3fc7f47bf20412e3f6ec9a5aa56bcf8843c3330fb3f53f9091b06b806718c`  
		Last Modified: Sat, 29 Dec 2018 21:24:43 GMT  
		Size: 466.3 KB (466335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9090822fd4d3611ef4919d18c33365183943507df89b1fe2fec9528f2b67469`  
		Last Modified: Sat, 29 Dec 2018 21:24:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25930c678a2f712d3547b7ea3da6ff7118eb2a0d2a1e2df4dd6c3c98b589a9a8`  
		Last Modified: Sat, 29 Dec 2018 21:24:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2875149f38ddaa87b475281987fbabea1a0d9ded525f19cf0d8efc048780df0f`  
		Last Modified: Sat, 29 Dec 2018 21:24:59 GMT  
		Size: 97.2 MB (97178506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d89d4f882064bbed43d963f3d1884409c97873ff70490cf4e844ebea0aa8e2`  
		Last Modified: Sun, 30 Dec 2018 05:19:56 GMT  
		Size: 1.3 MB (1320226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b187ff6b7368ff995942e5054979f2378b9a5833f1e74fba6f77630b10cbe0`  
		Last Modified: Sun, 30 Dec 2018 05:19:57 GMT  
		Size: 9.1 MB (9087925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a4d32384a6ba1f7a35484b155168c3e18b8dfcd7b0cf2634e5d5e3091bf2e5`  
		Last Modified: Sun, 30 Dec 2018 05:19:56 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a05d7f6afb3502f3d322666066052082db15fad55b21f94f9301d30ec27669d`  
		Last Modified: Sun, 30 Dec 2018 05:19:56 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

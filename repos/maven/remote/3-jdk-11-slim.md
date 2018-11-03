## `maven:3-jdk-11-slim`

```console
$ docker pull maven@sha256:186807c0ed6775ccd9a34a4eea88b9c469e2b5f6248e064de8d02a8f8479b396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `maven:3-jdk-11-slim` - linux; amd64

```console
$ docker pull maven@sha256:53ceaf3eddb0c7f21be3e8ba1417813f93f17996f09af0dd98c022befda60ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333991882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6d5735f3bdc8148f094748d801f95be330be848df42b7be6d7136dcf753958`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:23:12 GMT
ADD file:8934168eda55976e44a0e80932dc79e1433f1c2ee5a90ed28ba2b8b55b60b7db in / 
# Mon, 15 Oct 2018 23:23:12 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:17:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:17:31 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:17:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:17:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:17:33 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Oct 2018 00:00:43 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 19 Oct 2018 00:00:43 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 00:01:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 00:01:26 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:23:03 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:23:03 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:23:03 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:23:03 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:23:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:23:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:23:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:23:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:23:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:23:22 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:23:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:23:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:23:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cca8b8cf2f157d13678401181406e5baf05ab424a04fb8190f9e3816c5db1e29`  
		Last Modified: Mon, 15 Oct 2018 23:32:22 GMT  
		Size: 26.3 MB (26284346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cf705e89452ccf724ae251641ad26bc6e8162141b3a88b688c959d8872f905`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 460.6 KB (460644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f6961c9eb5dddcc3a449439adc5c4a03e716794daec2a41900f7fda4fb492a`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805a6a4d0333bf4fa32e15672a04b71ef96caa25e163e085b4bd72831d2792b0`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe824bb10542643a9f3e71319e68e39d64172fe0b8c4d6167c5ec005372c1d68`  
		Last Modified: Fri, 19 Oct 2018 00:12:49 GMT  
		Size: 296.0 MB (295979758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c550156b0fa3c5a454250b3c07fddf55da3b755b74659489d37023bbb8b38259`  
		Last Modified: Fri, 02 Nov 2018 22:30:51 GMT  
		Size: 2.2 MB (2177506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985dbee95e65dfa93448e55509829ebd0b6d6eb97f091840434b4e5d83fcbfd1`  
		Last Modified: Fri, 02 Nov 2018 22:30:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4bc3a09bdea1cdad7fc9862a8d41ebbdd11ee278995c7179eef821def86dbf`  
		Last Modified: Fri, 02 Nov 2018 22:30:53 GMT  
		Size: 9.1 MB (9087926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6627339deefb5a915bf9cfc6ab306c6655715b9e2ccba1af515804bf3184f4`  
		Last Modified: Fri, 02 Nov 2018 22:30:50 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7cf47eb794e10778f6453f50d939ec120e3f11d1ccddaf1195b08d3629613`  
		Last Modified: Fri, 02 Nov 2018 22:30:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:b67b77eb23efdd708eaf50b8a74d3cca64ed913189c0b3cf38afc69a0e506143
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259956509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c641780a3de6f9d230e676ab34e4bcfe4790f3821c70d5983afd47839c7fcf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:37 GMT
ADD file:570ffab8651ae2f95dabaf4118be374c3024032a1baee5b1a2bcc74eb193120a in / 
# Tue, 16 Oct 2018 08:53:40 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:09:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:09:19 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:09:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:09:22 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:09:22 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Oct 2018 09:03:16 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 19 Oct 2018 09:03:17 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 09:04:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 09:04:06 GMT
CMD ["jshell"]
# Sat, 03 Nov 2018 08:49:38 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 03 Nov 2018 08:49:38 GMT
ARG USER_HOME_DIR=/root
# Sat, 03 Nov 2018 08:49:38 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 03 Nov 2018 08:49:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 03 Nov 2018 08:49:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 03 Nov 2018 08:49:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Sat, 03 Nov 2018 08:50:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 03 Nov 2018 08:50:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 03 Nov 2018 08:50:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 03 Nov 2018 08:50:06 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 03 Nov 2018 08:50:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 03 Nov 2018 08:50:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 03 Nov 2018 08:50:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0dc1d0ed8db290aadec5576efe18a0adcaf918c852134583731d227ddf80a2f0`  
		Last Modified: Tue, 16 Oct 2018 09:02:45 GMT  
		Size: 24.1 MB (24051457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86907a04515df0ed5fa03ed01f311d9b37aef035b26e4cb22b16fd2c84be0cd`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 452.5 KB (452526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a9409761fd777958d0c1a55090920b613d3204c40b30d5f65359bf11dd876`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22031b689bbc2e748ea0f850bfe940e07c0b42fa22fae3e13c76cd6dd26282c`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a921e48abc113ad5d986cdfb48c5810441e19396f0f2c1cd43d400dd510ad02e`  
		Last Modified: Fri, 19 Oct 2018 09:10:22 GMT  
		Size: 224.3 MB (224325006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a25b3763de2c7ef8871272c891c803735bf389ab7ff80402800de3dbea7edd`  
		Last Modified: Sat, 03 Nov 2018 08:54:24 GMT  
		Size: 2.0 MB (2037868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc0e7a98386a22c85cbcf21582addb8f8aac686b03b5d6480344fec39f4a612`  
		Last Modified: Sat, 03 Nov 2018 08:54:23 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e96967aeba01e9767048be95e87070001c7cc62994952439dfa9373a63bd755`  
		Last Modified: Sat, 03 Nov 2018 08:54:25 GMT  
		Size: 9.1 MB (9087951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fbb3032ca4e2163c7a1edb9005258f420c2e77694909c33cdf8c7a6bf6acc5`  
		Last Modified: Sat, 03 Nov 2018 08:54:23 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9513653b7056d35c4ffe105ea37f462c7177ae92a6c29bb7a440342333e257f7`  
		Last Modified: Sat, 03 Nov 2018 08:54:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:829474377e287aa0a75204d3e3ae6b0d203843d003fa398ebb0ba9f46090f390
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.9 MB (314918274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:607af1275ef686319242a68a30480512862a901065f86b7ac64be5c8a0ce6fa4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Oct 2018 08:41:46 GMT
ADD file:d0688d9602a1b4a4b7d76b9bef8e7642a9d7c9ec232bc531f7ed22bcf934a194 in / 
# Tue, 16 Oct 2018 08:41:47 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:08:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:08:10 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:08:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:08:14 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:08:14 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Oct 2018 09:22:17 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 19 Oct 2018 09:22:18 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 09:24:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 09:24:07 GMT
CMD ["jshell"]
# Sat, 03 Nov 2018 08:56:56 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 03 Nov 2018 08:56:57 GMT
ARG USER_HOME_DIR=/root
# Sat, 03 Nov 2018 08:56:57 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 03 Nov 2018 08:56:58 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 03 Nov 2018 08:57:21 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 03 Nov 2018 08:57:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Sat, 03 Nov 2018 08:57:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 03 Nov 2018 08:57:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 03 Nov 2018 08:57:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 03 Nov 2018 08:57:46 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 03 Nov 2018 08:57:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 03 Nov 2018 08:57:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 03 Nov 2018 08:57:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:740c5c114e1ef0446d23c842ba1b2ae124f77e56cc972b34e1d7b8054530feae`  
		Last Modified: Tue, 16 Oct 2018 08:47:56 GMT  
		Size: 24.6 MB (24597774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84f3fc009d97c128e0f09549ee7e5473d477e2dc4338fad214ef475e540233f`  
		Last Modified: Tue, 16 Oct 2018 09:24:18 GMT  
		Size: 446.7 KB (446685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf99f9a7918309f4245a7de721e2f8b352b140fc264eaf04ce2534f43ef572e`  
		Last Modified: Tue, 16 Oct 2018 09:24:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bee06d5cca74158790b60b98594bc63b08457eec590f7b8f2d14db53aa433e4`  
		Last Modified: Tue, 16 Oct 2018 09:24:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21fba6e34a6af66c421fa14f63ef5dc455b1662d9793dc511f6ae4ba812d2ad`  
		Last Modified: Fri, 19 Oct 2018 09:40:52 GMT  
		Size: 278.6 MB (278611910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d637328b6829e66c1a62fdf1e276e6ee448709998c9ffacac6b3be5ac78cc79`  
		Last Modified: Sat, 03 Nov 2018 09:05:35 GMT  
		Size: 2.2 MB (2172276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dab54d46aa24452873beffddb351e8680b5cedc90f745b05dc214afc7dbc50`  
		Last Modified: Sat, 03 Nov 2018 09:05:34 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e3323015073ce49156ee6d44f31098d8c4780dc5ad137008d534b0aa045eb2`  
		Last Modified: Sat, 03 Nov 2018 09:05:36 GMT  
		Size: 9.1 MB (9087926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5043e46b5b34ee57d3be208f2e7c75151248e88f6c63d1168306b3898d5c2bcb`  
		Last Modified: Sat, 03 Nov 2018 09:05:35 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ea37932962a02cbfc621e54375342df11a9714a32f2fa2b2b03d8e737a0e56`  
		Last Modified: Sat, 03 Nov 2018 09:05:35 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:026d12eff83fb79202e2f6b80ae2f18f4826ed90542dc76551609c9ba6a1336d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.8 MB (305826283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86dbb06ea79e4ff763f5142d14e3d29ca74f0692a29d0b982e8e4b929726bd7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:22 GMT
ADD file:4a1102b2046efdcd1f4cb19c398f25da11638c8c49a1827f1b881ad6867ebbff in / 
# Tue, 16 Oct 2018 08:19:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:31:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:31:56 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:31:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 08:32:01 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 08:32:02 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Oct 2018 08:46:39 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 19 Oct 2018 08:46:46 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 08:48:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 08:48:16 GMT
CMD ["jshell"]
# Sat, 03 Nov 2018 08:36:02 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 03 Nov 2018 08:36:03 GMT
ARG USER_HOME_DIR=/root
# Sat, 03 Nov 2018 08:36:03 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 03 Nov 2018 08:36:04 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 03 Nov 2018 08:36:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 03 Nov 2018 08:36:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Sat, 03 Nov 2018 08:36:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 03 Nov 2018 08:36:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 03 Nov 2018 08:36:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 03 Nov 2018 08:36:32 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 03 Nov 2018 08:36:33 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 03 Nov 2018 08:36:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 03 Nov 2018 08:36:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6dc81b3f9d79f32bf47395e83047b0ed1a4f50dd5b0bd0146639a798ebd8ebec`  
		Last Modified: Tue, 16 Oct 2018 08:28:04 GMT  
		Size: 29.0 MB (28969507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c487affc920bad5b2490584dee0d79473af49a42b6e1b9e2ee30314571db800`  
		Last Modified: Tue, 16 Oct 2018 08:49:17 GMT  
		Size: 458.2 KB (458191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7718a9ec1678427ab65cc2d2d4b98fa730ceab793bea6cd818926d342f5ba6e0`  
		Last Modified: Tue, 16 Oct 2018 08:49:16 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42a68c07dc7718af9889cf436ed2a9d27d042c40779db9696d226da87bc1f6f`  
		Last Modified: Tue, 16 Oct 2018 08:49:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc89cbafba82aa1a9858e451339d4273a62667a835f7daaf5b44816b865d31a`  
		Last Modified: Fri, 19 Oct 2018 08:59:11 GMT  
		Size: 264.8 MB (264828174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497d0e9ce1f8707863c987c12952f82c1f019710dc1df1cfe67ccfb76383ba69`  
		Last Modified: Sat, 03 Nov 2018 08:46:44 GMT  
		Size: 2.5 MB (2480755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5887c0a4527d764a2f8d828e8e224424baa401ec06025c24bd35834fb4e0304f`  
		Last Modified: Sat, 03 Nov 2018 08:46:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b376f1f7d3a67708559a7cd8c02e68a12f8ed7b5f5b399b966850a151c806e`  
		Last Modified: Sat, 03 Nov 2018 08:46:45 GMT  
		Size: 9.1 MB (9087957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7702013cae5b0779e20adf2235d452e34ccd418e3477c5bc8f2ffb8ef14dcf96`  
		Last Modified: Sat, 03 Nov 2018 08:46:43 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4735a09ce4653773c3e2a6063ecf913586af194e1e93f3977986d882927478`  
		Last Modified: Sat, 03 Nov 2018 08:46:43 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

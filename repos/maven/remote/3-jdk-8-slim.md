## `maven:3-jdk-8-slim`

```console
$ docker pull maven@sha256:bfca53e284ec65ce3106523f073b4bc09317f22f2315dcfd6e52afb7cf54533a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:2f2a7671c17a2e40bd42c72476aeb6ddbfb2b5ed3a318e87145a3d43247c001e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103298407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414ea0973ca61550ced4b2fc687ae13332cc55c71393bdd9ba88341e5bee9106`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:34:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:34:55 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:34:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 05:34:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 05:34:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 05:34:57 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 05:34:57 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 05:34:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 05:35:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 05:35:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 12 Dec 2017 08:04:28 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 12 Dec 2017 08:04:28 GMT
ARG USER_HOME_DIR=/root
# Tue, 12 Dec 2017 08:04:28 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 12 Dec 2017 08:04:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 12 Dec 2017 08:04:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:04:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 12 Dec 2017 08:04:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 12 Dec 2017 08:04:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 12 Dec 2017 08:05:34 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 12 Dec 2017 08:05:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 12 Dec 2017 08:05:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 12 Dec 2017 08:05:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf3a7df1b51f6278abe3864a0d83f04c9b9d4885b4d64cf68cb40ac650f91a5`  
		Last Modified: Tue, 12 Dec 2017 05:49:02 GMT  
		Size: 454.8 KB (454819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c98005fcff8d144c0e901a6f8b6c20f7aab34f1c93f9d8679f342cd4640c5c`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dcc90226db797991bfa856bcbec2e3a60afa66c263912ec507073813bbe945`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23649b2102b013e3493311cafe0d31f68b2057584f631154722e6b2b74a7202d`  
		Last Modified: Tue, 12 Dec 2017 05:49:14 GMT  
		Size: 67.7 MB (67665559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6f0e3cd819e2fa1e5e82ece54f3a80242398bd69b658a8123c1ec054eff071`  
		Last Modified: Tue, 12 Dec 2017 05:49:01 GMT  
		Size: 272.2 KB (272156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b832f08af6efa1d5385074327d55ecbe022f7a85aea0c2fa3371857e4afe6e`  
		Last Modified: Tue, 12 Dec 2017 08:06:27 GMT  
		Size: 3.5 MB (3534844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85571d8350043e03772f6967ae6cb34a8faca859922443dd0fae978ab04e29aa`  
		Last Modified: Tue, 12 Dec 2017 08:06:28 GMT  
		Size: 8.9 MB (8883832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c8abdc6384767b4c17a7e3f2445768e3a1adc101726aa30877c41126a7615b`  
		Last Modified: Tue, 12 Dec 2017 08:07:43 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11ca4afc9f879f871efbda9cf15873816dc5900007480292705570e8b7ffff2`  
		Last Modified: Tue, 12 Dec 2017 08:07:41 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:cea1c0031a730f6006873ff08dff16c9e7c5e49b2cb1a4538c580e10b8717ad8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89802638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdcff39c6960820454f2e4452ba69d2a927f97c6f42efc927abf0ae90fa49133`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:35:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:35:32 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 23:35:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 23:35:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 23:35:36 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 23:35:37 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 23:35:37 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 23:35:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 23:36:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 23:36:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Dec 2017 02:12:12 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 13 Dec 2017 02:12:12 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Dec 2017 02:12:12 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 13 Dec 2017 02:12:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 13 Dec 2017 02:12:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 02:12:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Dec 2017 02:12:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Dec 2017 02:12:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Dec 2017 02:14:20 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Dec 2017 02:14:21 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Dec 2017 02:14:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Dec 2017 02:14:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65052ec7ef0bdb21ddce084fc2ca3ebb905b33a9a818895001dd55d624efe03`  
		Last Modified: Tue, 12 Dec 2017 23:54:39 GMT  
		Size: 447.6 KB (447650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07680ae7da06d4a0f024421827636cf16555c42f45227a88ad625c8ef912c759`  
		Last Modified: Tue, 12 Dec 2017 23:54:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58646084886efde46909359e34fd12541f48ec6173c42b5aa4e27cb0deb8813c`  
		Last Modified: Tue, 12 Dec 2017 23:54:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1039805af68d649d1a76243e864abff55de47e7a61e30a226fd2ca5a70e461`  
		Last Modified: Tue, 12 Dec 2017 23:54:54 GMT  
		Size: 56.0 MB (56009065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225c84ecf0f9777f6518ef8edf1a269bc6aca2b504f614c655f0e1db4585f68c`  
		Last Modified: Tue, 12 Dec 2017 23:54:39 GMT  
		Size: 272.2 KB (272197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd706cdc04bbfe7c5414f93eb12fb6bb3a36c1412a814db11471d4ef6d7eabfb`  
		Last Modified: Wed, 13 Dec 2017 02:15:42 GMT  
		Size: 3.0 MB (3027731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b2cbe73e152cf227a908992c4550b71c1094f53e7681bbbacc190c1931e354`  
		Last Modified: Wed, 13 Dec 2017 02:15:44 GMT  
		Size: 8.9 MB (8883878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f0998118bb32a2a7c0f40452b1381438ad87795772a0bd9a57ce69332890b5`  
		Last Modified: Wed, 13 Dec 2017 02:17:33 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635ceb1f9e80412b8a9e4bdb8bb86633bbf2d59b8d9ed0d971976e742e26f017`  
		Last Modified: Wed, 13 Dec 2017 02:17:33 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:da7ac88c1e080d8a5fbf43c37b8196e6f42f20a5fb451f27f33bb152f289d7fe
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87243565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024a5109a1a96d658f821fabaf4144a18c9e21aedf2a88c626ce5af2584b9b14`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:05:30 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:05:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:05:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:05:33 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 23:05:34 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 23:05:34 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 23:05:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 23:06:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 23:06:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 31 Oct 2017 05:13:07 GMT
ARG MAVEN_VERSION=3.5.2
# Tue, 31 Oct 2017 05:13:07 GMT
ARG USER_HOME_DIR=/root
# Tue, 31 Oct 2017 05:13:07 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Tue, 31 Oct 2017 05:13:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Tue, 31 Oct 2017 05:13:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Tue, 31 Oct 2017 05:13:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 31 Oct 2017 05:13:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 31 Oct 2017 05:13:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Dec 2017 06:13:15 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Dec 2017 06:13:15 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 07 Dec 2017 06:13:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Dec 2017 06:13:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6226915187b9d61d290e04413a4ccdf021b5e0fc267ba8129cc0126cab1f1a93`  
		Last Modified: Mon, 09 Oct 2017 23:24:02 GMT  
		Size: 430.6 KB (430580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98b9b3c90ff2ee65efc9f88b2383f6f1760df78bcd965fa0b22e001977eaf96`  
		Last Modified: Mon, 09 Oct 2017 23:24:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377cafaae0c7321b0549f3949d78826675109fe908cb8521f39fe433ccfced7c`  
		Last Modified: Mon, 09 Oct 2017 23:24:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b54cd082813272ec0eee997651297edb9bab1e57b36937aeb96ef819318ed1e`  
		Last Modified: Mon, 09 Oct 2017 23:24:18 GMT  
		Size: 55.5 MB (55499788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc34b3797b251df09cbf29653d3faf2fabcdf80cb0f026c5bd5a61c741cea657`  
		Last Modified: Mon, 09 Oct 2017 23:24:02 GMT  
		Size: 272.2 KB (272179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b3a95e956226b3f89edec2bd827a4913d931e88f5792a85fd84f48f5152822`  
		Last Modified: Tue, 31 Oct 2017 05:15:15 GMT  
		Size: 2.9 MB (2878542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829ae10841d96870ea761433dead5fea02313e496f8d74a8ff1fdd7cd8f94359`  
		Last Modified: Tue, 31 Oct 2017 05:15:15 GMT  
		Size: 8.9 MB (8883849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b76d255aa4d9abf6fc4546ec98f980eda66fa777afc6c8bf4266cba480a389`  
		Last Modified: Thu, 07 Dec 2017 06:15:02 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2387797f70868a74fa186e3a03ff75c53f13db26961506df1a0cf9e5ad450ea5`  
		Last Modified: Thu, 07 Dec 2017 06:15:03 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e08cb91b1e43475d911d23589f021034e528c927e56a79bec60101e16732f4f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90350866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa60e5195ebb109a2fd1d1caccdefde354b5b3fc6a4553f05daa534dfbfa1bb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 02:17:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 02:17:38 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 02:17:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 13 Dec 2017 02:17:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 13 Dec 2017 02:17:58 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 13 Dec 2017 02:18:14 GMT
ENV JAVA_VERSION=8u151
# Wed, 13 Dec 2017 02:18:15 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 13 Dec 2017 02:18:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 13 Dec 2017 02:19:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Dec 2017 02:19:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Dec 2017 03:07:26 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 13 Dec 2017 03:07:29 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Dec 2017 03:07:30 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 13 Dec 2017 03:07:30 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 13 Dec 2017 03:07:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 03:07:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Dec 2017 03:08:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Dec 2017 03:08:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Dec 2017 03:10:21 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Dec 2017 03:10:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Dec 2017 03:10:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Dec 2017 03:10:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c64863fb48f3c775969ad8bd727b09f3c8f60396a469d5c70006c3ba2a3aa5`  
		Last Modified: Wed, 13 Dec 2017 02:27:43 GMT  
		Size: 440.8 KB (440783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bc6f700f2b94cbba0ece43bb24936ab2e94ceae7f46573d3373c9551bbf7fe`  
		Last Modified: Wed, 13 Dec 2017 02:27:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba1aa71856da230cafe9c4121837cf6fd0f5c2c17d9c98ac22c767e7cf6e668`  
		Last Modified: Wed, 13 Dec 2017 02:27:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d50e0c36bbc55f6e97bb3949542e2b7b728a8d2b7eeb862ba6c29a9110b45d`  
		Last Modified: Wed, 13 Dec 2017 02:28:01 GMT  
		Size: 57.4 MB (57420690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daa48e4cad17c61427d44b0e57df85d98d968111fd10906090afe029497fa26`  
		Last Modified: Wed, 13 Dec 2017 02:27:43 GMT  
		Size: 272.1 KB (272096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a982d0bb79b223b9a8d221b03c942517f84c356ab66b3cd5671a4566e53dfbaa`  
		Last Modified: Wed, 13 Dec 2017 03:11:42 GMT  
		Size: 3.0 MB (3000696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7acbd5e381e485eeea746d1175892d7dda3bf6aa3bde4be72b2bba936f00ea`  
		Last Modified: Wed, 13 Dec 2017 03:11:43 GMT  
		Size: 8.9 MB (8883843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876f8b51f212a4013357bd4df4449f223f71ec377b642f61c450038525afb20f`  
		Last Modified: Wed, 13 Dec 2017 03:12:47 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6362c5f145e9e614ff6332357aeed2a390590682668c6848742574516da50918`  
		Last Modified: Wed, 13 Dec 2017 03:12:47 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; 386

```console
$ docker pull maven@sha256:cf6aeada06f5a7cc0ec142ccd90f61eb53a245b687685c7c4901f9709ac26169
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103016435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f520763d487601940369078f320bc549c6be4bf11eab4cc328639368a4805b06`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 18:49:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:49:16 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 18:49:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 18:49:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 18:49:26 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 18:49:26 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 18:49:26 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 18:49:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 18:49:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 18:50:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 13 Dec 2017 20:52:32 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 13 Dec 2017 20:52:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Dec 2017 20:52:33 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 13 Dec 2017 20:52:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 13 Dec 2017 20:52:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 20:52:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Dec 2017 20:52:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Dec 2017 20:52:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Dec 2017 21:01:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Dec 2017 21:01:12 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Dec 2017 21:01:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Dec 2017 21:01:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594d2ff3a2959654cb056a6cc499d910f29f37321940fdb0f60d119c31528ac6`  
		Last Modified: Tue, 12 Dec 2017 19:38:43 GMT  
		Size: 463.5 KB (463470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32efb0ce68171bdf8e5e876db66fc50811b491dabc077b3d35172f1286b4793a`  
		Last Modified: Tue, 12 Dec 2017 19:38:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02613bb9328128d056d071d315402c64aedb2c7b730cf211f79713ce7415e73`  
		Last Modified: Tue, 12 Dec 2017 19:38:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d59d15f943d5862977a0fb6232629cb579ea6792a18b6fa807105269e8282a3`  
		Last Modified: Tue, 12 Dec 2017 19:39:01 GMT  
		Size: 66.8 MB (66826472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ebaace5af5a12278fc2e0fc17e414de033172e7065d4d9083f8fdb6505e0a1`  
		Last Modified: Tue, 12 Dec 2017 19:38:43 GMT  
		Size: 272.2 KB (272156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4fdc8568ad04e8395b7d7da036355935be8d12320ae258d61accc34270d470`  
		Last Modified: Wed, 13 Dec 2017 21:13:43 GMT  
		Size: 3.4 MB (3446537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa05ac878cdc8e011c6888cd250d12e69d2506fae1e36b1c0dc8303afe33713b`  
		Last Modified: Wed, 13 Dec 2017 21:13:43 GMT  
		Size: 8.9 MB (8883853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa231345f0c0cbb0f37d9725d286d2087c6e81c09f0e356f4deae9563e225094`  
		Last Modified: Wed, 13 Dec 2017 21:44:05 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0b7d790061b3db369872f993ef6f1ef6697cbfaeb31f2a58e95d37e42fdfb9`  
		Last Modified: Wed, 13 Dec 2017 21:44:05 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:c2b5eda6746a091b7e6e005212623d1980d36ee791b89ff3a92b25a042a496de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.5 MB (93528123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4e1d628289f524367b0fe01bd2e8f33a2be2340539991a750c292c6b933a95`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:47:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:48:00 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 03:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 03:48:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 03:54:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 03:54:11 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 03:54:12 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 03:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 03:58:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 03:58:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 08:50:56 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 08:50:58 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 08:51:02 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 08:51:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 08:52:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:52:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 08:52:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 08:52:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 08:56:27 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 08:56:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 08:56:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 08:56:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db1eeca3bf1292993653ef54f89c085f0b33fd3db68eca1e8f4657565618b9d`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 449.8 KB (449803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa77403ca9aa744a957e13337b03002f2cdc936bd9d47b0f0ebb37e2be5cd5a`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfac90f183e02ebd54abdfdc0f57da55be8fb19f3f1d1fd6e9f41a19cbc2b68`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db0b5c0c56a820154b0f8346cf68f693459b7535918482fb488988fb71186a0`  
		Last Modified: Thu, 15 Feb 2018 04:39:30 GMT  
		Size: 58.0 MB (57954935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4fb7130a5ce7a2d1ec8695936756fec7dc92c822622dbdec65d2dfcc515a4d`  
		Last Modified: Thu, 15 Feb 2018 04:39:18 GMT  
		Size: 272.0 KB (272032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1865056d4ba2b0a70f8f51c8ec603f35559352ae5461954122cdf1a9a5011d0`  
		Last Modified: Thu, 15 Feb 2018 08:59:52 GMT  
		Size: 3.2 MB (3212890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a545834ad8803cbe4e53a5ed28e9c78ad31ae25bc0b1354f7f7d78be29a705`  
		Last Modified: Thu, 15 Feb 2018 08:59:52 GMT  
		Size: 8.9 MB (8883873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4796e7247a78d22da15fd316c9734f54a7cb53e9390a1bf1d8e50cc2cd91d784`  
		Last Modified: Thu, 15 Feb 2018 09:00:46 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fb31a5edbb17c4863a97492173290c065240ea3bd7863732a978c16682dfe3`  
		Last Modified: Thu, 15 Feb 2018 09:00:46 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; s390x

```console
$ docker pull maven@sha256:9f11bb7221f49b2b6defdfc117dea7bc8fe41c7009fae79412265faf539ee098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92423551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ffba4e3aa819faf3333b84b9d515aada886501096a8610a966b74a159a0946a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 08:22:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:22:20 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:22:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 08:22:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 08:24:13 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 08:24:13 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 08:24:13 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 08:24:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 08:24:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 08:24:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 12:55:02 GMT
ARG MAVEN_VERSION=3.5.2
# Thu, 15 Feb 2018 12:55:02 GMT
ARG USER_HOME_DIR=/root
# Thu, 15 Feb 2018 12:55:03 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Thu, 15 Feb 2018 12:55:03 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Thu, 15 Feb 2018 12:55:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:55:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Feb 2018 12:55:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Feb 2018 12:55:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Feb 2018 12:56:28 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Feb 2018 12:56:28 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Feb 2018 12:56:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Feb 2018 12:56:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d67d172c9321aa49eb0a1d6d567589ebbb43ae06cb60946c8c790f0b23af5a`  
		Last Modified: Thu, 15 Feb 2018 08:41:51 GMT  
		Size: 465.7 KB (465704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3845a6b44aa77b11f0301052f645fa81073ac3c5d5f847ded838e49fa24afbf`  
		Last Modified: Thu, 15 Feb 2018 08:41:50 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ad6593d36edf37f2b65e87eecaafacc190f019fc017a58f7e41377680146dc`  
		Last Modified: Thu, 15 Feb 2018 08:41:50 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52db04bad48ebb9e5799593b3d9f88fb0b06b2c084a7fee6fc22c0804d849b90`  
		Last Modified: Thu, 15 Feb 2018 08:43:28 GMT  
		Size: 57.1 MB (57130160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b12a286f3e938acee6764fc7718b00d78c1059fdd23484da8f70a5976b592c`  
		Last Modified: Thu, 15 Feb 2018 08:43:20 GMT  
		Size: 272.2 KB (272155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f745e07e9fb60846b241fa8dc9adfdc766a8462c1b03f641e26051eca4bb3cd9`  
		Last Modified: Thu, 15 Feb 2018 12:57:43 GMT  
		Size: 3.3 MB (3321399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58c45db6c0399e410fb75b0824b846e7fdf388a7dc29f7f3a26b32bc8731584`  
		Last Modified: Thu, 15 Feb 2018 12:57:43 GMT  
		Size: 8.9 MB (8883829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd4f970d0b1477307741ab0c130601c2df0edaf1111ed6a35b21978940d3b8f`  
		Last Modified: Thu, 15 Feb 2018 12:58:29 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bb975dd5c294af108f0d913048ca63502a4976c943d4fb28241e876e7f1f24`  
		Last Modified: Thu, 15 Feb 2018 12:58:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

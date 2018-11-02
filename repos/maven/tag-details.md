<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `maven`

-	[`maven:3`](#maven3)
-	[`maven:3.6`](#maven36)
-	[`maven:3.6.0`](#maven360)
-	[`maven:3.6.0-alpine`](#maven360-alpine)
-	[`maven:3.6.0-ibmjava`](#maven360-ibmjava)
-	[`maven:3.6.0-ibmjava-8`](#maven360-ibmjava-8)
-	[`maven:3.6.0-ibmjava-8-alpine`](#maven360-ibmjava-8-alpine)
-	[`maven:3.6.0-ibmjava-alpine`](#maven360-ibmjava-alpine)
-	[`maven:3.6.0-jdk-10`](#maven360-jdk-10)
-	[`maven:3.6.0-jdk-10-slim`](#maven360-jdk-10-slim)
-	[`maven:3.6.0-jdk-11`](#maven360-jdk-11)
-	[`maven:3.6.0-jdk-11-slim`](#maven360-jdk-11-slim)
-	[`maven:3.6.0-jdk-12`](#maven360-jdk-12)
-	[`maven:3.6.0-jdk-12-alpine`](#maven360-jdk-12-alpine)
-	[`maven:3.6.0-jdk-7`](#maven360-jdk-7)
-	[`maven:3.6.0-jdk-7-alpine`](#maven360-jdk-7-alpine)
-	[`maven:3.6.0-jdk-7-slim`](#maven360-jdk-7-slim)
-	[`maven:3.6.0-jdk-8`](#maven360-jdk-8)
-	[`maven:3.6.0-jdk-8-alpine`](#maven360-jdk-8-alpine)
-	[`maven:3.6.0-jdk-8-slim`](#maven360-jdk-8-slim)
-	[`maven:3.6.0-slim`](#maven360-slim)
-	[`maven:3.6-alpine`](#maven36-alpine)
-	[`maven:3.6-ibmjava`](#maven36-ibmjava)
-	[`maven:3.6-ibmjava-8`](#maven36-ibmjava-8)
-	[`maven:3.6-ibmjava-8-alpine`](#maven36-ibmjava-8-alpine)
-	[`maven:3.6-ibmjava-alpine`](#maven36-ibmjava-alpine)
-	[`maven:3.6-jdk-10`](#maven36-jdk-10)
-	[`maven:3.6-jdk-10-slim`](#maven36-jdk-10-slim)
-	[`maven:3.6-jdk-11`](#maven36-jdk-11)
-	[`maven:3.6-jdk-11-slim`](#maven36-jdk-11-slim)
-	[`maven:3.6-jdk-12`](#maven36-jdk-12)
-	[`maven:3.6-jdk-12-alpine`](#maven36-jdk-12-alpine)
-	[`maven:3.6-jdk-7`](#maven36-jdk-7)
-	[`maven:3.6-jdk-7-alpine`](#maven36-jdk-7-alpine)
-	[`maven:3.6-jdk-7-slim`](#maven36-jdk-7-slim)
-	[`maven:3.6-jdk-8`](#maven36-jdk-8)
-	[`maven:3.6-jdk-8-alpine`](#maven36-jdk-8-alpine)
-	[`maven:3.6-jdk-8-slim`](#maven36-jdk-8-slim)
-	[`maven:3.6-slim`](#maven36-slim)
-	[`maven:3-ibmjava`](#maven3-ibmjava)
-	[`maven:3-ibmjava-8`](#maven3-ibmjava-8)
-	[`maven:3-ibmjava-8-alpine`](#maven3-ibmjava-8-alpine)
-	[`maven:3-jdk-10`](#maven3-jdk-10)
-	[`maven:3-jdk-10-slim`](#maven3-jdk-10-slim)
-	[`maven:3-jdk-11`](#maven3-jdk-11)
-	[`maven:3-jdk-11-slim`](#maven3-jdk-11-slim)
-	[`maven:3-jdk-12`](#maven3-jdk-12)
-	[`maven:3-jdk-12-alpine`](#maven3-jdk-12-alpine)
-	[`maven:3-jdk-7`](#maven3-jdk-7)
-	[`maven:3-jdk-7-alpine`](#maven3-jdk-7-alpine)
-	[`maven:3-jdk-7-slim`](#maven3-jdk-7-slim)
-	[`maven:3-jdk-8`](#maven3-jdk-8)
-	[`maven:3-jdk-8-alpine`](#maven3-jdk-8-alpine)
-	[`maven:3-jdk-8-slim`](#maven3-jdk-8-slim)
-	[`maven:alpine`](#mavenalpine)
-	[`maven:ibmjava`](#mavenibmjava)
-	[`maven:ibmjava-alpine`](#mavenibmjava-alpine)
-	[`maven:latest`](#mavenlatest)
-	[`maven:slim`](#mavenslim)

## `maven:3`

```console
$ docker pull maven@sha256:90d89fe14d58af2f60fe5b3715bf0a44aeedfc9c03703bbe8a8aea6a0fd65a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

```console
$ docker pull maven@sha256:5e5f82d62c6ad0cd140cb9bee2488e3c7164a8c7e1dcc086c77e5b41c32e360a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254655014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9502b11ef5292320e9c87e2c76f0f2c889a054ceee2a1e04176c859621be21b4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:28:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:28:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:29:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:29:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:52 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:52 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:53 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c0e52d1ec297a9ade35f6b17bcf69d959bb1f16c506290f29af5513b0cdabd`  
		Last Modified: Mon, 29 Oct 2018 23:34:50 GMT  
		Size: 134.0 MB (133974982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d22bc4393511e7d49d7bb83b5b2dcc95cde66f54a69099421c65928e873e9c`  
		Last Modified: Mon, 29 Oct 2018 23:34:21 GMT  
		Size: 246.7 KB (246716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bf5e6b8346c04fe65194154c8f9b5a75b85b0cc14210529995f3df30ec08b6`  
		Last Modified: Fri, 02 Nov 2018 22:41:30 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3943ccaa27c99dd82b8e31e12d59db777de844d47ea141560a2330e7c042c6`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e78afe180e715ab8130710e1ec68008ae47abc00c022ac3d077f1382d0d674`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6`

```console
$ docker pull maven@sha256:90d89fe14d58af2f60fe5b3715bf0a44aeedfc9c03703bbe8a8aea6a0fd65a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6` - linux; amd64

```console
$ docker pull maven@sha256:5e5f82d62c6ad0cd140cb9bee2488e3c7164a8c7e1dcc086c77e5b41c32e360a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254655014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9502b11ef5292320e9c87e2c76f0f2c889a054ceee2a1e04176c859621be21b4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:28:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:28:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:29:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:29:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:52 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:52 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:53 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c0e52d1ec297a9ade35f6b17bcf69d959bb1f16c506290f29af5513b0cdabd`  
		Last Modified: Mon, 29 Oct 2018 23:34:50 GMT  
		Size: 134.0 MB (133974982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d22bc4393511e7d49d7bb83b5b2dcc95cde66f54a69099421c65928e873e9c`  
		Last Modified: Mon, 29 Oct 2018 23:34:21 GMT  
		Size: 246.7 KB (246716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bf5e6b8346c04fe65194154c8f9b5a75b85b0cc14210529995f3df30ec08b6`  
		Last Modified: Fri, 02 Nov 2018 22:41:30 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3943ccaa27c99dd82b8e31e12d59db777de844d47ea141560a2330e7c042c6`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e78afe180e715ab8130710e1ec68008ae47abc00c022ac3d077f1382d0d674`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0`

```console
$ docker pull maven@sha256:90d89fe14d58af2f60fe5b3715bf0a44aeedfc9c03703bbe8a8aea6a0fd65a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0` - linux; amd64

```console
$ docker pull maven@sha256:5e5f82d62c6ad0cd140cb9bee2488e3c7164a8c7e1dcc086c77e5b41c32e360a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254655014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9502b11ef5292320e9c87e2c76f0f2c889a054ceee2a1e04176c859621be21b4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:28:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:28:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:29:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:29:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:52 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:52 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:53 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c0e52d1ec297a9ade35f6b17bcf69d959bb1f16c506290f29af5513b0cdabd`  
		Last Modified: Mon, 29 Oct 2018 23:34:50 GMT  
		Size: 134.0 MB (133974982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d22bc4393511e7d49d7bb83b5b2dcc95cde66f54a69099421c65928e873e9c`  
		Last Modified: Mon, 29 Oct 2018 23:34:21 GMT  
		Size: 246.7 KB (246716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bf5e6b8346c04fe65194154c8f9b5a75b85b0cc14210529995f3df30ec08b6`  
		Last Modified: Fri, 02 Nov 2018 22:41:30 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3943ccaa27c99dd82b8e31e12d59db777de844d47ea141560a2330e7c042c6`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e78afe180e715ab8130710e1ec68008ae47abc00c022ac3d077f1382d0d674`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-alpine`

```console
$ docker pull maven@sha256:9f212a24a2f033808ef9d7853c2dc786e06b163c9b6c06fcb84f865d040c865f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-alpine` - linux; amd64

```console
$ docker pull maven@sha256:bc4f01c7f98ec1ef69f75c49ca0009ccd8c62573c0cacc7a0ef44a2e2c14af4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84071970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f92f93bc47f7e20cf12c067a992d70e870b53b2a7e889bb533b1c221161ad9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:57:12 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:26:09 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:09 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:09 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f88801c955d02aa49c59b4ff045f9b5f57dfa39c7f639c1dc5ab15759d695f6`  
		Last Modified: Wed, 24 Oct 2018 23:59:43 GMT  
		Size: 2.2 MB (2165224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d19156f2b5c9c2cea402717329551b4cf21439a66fb506f71227d680ed1b93`  
		Last Modified: Fri, 02 Nov 2018 22:37:25 GMT  
		Size: 9.1 MB (9087939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f463bce551589717354fc1ea9abfda22f3b280570f682b766705cc065c63d5`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c3da39569a1ace9636d9061ce6e58da3fa9be2d34f2fca4fddbb7add36e1c`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-ibmjava`

```console
$ docker pull maven@sha256:51066a5dda2b473e79ed660fb34da83457ecb45933c1f2e5b29e989251515112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:c429789bf3f4a4560d5b03a9b897e7d0872e3d3087e9347e210e437b04e6a5a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242444607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b20ac590ea0be5878ce0fda8158e8b91505d54655054a29f730ae8e4583958`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:31:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 01:31:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:20:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:25:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 02 Nov 2018 22:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Nov 2018 22:27:34 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:34 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:28:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:28:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:28:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:28:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28276d7851498aed83f57d54de769785ae5b0c665005245dcbfb33f63c023c1`  
		Last Modified: Fri, 19 Oct 2018 01:34:13 GMT  
		Size: 3.0 MB (3021267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8552f043c2ec3a1198d0d43cd503c2b872adafd3edc57e702abdad1b696e44dd`  
		Last Modified: Fri, 02 Nov 2018 22:32:38 GMT  
		Size: 164.3 MB (164258775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d46916dfebf745d26c37585c6ee1bd0010ae88efadd3a34144ed6a3694e7b38`  
		Last Modified: Fri, 02 Nov 2018 22:46:05 GMT  
		Size: 31.8 MB (31808969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5187d224b47cc5f89746b2d8afe539e094690391fb24f6c590a99629c91b0a5e`  
		Last Modified: Fri, 02 Nov 2018 22:46:00 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22748bc92569b21b77c7f26b1435cc5c8283088df6b4d9d9595b65f3631540b1`  
		Last Modified: Fri, 02 Nov 2018 22:46:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-ibmjava-8`

```console
$ docker pull maven@sha256:51066a5dda2b473e79ed660fb34da83457ecb45933c1f2e5b29e989251515112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-ibmjava-8` - linux; amd64

```console
$ docker pull maven@sha256:c429789bf3f4a4560d5b03a9b897e7d0872e3d3087e9347e210e437b04e6a5a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242444607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b20ac590ea0be5878ce0fda8158e8b91505d54655054a29f730ae8e4583958`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:31:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 01:31:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:20:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:25:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 02 Nov 2018 22:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Nov 2018 22:27:34 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:34 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:28:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:28:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:28:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:28:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28276d7851498aed83f57d54de769785ae5b0c665005245dcbfb33f63c023c1`  
		Last Modified: Fri, 19 Oct 2018 01:34:13 GMT  
		Size: 3.0 MB (3021267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8552f043c2ec3a1198d0d43cd503c2b872adafd3edc57e702abdad1b696e44dd`  
		Last Modified: Fri, 02 Nov 2018 22:32:38 GMT  
		Size: 164.3 MB (164258775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d46916dfebf745d26c37585c6ee1bd0010ae88efadd3a34144ed6a3694e7b38`  
		Last Modified: Fri, 02 Nov 2018 22:46:05 GMT  
		Size: 31.8 MB (31808969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5187d224b47cc5f89746b2d8afe539e094690391fb24f6c590a99629c91b0a5e`  
		Last Modified: Fri, 02 Nov 2018 22:46:00 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22748bc92569b21b77c7f26b1435cc5c8283088df6b4d9d9595b65f3631540b1`  
		Last Modified: Fri, 02 Nov 2018 22:46:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:473417c0a8be1c38b7cad0910f768a3e7fe208284b555d510dc3310f68abaea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:00a411f5f396eaed0455d461403dc32a2e936c6cae9d722ed9aa9f36ad1228b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182194457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61fa943ea0143023fcd8605a16eadd54ac89c6d571dfeff718bd7cdf9353b61`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 28 Sep 2018 19:22:52 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 28 Sep 2018 19:27:18 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='5be5205ef921b9269bd7f84cf93322aeac2dbcf08536fdf38b1dd2036f8911b9';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='da3c6dcb264508a29a505567f58c49c77594d5a6102a7e678f5b35aff79549fc';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='51d53f86d79f5d1fd16a7ed11b305f140aa1b0946221f307334f310312e9f2b6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='17436a485322009b9d402a977a7fef9e6d14a062665e13f7a21962a695f6c989';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6635bebc3108d0210eef7c75b76b7d3944d163b2374522fcd22570288d602a13';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 28 Sep 2018 19:27:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Sep 2018 20:02:16 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:27:14 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:14 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:14 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:27:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:27:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47295dbbc880ca7e1c2df482819138b0c13d49d78101b77791d29deb63febfc1`  
		Last Modified: Fri, 28 Sep 2018 19:30:54 GMT  
		Size: 164.2 MB (164169142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1083113fe6e4e9d5e44af43c00f2561d06fe71a33cf77ef6a8af7b55a66cb2f`  
		Last Modified: Fri, 28 Sep 2018 20:03:25 GMT  
		Size: 2.3 MB (2310086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec82ba401ba2958532e1c1a13c378449accc4982bafebbce2ed5bbf6470b0564`  
		Last Modified: Fri, 02 Nov 2018 22:43:55 GMT  
		Size: 9.1 MB (9087921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4aa215a93973d6cf8dec66a2ea1a0685b55e9b1e9b0b0b2aada196f16e25f44`  
		Last Modified: Fri, 02 Nov 2018 22:43:57 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9cd5b54b127a47200029f13fad1fcfdd75c24f5dcd963489e88c97e1e6c2d`  
		Last Modified: Fri, 02 Nov 2018 22:43:54 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-ibmjava-alpine`

```console
$ docker pull maven@sha256:473417c0a8be1c38b7cad0910f768a3e7fe208284b555d510dc3310f68abaea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-ibmjava-alpine` - linux; amd64

```console
$ docker pull maven@sha256:00a411f5f396eaed0455d461403dc32a2e936c6cae9d722ed9aa9f36ad1228b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182194457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61fa943ea0143023fcd8605a16eadd54ac89c6d571dfeff718bd7cdf9353b61`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 28 Sep 2018 19:22:52 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 28 Sep 2018 19:27:18 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='5be5205ef921b9269bd7f84cf93322aeac2dbcf08536fdf38b1dd2036f8911b9';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='da3c6dcb264508a29a505567f58c49c77594d5a6102a7e678f5b35aff79549fc';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='51d53f86d79f5d1fd16a7ed11b305f140aa1b0946221f307334f310312e9f2b6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='17436a485322009b9d402a977a7fef9e6d14a062665e13f7a21962a695f6c989';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6635bebc3108d0210eef7c75b76b7d3944d163b2374522fcd22570288d602a13';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 28 Sep 2018 19:27:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Sep 2018 20:02:16 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:27:14 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:14 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:14 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:27:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:27:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47295dbbc880ca7e1c2df482819138b0c13d49d78101b77791d29deb63febfc1`  
		Last Modified: Fri, 28 Sep 2018 19:30:54 GMT  
		Size: 164.2 MB (164169142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1083113fe6e4e9d5e44af43c00f2561d06fe71a33cf77ef6a8af7b55a66cb2f`  
		Last Modified: Fri, 28 Sep 2018 20:03:25 GMT  
		Size: 2.3 MB (2310086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec82ba401ba2958532e1c1a13c378449accc4982bafebbce2ed5bbf6470b0564`  
		Last Modified: Fri, 02 Nov 2018 22:43:55 GMT  
		Size: 9.1 MB (9087921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4aa215a93973d6cf8dec66a2ea1a0685b55e9b1e9b0b0b2aada196f16e25f44`  
		Last Modified: Fri, 02 Nov 2018 22:43:57 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9cd5b54b127a47200029f13fad1fcfdd75c24f5dcd963489e88c97e1e6c2d`  
		Last Modified: Fri, 02 Nov 2018 22:43:54 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-10`

```console
$ docker pull maven@sha256:30fd59b5f2ca209f5933f7a9ee3843772f531a89a78c446dd19d4fdeacf90dcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-10` - linux; amd64

```console
$ docker pull maven@sha256:529e1cf6acde835d3dc3d1372bcd9d1fe82d192eb075f80152aaf3f930a3c161
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.6 MB (503596752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309940bbd385afe715d02e05dac0950d38791407433f9f66e6fae52e4fdbdab0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:15:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:20:43 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:20:43 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:20:43 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 24 Oct 2018 22:27:32 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Wed, 24 Oct 2018 22:28:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 24 Oct 2018 22:28:48 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:22:35 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:22:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:22:35 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:22:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:22:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:22:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:22:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:22:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:22:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:22:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:22:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:22:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15911fa38fedc7fe60b36c7f212701e72fe2b0c7a45daa0f30b963a310ff928c`  
		Last Modified: Tue, 16 Oct 2018 05:36:35 GMT  
		Size: 896.9 KB (896914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05608362f0e0dcb66c43d70328dfb62bed93a76eb965be517cfc5602db5080d6`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eafb7bea1a45b225e77f4b9d92834ce58d1195559d2f8b27a418aaaf9cb37e`  
		Last Modified: Tue, 16 Oct 2018 05:43:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c6e9198d4949c65e4eff1e5e7c7b6907715c117faa08233463ba0a6afd2d4f`  
		Last Modified: Wed, 24 Oct 2018 22:34:20 GMT  
		Size: 375.8 MB (375816128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f0eb548fa5c948dc28820acf84fee0d077aedd636197eb81d3dc1c9adf61b8`  
		Last Modified: Fri, 02 Nov 2018 22:29:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b92805c80c0622f9fa6989f11c5958e33020170c7d46087186e4e32a4aa5b`  
		Last Modified: Fri, 02 Nov 2018 22:29:51 GMT  
		Size: 9.1 MB (9087935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a84d34dfe2543085a2ea407dd1609175101d65ef9f4b03cd206a6da47a1add6`  
		Last Modified: Fri, 02 Nov 2018 22:29:50 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8511730b8ac9280e714e1ecd30696b80eacaa5f4462eca7b59d534041f18898d`  
		Last Modified: Fri, 02 Nov 2018 22:29:51 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-10-slim`

```console
$ docker pull maven@sha256:f1125461dd3aa33dd7b7b6d799f6a1933a0bf721f1c7075c04d3ffe44fea9edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-10-slim` - linux; amd64

```console
$ docker pull maven@sha256:3f29ccd31aa32feb50267ae33b69b7de8456efc6fac698c23767e394958999de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.9 MB (311857395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e323e40e6765a878d66ab56238d0f433d5dacd05e79bebca7c06814b1e0b36`
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
# Tue, 16 Oct 2018 05:22:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 24 Oct 2018 22:29:00 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Wed, 24 Oct 2018 22:29:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 24 Oct 2018 22:29:38 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:21:49 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:21:50 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:21:50 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:21:50 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:22:06 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:22:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:22:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:22:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:22:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:22:10 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:22:10 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:22:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:22:11 GMT
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
	-	`sha256:2912756b153bdfcb7ccda1fdf8e8c02a686e003c30f8180ce70d6163d136f5a1`  
		Last Modified: Tue, 16 Oct 2018 05:46:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacef915bfd2d9ec78f7ca6d7f344691a22cb2426881127a899d1c3e83d81899`  
		Last Modified: Wed, 24 Oct 2018 22:37:14 GMT  
		Size: 273.8 MB (273845920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ee25ff72a253fbf6c517a1838f5dc133b7b0b5794441f93441cbc088a0113d`  
		Last Modified: Fri, 02 Nov 2018 22:28:47 GMT  
		Size: 2.2 MB (2176859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df92c1e98dc38eb9a90927674540764abb6748eaefdd3b21fa820c2763863698`  
		Last Modified: Fri, 02 Nov 2018 22:28:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8aba723d57751878d3ac20d10f9f1cda9dc89db2bcaafc7da70a5fd557c58f`  
		Last Modified: Fri, 02 Nov 2018 22:28:48 GMT  
		Size: 9.1 MB (9087924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6276d1955a7636690c95c229c9c41f79b33b2b2b098fee34bb2686b8fbba0911`  
		Last Modified: Fri, 02 Nov 2018 22:28:47 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f652e9e1f7c5fee7a9a109f8c734ad0d29daf83838254e760077394ccdbbe3`  
		Last Modified: Fri, 02 Nov 2018 22:28:48 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-11`

```console
$ docker pull maven@sha256:7b8b7a39eb10b7a52d4c32df5ce4c7e30af8ea76cd2e7964be2a8d4222d9fcb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-11` - linux; amd64

```console
$ docker pull maven@sha256:a3759f7878524e34a07aa7c093ddf502c91e510fa8bbd57a1f1bde1a8a781ce1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **516.8 MB (516817483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fef7b609d54eba02d2d64f70cf143972a5ef37b13a3fff173932142193d77d6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:15:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:15:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:15:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 18 Oct 2018 23:59:14 GMT
ENV JAVA_VERSION=11.0.1
# Thu, 18 Oct 2018 23:59:15 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 00:00:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 00:00:31 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:23:40 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:23:40 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:23:41 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:23:41 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:23:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:23:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:23:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:23:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:23:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:23:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:23:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:23:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15911fa38fedc7fe60b36c7f212701e72fe2b0c7a45daa0f30b963a310ff928c`  
		Last Modified: Tue, 16 Oct 2018 05:36:35 GMT  
		Size: 896.9 KB (896914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05608362f0e0dcb66c43d70328dfb62bed93a76eb965be517cfc5602db5080d6`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b557609cc1f07d388d0b34a27eed49a2db4309ab2a6008d7f9cb1346b6c8a587`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea98ccfb6f5f7fe3048132dbd70dca830c564b8abe7f873d004e6d3a9ee9bf2`  
		Last Modified: Fri, 19 Oct 2018 00:08:57 GMT  
		Size: 389.0 MB (389036868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658f00c8d389eee4f49b2a29b83db709542df2ec62ab07533e2821391f5592b`  
		Last Modified: Fri, 02 Nov 2018 22:31:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83adf8bd37490bf9fd058b7f2167b5fcbb00903b394886c6b40917caf8271433`  
		Last Modified: Fri, 02 Nov 2018 22:31:47 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac148c5fdb3197dcb06623d242bf81ea2f581e2b6f328d6a0d87c6d8ad6d61d`  
		Last Modified: Fri, 02 Nov 2018 22:31:46 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eab68e17b5c662cb619b9a8ff59b49441848a863aa9e1aae92f98273b977c48`  
		Last Modified: Fri, 02 Nov 2018 22:31:46 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-11-slim`

```console
$ docker pull maven@sha256:c14615cc099ac1107a45b46cc2ab00153e7261abfa3457f40a4ed1cad02a6617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-11-slim` - linux; amd64

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

## `maven:3.6.0-jdk-12`

```console
$ docker pull maven@sha256:97794ba2c4e9cdd873a70bdad1ca581b5e1a4bf3da5e83c3c48dbe002ee790b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-12` - linux; amd64

```console
$ docker pull maven@sha256:9630c514e7b3b69b84edb68554165a61f3d88fa676a09aaf87d3e1dcf20da22d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252856011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d8284707707a153c23a8a141c4f3a603efa87ed1707c85cd2a730fe5379408`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Tue, 16 Oct 2018 21:38:24 GMT
ADD file:fbe6533ea9111b27c121848a809a9c839ffe3d74cb1695643ebd19d9899c8e4e in / 
# Tue, 16 Oct 2018 21:38:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Oct 2018 22:02:16 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Tue, 16 Oct 2018 22:02:16 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Tue, 16 Oct 2018 22:02:17 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Oct 2018 20:23:51 GMT
ENV JAVA_VERSION=12-ea+17
# Fri, 26 Oct 2018 20:23:51 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/17/GPL/openjdk-12-ea+17_linux-x64_bin.tar.gz
# Fri, 26 Oct 2018 20:23:52 GMT
ENV JAVA_SHA256=68a4cafbb0325ad89efa67c36aa46788fcf076721d73e479bd84d735d62ccd1f
# Fri, 26 Oct 2018 20:24:31 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 26 Oct 2018 20:24:39 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:24:28 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:24:28 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:24:29 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:24:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:24:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:24:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:24:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:24:32 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:24:32 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:24:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:24:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e64f6e679e1aa8acf7118fe395ca9c3ee44b10f3d83b02c381afb68551ba3f67`  
		Last Modified: Tue, 16 Oct 2018 21:41:42 GMT  
		Size: 42.4 MB (42414111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66bec2b4dfe78001e661f43e29dee27e9bbefffea6e1ec67c24a171d64695809`  
		Last Modified: Tue, 16 Oct 2018 22:05:40 GMT  
		Size: 4.4 MB (4374701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07188eb4e4ff656de38d92d6e2ce5b660a572ad5d307d225892f1da9288026`  
		Last Modified: Fri, 26 Oct 2018 20:33:06 GMT  
		Size: 197.0 MB (196977004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ac1c723c16ad24892a2e482a5add27d9b1830008ee5d4ca1c951c9b58ef483`  
		Last Modified: Fri, 02 Nov 2018 22:33:43 GMT  
		Size: 9.1 MB (9089085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129e57495afcb5e30ca85c9310b79e4b841702449e33b1bc771c7f414fabb2e8`  
		Last Modified: Fri, 02 Nov 2018 22:33:42 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa842fdc7850e56cf0dca0ef124cddee8b89c14441641a3425f7a3f74806495`  
		Last Modified: Fri, 02 Nov 2018 22:33:42 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-12-alpine`

```console
$ docker pull maven@sha256:6ee27e44a0054f07c21a4d27d96afac724a42a0ac262ffdbd5d18721841367e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-12-alpine` - linux; amd64

```console
$ docker pull maven@sha256:329bb6560f1e5b553a92d8299be730081c48cc493f0ef6b742cac410830eaff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.9 MB (209895578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df11e0e85b11d68ffbab60631760dfd43adda917b211d9ca0cd60aa28c973162`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 02 Oct 2018 17:36:08 GMT
ENV JAVA_HOME=/opt/openjdk-12
# Tue, 02 Oct 2018 17:36:08 GMT
ENV PATH=/opt/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Oct 2018 22:21:39 GMT
ENV JAVA_VERSION=12-ea+14
# Tue, 09 Oct 2018 22:21:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/14/binaries/openjdk-12-ea+14_linux-x64-musl_bin.tar.gz
# Tue, 09 Oct 2018 22:21:40 GMT
ENV JAVA_SHA256=172c7d7c6859253822e03f0839f83627ffe06055f118423c6ef619a1af836b4c
# Tue, 09 Oct 2018 22:23:04 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 09 Oct 2018 22:23:10 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:24:00 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:24:01 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:24:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:24:01 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:24:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:24:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:24:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:24:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:24:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:24:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:24:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:24:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e5f2e0fe39aa02c5b89c1b82cbf447b2799dfeb96ae4c4f3297bb1769d19b8`  
		Last Modified: Tue, 09 Oct 2018 22:24:47 GMT  
		Size: 196.2 MB (196162746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4180133f4f864c9f17d64e36c6233d858eb8519b2196b571fc0be8dfae696e4a`  
		Last Modified: Fri, 02 Nov 2018 22:32:44 GMT  
		Size: 2.4 MB (2436870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2443f486063dd2e162e6ae698a67a72dbd647a3d3827954e6ed7a162b18606`  
		Last Modified: Fri, 02 Nov 2018 22:32:46 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fd3eef23921ca4e92cb8427cfe6bda4b69aaf2aaa30ab75af811a8caf802c8`  
		Last Modified: Fri, 02 Nov 2018 22:32:44 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612adce41739fcd8e7895f0290583657967db1b3bf0b3002b59280d1262e800c`  
		Last Modified: Fri, 02 Nov 2018 22:32:44 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-7`

```console
$ docker pull maven@sha256:448458f258ab35cf217b16425ed7e80541e5b1258edaea08c75626963e2b08a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:26d581608f4c322e5e3073dcdc26329d5e60698b8d2fd82b8d1a908b125de8cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.8 MB (222824410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8802d4d92a74941ef1d3c7e0e9991b68a7543d59d1d6269974143b13061c402e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:54:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:54:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:30:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:30:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:30:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:30:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:30:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:30:19 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 05:30:19 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 05:31:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 02 Nov 2018 22:25:51 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:25:51 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:25:51 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:25:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:25:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:25:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:25:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:25:54 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:25:54 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:25:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:25:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa696905a59054a0875af6a9b054edd282710a6e885c03514cc9e685aa31ca7a`  
		Last Modified: Tue, 16 Oct 2018 01:09:21 GMT  
		Size: 17.5 MB (17538611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dd2322bbef2cf5fc00a84425ab08febcb9cd378326afc9cdc954257f9daf67`  
		Last Modified: Tue, 16 Oct 2018 01:09:51 GMT  
		Size: 43.3 MB (43303672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bf78e897aa028eff4f0b5d46900204bc63b4742d75b6162fd0fc4a662fabd5`  
		Last Modified: Tue, 16 Oct 2018 06:00:44 GMT  
		Size: 828.2 KB (828217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3e0783f7ce325241c3fbdf73b0fc6e8a130ec6835e864822a88306030a7515`  
		Last Modified: Tue, 16 Oct 2018 06:00:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642aa9d6e20eb3d4fbd975459dc0374d81a5c6f3440d94691e36d800f6e3ec3`  
		Last Modified: Tue, 16 Oct 2018 06:00:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276ed06c956f7df5450e89710f0b43b65a6b613a80beba8ade23806127fa1c9`  
		Last Modified: Tue, 16 Oct 2018 06:00:57 GMT  
		Size: 97.8 MB (97812362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4028a8008a0373dc6db05921e71157536907ecb567e1728aba9062dfd155cb17`  
		Last Modified: Fri, 02 Nov 2018 22:36:22 GMT  
		Size: 9.1 MB (9087931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86dade2b106744a40d34509f4b359df7ac4cc582baec08bc83a76eab75a612`  
		Last Modified: Fri, 02 Nov 2018 22:36:21 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd15a917f9c9b29ef14e4d049624a928846d4f8fe423a80f65447cca225e4fd0`  
		Last Modified: Fri, 02 Nov 2018 22:36:21 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-7-alpine`

```console
$ docker pull maven@sha256:ccd88fb3fb79b290d40b1823f5408a1077a9614329a0b9ed7f848edc6c1d14db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:59d1660aefae3b58d615372939e68cde114e466658579219f230302d595e0fdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91737678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32b405af15afb1cd13d1f2e987a59917a87a85c8e0b398d6b5493c4f3d740b7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 12 Sep 2018 00:07:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 12 Sep 2018 00:07:43 GMT
ENV JAVA_VERSION=7u181
# Wed, 12 Sep 2018 00:07:43 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Wed, 12 Sep 2018 00:07:54 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:43:36 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:24:47 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:24:48 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:24:48 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:24:48 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:24:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:24:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:24:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:24:52 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:24:52 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:24:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:24:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6051d9c702c379e5b8d92873df91dca3b2f03b1eb34425adc145799bb896d30`  
		Last Modified: Wed, 12 Sep 2018 00:11:30 GMT  
		Size: 78.3 MB (78264718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a6e8908daac216a07f0e26370d1d0752a5b657496db726784d3e7c5a146e61`  
		Last Modified: Wed, 12 Sep 2018 03:44:39 GMT  
		Size: 2.2 MB (2176746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c01b0602e003ba958c48c9a000883765dc1ae55caa45788939bb74f8dd719`  
		Last Modified: Fri, 02 Nov 2018 22:34:29 GMT  
		Size: 9.1 MB (9087933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845bf8dcd0d2ec52bc7339fee5bd10d87151e6e404890ff2cde4df77b94533b5`  
		Last Modified: Fri, 02 Nov 2018 22:34:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1faa08b64e4d8aa4385dfc151c2bd22f22352a7a59a6f1d91d0a115f508b3af`  
		Last Modified: Fri, 02 Nov 2018 22:34:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-7-slim`

```console
$ docker pull maven@sha256:6aae4753d2f47272e73305c88bcc525539c7717683dbf95d2cf4a1435cdd94e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:0b6cb2957f10c2a39637417fec6415c0aeb5dbb28cd92f335440fd530db43fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126137453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14584f6f7cc02548db93ef34236f73466e7de0a6f793e7e8fc94d98ce217aeb8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:32:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:32:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 05:33:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 02 Nov 2018 22:25:07 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:25:07 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:25:07 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:25:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:25:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:25:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:25:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:25:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:25:34 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:25:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:25:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:25:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8defe034fd48900ab2c6e8bd0efb090a2e8d7dc437c82e961339ec4ad7737`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 463.7 KB (463743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d8dad75e602d23f8d377d9e8981537f979365546442ee03aabbe7a2826ae42`  
		Last Modified: Tue, 16 Oct 2018 06:03:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad497c7359958782aa0f99bcc986a3e88be017a1052c80d1f7b51d886c93c462`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba98c252b6c1ff288a099f0b1e4e66dfe9fa004e77bfc35b8e870837db911666`  
		Last Modified: Tue, 16 Oct 2018 06:03:27 GMT  
		Size: 85.2 MB (85206189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3ec21f3dee977347ac9cf1dde7c625a42a851a0975b9dce9a93b4d89452582`  
		Last Modified: Fri, 02 Nov 2018 22:35:18 GMT  
		Size: 1.3 MB (1257483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a04c501f352744c69b0705f7e3b6c10f228fdd1ff4f85597daf7f677a077f7`  
		Last Modified: Fri, 02 Nov 2018 22:35:18 GMT  
		Size: 9.1 MB (9087926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757d0b0673c3e631024f41594a1ab3924df0976b2536eeb5e2e1f9d7b4600100`  
		Last Modified: Fri, 02 Nov 2018 22:35:17 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f47e849af38363404e95b0ae4e802524f8de34c158a7a3329b87dcfb30cf17`  
		Last Modified: Fri, 02 Nov 2018 22:35:17 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-8`

```console
$ docker pull maven@sha256:90d89fe14d58af2f60fe5b3715bf0a44aeedfc9c03703bbe8a8aea6a0fd65a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-8` - linux; amd64

```console
$ docker pull maven@sha256:5e5f82d62c6ad0cd140cb9bee2488e3c7164a8c7e1dcc086c77e5b41c32e360a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254655014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9502b11ef5292320e9c87e2c76f0f2c889a054ceee2a1e04176c859621be21b4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:28:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:28:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:29:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:29:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:52 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:52 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:53 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c0e52d1ec297a9ade35f6b17bcf69d959bb1f16c506290f29af5513b0cdabd`  
		Last Modified: Mon, 29 Oct 2018 23:34:50 GMT  
		Size: 134.0 MB (133974982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d22bc4393511e7d49d7bb83b5b2dcc95cde66f54a69099421c65928e873e9c`  
		Last Modified: Mon, 29 Oct 2018 23:34:21 GMT  
		Size: 246.7 KB (246716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bf5e6b8346c04fe65194154c8f9b5a75b85b0cc14210529995f3df30ec08b6`  
		Last Modified: Fri, 02 Nov 2018 22:41:30 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3943ccaa27c99dd82b8e31e12d59db777de844d47ea141560a2330e7c042c6`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e78afe180e715ab8130710e1ec68008ae47abc00c022ac3d077f1382d0d674`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-8-alpine`

```console
$ docker pull maven@sha256:9f212a24a2f033808ef9d7853c2dc786e06b163c9b6c06fcb84f865d040c865f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:bc4f01c7f98ec1ef69f75c49ca0009ccd8c62573c0cacc7a0ef44a2e2c14af4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84071970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f92f93bc47f7e20cf12c067a992d70e870b53b2a7e889bb533b1c221161ad9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:57:12 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:26:09 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:09 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:09 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f88801c955d02aa49c59b4ff045f9b5f57dfa39c7f639c1dc5ab15759d695f6`  
		Last Modified: Wed, 24 Oct 2018 23:59:43 GMT  
		Size: 2.2 MB (2165224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d19156f2b5c9c2cea402717329551b4cf21439a66fb506f71227d680ed1b93`  
		Last Modified: Fri, 02 Nov 2018 22:37:25 GMT  
		Size: 9.1 MB (9087939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f463bce551589717354fc1ea9abfda22f3b280570f682b766705cc065c63d5`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c3da39569a1ace9636d9061ce6e58da3fa9be2d34f2fca4fddbb7add36e1c`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-jdk-8-slim`

```console
$ docker pull maven@sha256:df7955f9831e713f917992a8733ac6fc9cba04cfe079ce9d9f91b636cf545a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:77e1cf8be9f11dcb7d4ead90549f7c02c62d2ea8fa62067646c37c2b4f40fde7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103723906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc214b652aa35b9c4099ff67e6175befb9386be6a657cf8e6bbdbd9e37bb91e2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:27:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:27:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:27:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:29:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:29:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:30:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:30:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:27 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:27 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:26:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c48fea920808538de92047d2615ee465bb0461b3a9c7030e22784400268ffc`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 454.8 KB (454840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beeeb05aa4653b87a6fa2268a20c197222c3223c01f5e20552ffaab449b6994`  
		Last Modified: Tue, 16 Oct 2018 05:56:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cf2782bd40eebe1d10c7efbde028e6c9321cd49331f11be5354633b0424a88`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c36b48cf1e371776a9e2d07b042373463ffbf2af7f0e5007df73bb426de33`  
		Last Modified: Mon, 29 Oct 2018 23:37:26 GMT  
		Size: 67.5 MB (67495071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425e838cd2fa8dcd9e00d2f53da4aea1f7982283b1640c3697bc50ba7ea8bba7`  
		Last Modified: Mon, 29 Oct 2018 23:37:11 GMT  
		Size: 246.7 KB (246685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25b515cabc0a4ebdc277535863af4a6505cfdf76d8f5c27b2c711d11cd71ed`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 4.0 MB (3951856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fc97111fbcd38b136f759f12edbeb7a296a7fca7be86c51b5c248ea0fecd78`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 9.1 MB (9087925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258a420bc5e72cb8b99584d684ada58b7b65d6487840b023057efa8a63e87598`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39237dcb7b5496c0b346b74e7891849346563d6541b11a19a6987ee06e7073b`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6.0-slim`

```console
$ docker pull maven@sha256:df7955f9831e713f917992a8733ac6fc9cba04cfe079ce9d9f91b636cf545a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6.0-slim` - linux; amd64

```console
$ docker pull maven@sha256:77e1cf8be9f11dcb7d4ead90549f7c02c62d2ea8fa62067646c37c2b4f40fde7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103723906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc214b652aa35b9c4099ff67e6175befb9386be6a657cf8e6bbdbd9e37bb91e2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:27:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:27:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:27:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:29:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:29:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:30:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:30:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:27 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:27 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:26:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c48fea920808538de92047d2615ee465bb0461b3a9c7030e22784400268ffc`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 454.8 KB (454840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beeeb05aa4653b87a6fa2268a20c197222c3223c01f5e20552ffaab449b6994`  
		Last Modified: Tue, 16 Oct 2018 05:56:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cf2782bd40eebe1d10c7efbde028e6c9321cd49331f11be5354633b0424a88`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c36b48cf1e371776a9e2d07b042373463ffbf2af7f0e5007df73bb426de33`  
		Last Modified: Mon, 29 Oct 2018 23:37:26 GMT  
		Size: 67.5 MB (67495071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425e838cd2fa8dcd9e00d2f53da4aea1f7982283b1640c3697bc50ba7ea8bba7`  
		Last Modified: Mon, 29 Oct 2018 23:37:11 GMT  
		Size: 246.7 KB (246685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25b515cabc0a4ebdc277535863af4a6505cfdf76d8f5c27b2c711d11cd71ed`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 4.0 MB (3951856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fc97111fbcd38b136f759f12edbeb7a296a7fca7be86c51b5c248ea0fecd78`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 9.1 MB (9087925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258a420bc5e72cb8b99584d684ada58b7b65d6487840b023057efa8a63e87598`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39237dcb7b5496c0b346b74e7891849346563d6541b11a19a6987ee06e7073b`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-alpine`

```console
$ docker pull maven@sha256:9f212a24a2f033808ef9d7853c2dc786e06b163c9b6c06fcb84f865d040c865f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-alpine` - linux; amd64

```console
$ docker pull maven@sha256:bc4f01c7f98ec1ef69f75c49ca0009ccd8c62573c0cacc7a0ef44a2e2c14af4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84071970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f92f93bc47f7e20cf12c067a992d70e870b53b2a7e889bb533b1c221161ad9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:57:12 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:26:09 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:09 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:09 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f88801c955d02aa49c59b4ff045f9b5f57dfa39c7f639c1dc5ab15759d695f6`  
		Last Modified: Wed, 24 Oct 2018 23:59:43 GMT  
		Size: 2.2 MB (2165224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d19156f2b5c9c2cea402717329551b4cf21439a66fb506f71227d680ed1b93`  
		Last Modified: Fri, 02 Nov 2018 22:37:25 GMT  
		Size: 9.1 MB (9087939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f463bce551589717354fc1ea9abfda22f3b280570f682b766705cc065c63d5`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c3da39569a1ace9636d9061ce6e58da3fa9be2d34f2fca4fddbb7add36e1c`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-ibmjava`

```console
$ docker pull maven@sha256:51066a5dda2b473e79ed660fb34da83457ecb45933c1f2e5b29e989251515112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:c429789bf3f4a4560d5b03a9b897e7d0872e3d3087e9347e210e437b04e6a5a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242444607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b20ac590ea0be5878ce0fda8158e8b91505d54655054a29f730ae8e4583958`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:31:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 01:31:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:20:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:25:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 02 Nov 2018 22:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Nov 2018 22:27:34 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:34 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:28:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:28:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:28:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:28:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28276d7851498aed83f57d54de769785ae5b0c665005245dcbfb33f63c023c1`  
		Last Modified: Fri, 19 Oct 2018 01:34:13 GMT  
		Size: 3.0 MB (3021267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8552f043c2ec3a1198d0d43cd503c2b872adafd3edc57e702abdad1b696e44dd`  
		Last Modified: Fri, 02 Nov 2018 22:32:38 GMT  
		Size: 164.3 MB (164258775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d46916dfebf745d26c37585c6ee1bd0010ae88efadd3a34144ed6a3694e7b38`  
		Last Modified: Fri, 02 Nov 2018 22:46:05 GMT  
		Size: 31.8 MB (31808969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5187d224b47cc5f89746b2d8afe539e094690391fb24f6c590a99629c91b0a5e`  
		Last Modified: Fri, 02 Nov 2018 22:46:00 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22748bc92569b21b77c7f26b1435cc5c8283088df6b4d9d9595b65f3631540b1`  
		Last Modified: Fri, 02 Nov 2018 22:46:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-ibmjava-8`

```console
$ docker pull maven@sha256:51066a5dda2b473e79ed660fb34da83457ecb45933c1f2e5b29e989251515112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-ibmjava-8` - linux; amd64

```console
$ docker pull maven@sha256:c429789bf3f4a4560d5b03a9b897e7d0872e3d3087e9347e210e437b04e6a5a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242444607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b20ac590ea0be5878ce0fda8158e8b91505d54655054a29f730ae8e4583958`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:31:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 01:31:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:20:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:25:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 02 Nov 2018 22:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Nov 2018 22:27:34 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:34 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:28:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:28:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:28:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:28:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28276d7851498aed83f57d54de769785ae5b0c665005245dcbfb33f63c023c1`  
		Last Modified: Fri, 19 Oct 2018 01:34:13 GMT  
		Size: 3.0 MB (3021267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8552f043c2ec3a1198d0d43cd503c2b872adafd3edc57e702abdad1b696e44dd`  
		Last Modified: Fri, 02 Nov 2018 22:32:38 GMT  
		Size: 164.3 MB (164258775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d46916dfebf745d26c37585c6ee1bd0010ae88efadd3a34144ed6a3694e7b38`  
		Last Modified: Fri, 02 Nov 2018 22:46:05 GMT  
		Size: 31.8 MB (31808969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5187d224b47cc5f89746b2d8afe539e094690391fb24f6c590a99629c91b0a5e`  
		Last Modified: Fri, 02 Nov 2018 22:46:00 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22748bc92569b21b77c7f26b1435cc5c8283088df6b4d9d9595b65f3631540b1`  
		Last Modified: Fri, 02 Nov 2018 22:46:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:473417c0a8be1c38b7cad0910f768a3e7fe208284b555d510dc3310f68abaea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:00a411f5f396eaed0455d461403dc32a2e936c6cae9d722ed9aa9f36ad1228b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182194457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61fa943ea0143023fcd8605a16eadd54ac89c6d571dfeff718bd7cdf9353b61`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 28 Sep 2018 19:22:52 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 28 Sep 2018 19:27:18 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='5be5205ef921b9269bd7f84cf93322aeac2dbcf08536fdf38b1dd2036f8911b9';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='da3c6dcb264508a29a505567f58c49c77594d5a6102a7e678f5b35aff79549fc';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='51d53f86d79f5d1fd16a7ed11b305f140aa1b0946221f307334f310312e9f2b6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='17436a485322009b9d402a977a7fef9e6d14a062665e13f7a21962a695f6c989';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6635bebc3108d0210eef7c75b76b7d3944d163b2374522fcd22570288d602a13';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 28 Sep 2018 19:27:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Sep 2018 20:02:16 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:27:14 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:14 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:14 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:27:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:27:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47295dbbc880ca7e1c2df482819138b0c13d49d78101b77791d29deb63febfc1`  
		Last Modified: Fri, 28 Sep 2018 19:30:54 GMT  
		Size: 164.2 MB (164169142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1083113fe6e4e9d5e44af43c00f2561d06fe71a33cf77ef6a8af7b55a66cb2f`  
		Last Modified: Fri, 28 Sep 2018 20:03:25 GMT  
		Size: 2.3 MB (2310086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec82ba401ba2958532e1c1a13c378449accc4982bafebbce2ed5bbf6470b0564`  
		Last Modified: Fri, 02 Nov 2018 22:43:55 GMT  
		Size: 9.1 MB (9087921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4aa215a93973d6cf8dec66a2ea1a0685b55e9b1e9b0b0b2aada196f16e25f44`  
		Last Modified: Fri, 02 Nov 2018 22:43:57 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9cd5b54b127a47200029f13fad1fcfdd75c24f5dcd963489e88c97e1e6c2d`  
		Last Modified: Fri, 02 Nov 2018 22:43:54 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-ibmjava-alpine`

```console
$ docker pull maven@sha256:473417c0a8be1c38b7cad0910f768a3e7fe208284b555d510dc3310f68abaea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-ibmjava-alpine` - linux; amd64

```console
$ docker pull maven@sha256:00a411f5f396eaed0455d461403dc32a2e936c6cae9d722ed9aa9f36ad1228b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182194457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61fa943ea0143023fcd8605a16eadd54ac89c6d571dfeff718bd7cdf9353b61`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 28 Sep 2018 19:22:52 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 28 Sep 2018 19:27:18 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='5be5205ef921b9269bd7f84cf93322aeac2dbcf08536fdf38b1dd2036f8911b9';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='da3c6dcb264508a29a505567f58c49c77594d5a6102a7e678f5b35aff79549fc';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='51d53f86d79f5d1fd16a7ed11b305f140aa1b0946221f307334f310312e9f2b6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='17436a485322009b9d402a977a7fef9e6d14a062665e13f7a21962a695f6c989';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6635bebc3108d0210eef7c75b76b7d3944d163b2374522fcd22570288d602a13';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 28 Sep 2018 19:27:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Sep 2018 20:02:16 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:27:14 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:14 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:14 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:27:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:27:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47295dbbc880ca7e1c2df482819138b0c13d49d78101b77791d29deb63febfc1`  
		Last Modified: Fri, 28 Sep 2018 19:30:54 GMT  
		Size: 164.2 MB (164169142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1083113fe6e4e9d5e44af43c00f2561d06fe71a33cf77ef6a8af7b55a66cb2f`  
		Last Modified: Fri, 28 Sep 2018 20:03:25 GMT  
		Size: 2.3 MB (2310086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec82ba401ba2958532e1c1a13c378449accc4982bafebbce2ed5bbf6470b0564`  
		Last Modified: Fri, 02 Nov 2018 22:43:55 GMT  
		Size: 9.1 MB (9087921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4aa215a93973d6cf8dec66a2ea1a0685b55e9b1e9b0b0b2aada196f16e25f44`  
		Last Modified: Fri, 02 Nov 2018 22:43:57 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9cd5b54b127a47200029f13fad1fcfdd75c24f5dcd963489e88c97e1e6c2d`  
		Last Modified: Fri, 02 Nov 2018 22:43:54 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-10`

```console
$ docker pull maven@sha256:30fd59b5f2ca209f5933f7a9ee3843772f531a89a78c446dd19d4fdeacf90dcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-10` - linux; amd64

```console
$ docker pull maven@sha256:529e1cf6acde835d3dc3d1372bcd9d1fe82d192eb075f80152aaf3f930a3c161
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.6 MB (503596752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309940bbd385afe715d02e05dac0950d38791407433f9f66e6fae52e4fdbdab0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:15:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:20:43 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:20:43 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:20:43 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 24 Oct 2018 22:27:32 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Wed, 24 Oct 2018 22:28:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 24 Oct 2018 22:28:48 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:22:35 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:22:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:22:35 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:22:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:22:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:22:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:22:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:22:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:22:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:22:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:22:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:22:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15911fa38fedc7fe60b36c7f212701e72fe2b0c7a45daa0f30b963a310ff928c`  
		Last Modified: Tue, 16 Oct 2018 05:36:35 GMT  
		Size: 896.9 KB (896914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05608362f0e0dcb66c43d70328dfb62bed93a76eb965be517cfc5602db5080d6`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eafb7bea1a45b225e77f4b9d92834ce58d1195559d2f8b27a418aaaf9cb37e`  
		Last Modified: Tue, 16 Oct 2018 05:43:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c6e9198d4949c65e4eff1e5e7c7b6907715c117faa08233463ba0a6afd2d4f`  
		Last Modified: Wed, 24 Oct 2018 22:34:20 GMT  
		Size: 375.8 MB (375816128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f0eb548fa5c948dc28820acf84fee0d077aedd636197eb81d3dc1c9adf61b8`  
		Last Modified: Fri, 02 Nov 2018 22:29:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b92805c80c0622f9fa6989f11c5958e33020170c7d46087186e4e32a4aa5b`  
		Last Modified: Fri, 02 Nov 2018 22:29:51 GMT  
		Size: 9.1 MB (9087935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a84d34dfe2543085a2ea407dd1609175101d65ef9f4b03cd206a6da47a1add6`  
		Last Modified: Fri, 02 Nov 2018 22:29:50 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8511730b8ac9280e714e1ecd30696b80eacaa5f4462eca7b59d534041f18898d`  
		Last Modified: Fri, 02 Nov 2018 22:29:51 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-10-slim`

```console
$ docker pull maven@sha256:f1125461dd3aa33dd7b7b6d799f6a1933a0bf721f1c7075c04d3ffe44fea9edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-10-slim` - linux; amd64

```console
$ docker pull maven@sha256:3f29ccd31aa32feb50267ae33b69b7de8456efc6fac698c23767e394958999de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.9 MB (311857395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e323e40e6765a878d66ab56238d0f433d5dacd05e79bebca7c06814b1e0b36`
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
# Tue, 16 Oct 2018 05:22:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 24 Oct 2018 22:29:00 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Wed, 24 Oct 2018 22:29:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 24 Oct 2018 22:29:38 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:21:49 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:21:50 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:21:50 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:21:50 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:22:06 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:22:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:22:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:22:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:22:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:22:10 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:22:10 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:22:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:22:11 GMT
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
	-	`sha256:2912756b153bdfcb7ccda1fdf8e8c02a686e003c30f8180ce70d6163d136f5a1`  
		Last Modified: Tue, 16 Oct 2018 05:46:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacef915bfd2d9ec78f7ca6d7f344691a22cb2426881127a899d1c3e83d81899`  
		Last Modified: Wed, 24 Oct 2018 22:37:14 GMT  
		Size: 273.8 MB (273845920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ee25ff72a253fbf6c517a1838f5dc133b7b0b5794441f93441cbc088a0113d`  
		Last Modified: Fri, 02 Nov 2018 22:28:47 GMT  
		Size: 2.2 MB (2176859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df92c1e98dc38eb9a90927674540764abb6748eaefdd3b21fa820c2763863698`  
		Last Modified: Fri, 02 Nov 2018 22:28:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8aba723d57751878d3ac20d10f9f1cda9dc89db2bcaafc7da70a5fd557c58f`  
		Last Modified: Fri, 02 Nov 2018 22:28:48 GMT  
		Size: 9.1 MB (9087924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6276d1955a7636690c95c229c9c41f79b33b2b2b098fee34bb2686b8fbba0911`  
		Last Modified: Fri, 02 Nov 2018 22:28:47 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f652e9e1f7c5fee7a9a109f8c734ad0d29daf83838254e760077394ccdbbe3`  
		Last Modified: Fri, 02 Nov 2018 22:28:48 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-11`

```console
$ docker pull maven@sha256:7b8b7a39eb10b7a52d4c32df5ce4c7e30af8ea76cd2e7964be2a8d4222d9fcb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-11` - linux; amd64

```console
$ docker pull maven@sha256:a3759f7878524e34a07aa7c093ddf502c91e510fa8bbd57a1f1bde1a8a781ce1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **516.8 MB (516817483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fef7b609d54eba02d2d64f70cf143972a5ef37b13a3fff173932142193d77d6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:15:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:15:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:15:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 18 Oct 2018 23:59:14 GMT
ENV JAVA_VERSION=11.0.1
# Thu, 18 Oct 2018 23:59:15 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 00:00:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 00:00:31 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:23:40 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:23:40 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:23:41 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:23:41 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:23:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:23:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:23:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:23:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:23:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:23:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:23:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:23:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15911fa38fedc7fe60b36c7f212701e72fe2b0c7a45daa0f30b963a310ff928c`  
		Last Modified: Tue, 16 Oct 2018 05:36:35 GMT  
		Size: 896.9 KB (896914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05608362f0e0dcb66c43d70328dfb62bed93a76eb965be517cfc5602db5080d6`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b557609cc1f07d388d0b34a27eed49a2db4309ab2a6008d7f9cb1346b6c8a587`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea98ccfb6f5f7fe3048132dbd70dca830c564b8abe7f873d004e6d3a9ee9bf2`  
		Last Modified: Fri, 19 Oct 2018 00:08:57 GMT  
		Size: 389.0 MB (389036868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658f00c8d389eee4f49b2a29b83db709542df2ec62ab07533e2821391f5592b`  
		Last Modified: Fri, 02 Nov 2018 22:31:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83adf8bd37490bf9fd058b7f2167b5fcbb00903b394886c6b40917caf8271433`  
		Last Modified: Fri, 02 Nov 2018 22:31:47 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac148c5fdb3197dcb06623d242bf81ea2f581e2b6f328d6a0d87c6d8ad6d61d`  
		Last Modified: Fri, 02 Nov 2018 22:31:46 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eab68e17b5c662cb619b9a8ff59b49441848a863aa9e1aae92f98273b977c48`  
		Last Modified: Fri, 02 Nov 2018 22:31:46 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-11-slim`

```console
$ docker pull maven@sha256:c14615cc099ac1107a45b46cc2ab00153e7261abfa3457f40a4ed1cad02a6617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-11-slim` - linux; amd64

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

## `maven:3.6-jdk-12`

```console
$ docker pull maven@sha256:97794ba2c4e9cdd873a70bdad1ca581b5e1a4bf3da5e83c3c48dbe002ee790b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-12` - linux; amd64

```console
$ docker pull maven@sha256:9630c514e7b3b69b84edb68554165a61f3d88fa676a09aaf87d3e1dcf20da22d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252856011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d8284707707a153c23a8a141c4f3a603efa87ed1707c85cd2a730fe5379408`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Tue, 16 Oct 2018 21:38:24 GMT
ADD file:fbe6533ea9111b27c121848a809a9c839ffe3d74cb1695643ebd19d9899c8e4e in / 
# Tue, 16 Oct 2018 21:38:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Oct 2018 22:02:16 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Tue, 16 Oct 2018 22:02:16 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Tue, 16 Oct 2018 22:02:17 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Oct 2018 20:23:51 GMT
ENV JAVA_VERSION=12-ea+17
# Fri, 26 Oct 2018 20:23:51 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/17/GPL/openjdk-12-ea+17_linux-x64_bin.tar.gz
# Fri, 26 Oct 2018 20:23:52 GMT
ENV JAVA_SHA256=68a4cafbb0325ad89efa67c36aa46788fcf076721d73e479bd84d735d62ccd1f
# Fri, 26 Oct 2018 20:24:31 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 26 Oct 2018 20:24:39 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:24:28 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:24:28 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:24:29 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:24:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:24:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:24:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:24:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:24:32 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:24:32 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:24:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:24:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e64f6e679e1aa8acf7118fe395ca9c3ee44b10f3d83b02c381afb68551ba3f67`  
		Last Modified: Tue, 16 Oct 2018 21:41:42 GMT  
		Size: 42.4 MB (42414111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66bec2b4dfe78001e661f43e29dee27e9bbefffea6e1ec67c24a171d64695809`  
		Last Modified: Tue, 16 Oct 2018 22:05:40 GMT  
		Size: 4.4 MB (4374701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07188eb4e4ff656de38d92d6e2ce5b660a572ad5d307d225892f1da9288026`  
		Last Modified: Fri, 26 Oct 2018 20:33:06 GMT  
		Size: 197.0 MB (196977004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ac1c723c16ad24892a2e482a5add27d9b1830008ee5d4ca1c951c9b58ef483`  
		Last Modified: Fri, 02 Nov 2018 22:33:43 GMT  
		Size: 9.1 MB (9089085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129e57495afcb5e30ca85c9310b79e4b841702449e33b1bc771c7f414fabb2e8`  
		Last Modified: Fri, 02 Nov 2018 22:33:42 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa842fdc7850e56cf0dca0ef124cddee8b89c14441641a3425f7a3f74806495`  
		Last Modified: Fri, 02 Nov 2018 22:33:42 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-12-alpine`

```console
$ docker pull maven@sha256:6ee27e44a0054f07c21a4d27d96afac724a42a0ac262ffdbd5d18721841367e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-12-alpine` - linux; amd64

```console
$ docker pull maven@sha256:329bb6560f1e5b553a92d8299be730081c48cc493f0ef6b742cac410830eaff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.9 MB (209895578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df11e0e85b11d68ffbab60631760dfd43adda917b211d9ca0cd60aa28c973162`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 02 Oct 2018 17:36:08 GMT
ENV JAVA_HOME=/opt/openjdk-12
# Tue, 02 Oct 2018 17:36:08 GMT
ENV PATH=/opt/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Oct 2018 22:21:39 GMT
ENV JAVA_VERSION=12-ea+14
# Tue, 09 Oct 2018 22:21:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/14/binaries/openjdk-12-ea+14_linux-x64-musl_bin.tar.gz
# Tue, 09 Oct 2018 22:21:40 GMT
ENV JAVA_SHA256=172c7d7c6859253822e03f0839f83627ffe06055f118423c6ef619a1af836b4c
# Tue, 09 Oct 2018 22:23:04 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 09 Oct 2018 22:23:10 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:24:00 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:24:01 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:24:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:24:01 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:24:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:24:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:24:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:24:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:24:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:24:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:24:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:24:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e5f2e0fe39aa02c5b89c1b82cbf447b2799dfeb96ae4c4f3297bb1769d19b8`  
		Last Modified: Tue, 09 Oct 2018 22:24:47 GMT  
		Size: 196.2 MB (196162746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4180133f4f864c9f17d64e36c6233d858eb8519b2196b571fc0be8dfae696e4a`  
		Last Modified: Fri, 02 Nov 2018 22:32:44 GMT  
		Size: 2.4 MB (2436870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2443f486063dd2e162e6ae698a67a72dbd647a3d3827954e6ed7a162b18606`  
		Last Modified: Fri, 02 Nov 2018 22:32:46 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fd3eef23921ca4e92cb8427cfe6bda4b69aaf2aaa30ab75af811a8caf802c8`  
		Last Modified: Fri, 02 Nov 2018 22:32:44 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612adce41739fcd8e7895f0290583657967db1b3bf0b3002b59280d1262e800c`  
		Last Modified: Fri, 02 Nov 2018 22:32:44 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-7`

```console
$ docker pull maven@sha256:448458f258ab35cf217b16425ed7e80541e5b1258edaea08c75626963e2b08a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:26d581608f4c322e5e3073dcdc26329d5e60698b8d2fd82b8d1a908b125de8cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.8 MB (222824410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8802d4d92a74941ef1d3c7e0e9991b68a7543d59d1d6269974143b13061c402e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:54:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:54:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:30:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:30:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:30:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:30:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:30:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:30:19 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 05:30:19 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 05:31:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 02 Nov 2018 22:25:51 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:25:51 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:25:51 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:25:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:25:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:25:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:25:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:25:54 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:25:54 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:25:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:25:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa696905a59054a0875af6a9b054edd282710a6e885c03514cc9e685aa31ca7a`  
		Last Modified: Tue, 16 Oct 2018 01:09:21 GMT  
		Size: 17.5 MB (17538611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dd2322bbef2cf5fc00a84425ab08febcb9cd378326afc9cdc954257f9daf67`  
		Last Modified: Tue, 16 Oct 2018 01:09:51 GMT  
		Size: 43.3 MB (43303672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bf78e897aa028eff4f0b5d46900204bc63b4742d75b6162fd0fc4a662fabd5`  
		Last Modified: Tue, 16 Oct 2018 06:00:44 GMT  
		Size: 828.2 KB (828217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3e0783f7ce325241c3fbdf73b0fc6e8a130ec6835e864822a88306030a7515`  
		Last Modified: Tue, 16 Oct 2018 06:00:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642aa9d6e20eb3d4fbd975459dc0374d81a5c6f3440d94691e36d800f6e3ec3`  
		Last Modified: Tue, 16 Oct 2018 06:00:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276ed06c956f7df5450e89710f0b43b65a6b613a80beba8ade23806127fa1c9`  
		Last Modified: Tue, 16 Oct 2018 06:00:57 GMT  
		Size: 97.8 MB (97812362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4028a8008a0373dc6db05921e71157536907ecb567e1728aba9062dfd155cb17`  
		Last Modified: Fri, 02 Nov 2018 22:36:22 GMT  
		Size: 9.1 MB (9087931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86dade2b106744a40d34509f4b359df7ac4cc582baec08bc83a76eab75a612`  
		Last Modified: Fri, 02 Nov 2018 22:36:21 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd15a917f9c9b29ef14e4d049624a928846d4f8fe423a80f65447cca225e4fd0`  
		Last Modified: Fri, 02 Nov 2018 22:36:21 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-7-alpine`

```console
$ docker pull maven@sha256:ccd88fb3fb79b290d40b1823f5408a1077a9614329a0b9ed7f848edc6c1d14db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:59d1660aefae3b58d615372939e68cde114e466658579219f230302d595e0fdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91737678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32b405af15afb1cd13d1f2e987a59917a87a85c8e0b398d6b5493c4f3d740b7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 12 Sep 2018 00:07:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 12 Sep 2018 00:07:43 GMT
ENV JAVA_VERSION=7u181
# Wed, 12 Sep 2018 00:07:43 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Wed, 12 Sep 2018 00:07:54 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:43:36 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:24:47 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:24:48 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:24:48 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:24:48 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:24:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:24:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:24:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:24:52 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:24:52 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:24:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:24:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6051d9c702c379e5b8d92873df91dca3b2f03b1eb34425adc145799bb896d30`  
		Last Modified: Wed, 12 Sep 2018 00:11:30 GMT  
		Size: 78.3 MB (78264718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a6e8908daac216a07f0e26370d1d0752a5b657496db726784d3e7c5a146e61`  
		Last Modified: Wed, 12 Sep 2018 03:44:39 GMT  
		Size: 2.2 MB (2176746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c01b0602e003ba958c48c9a000883765dc1ae55caa45788939bb74f8dd719`  
		Last Modified: Fri, 02 Nov 2018 22:34:29 GMT  
		Size: 9.1 MB (9087933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845bf8dcd0d2ec52bc7339fee5bd10d87151e6e404890ff2cde4df77b94533b5`  
		Last Modified: Fri, 02 Nov 2018 22:34:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1faa08b64e4d8aa4385dfc151c2bd22f22352a7a59a6f1d91d0a115f508b3af`  
		Last Modified: Fri, 02 Nov 2018 22:34:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-7-slim`

```console
$ docker pull maven@sha256:6aae4753d2f47272e73305c88bcc525539c7717683dbf95d2cf4a1435cdd94e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:0b6cb2957f10c2a39637417fec6415c0aeb5dbb28cd92f335440fd530db43fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126137453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14584f6f7cc02548db93ef34236f73466e7de0a6f793e7e8fc94d98ce217aeb8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:32:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:32:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 05:33:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 02 Nov 2018 22:25:07 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:25:07 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:25:07 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:25:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:25:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:25:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:25:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:25:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:25:34 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:25:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:25:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:25:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8defe034fd48900ab2c6e8bd0efb090a2e8d7dc437c82e961339ec4ad7737`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 463.7 KB (463743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d8dad75e602d23f8d377d9e8981537f979365546442ee03aabbe7a2826ae42`  
		Last Modified: Tue, 16 Oct 2018 06:03:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad497c7359958782aa0f99bcc986a3e88be017a1052c80d1f7b51d886c93c462`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba98c252b6c1ff288a099f0b1e4e66dfe9fa004e77bfc35b8e870837db911666`  
		Last Modified: Tue, 16 Oct 2018 06:03:27 GMT  
		Size: 85.2 MB (85206189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3ec21f3dee977347ac9cf1dde7c625a42a851a0975b9dce9a93b4d89452582`  
		Last Modified: Fri, 02 Nov 2018 22:35:18 GMT  
		Size: 1.3 MB (1257483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a04c501f352744c69b0705f7e3b6c10f228fdd1ff4f85597daf7f677a077f7`  
		Last Modified: Fri, 02 Nov 2018 22:35:18 GMT  
		Size: 9.1 MB (9087926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757d0b0673c3e631024f41594a1ab3924df0976b2536eeb5e2e1f9d7b4600100`  
		Last Modified: Fri, 02 Nov 2018 22:35:17 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f47e849af38363404e95b0ae4e802524f8de34c158a7a3329b87dcfb30cf17`  
		Last Modified: Fri, 02 Nov 2018 22:35:17 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-8`

```console
$ docker pull maven@sha256:90d89fe14d58af2f60fe5b3715bf0a44aeedfc9c03703bbe8a8aea6a0fd65a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-8` - linux; amd64

```console
$ docker pull maven@sha256:5e5f82d62c6ad0cd140cb9bee2488e3c7164a8c7e1dcc086c77e5b41c32e360a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254655014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9502b11ef5292320e9c87e2c76f0f2c889a054ceee2a1e04176c859621be21b4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:28:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:28:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:29:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:29:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:52 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:52 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:53 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c0e52d1ec297a9ade35f6b17bcf69d959bb1f16c506290f29af5513b0cdabd`  
		Last Modified: Mon, 29 Oct 2018 23:34:50 GMT  
		Size: 134.0 MB (133974982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d22bc4393511e7d49d7bb83b5b2dcc95cde66f54a69099421c65928e873e9c`  
		Last Modified: Mon, 29 Oct 2018 23:34:21 GMT  
		Size: 246.7 KB (246716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bf5e6b8346c04fe65194154c8f9b5a75b85b0cc14210529995f3df30ec08b6`  
		Last Modified: Fri, 02 Nov 2018 22:41:30 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3943ccaa27c99dd82b8e31e12d59db777de844d47ea141560a2330e7c042c6`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e78afe180e715ab8130710e1ec68008ae47abc00c022ac3d077f1382d0d674`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-8-alpine`

```console
$ docker pull maven@sha256:9f212a24a2f033808ef9d7853c2dc786e06b163c9b6c06fcb84f865d040c865f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:bc4f01c7f98ec1ef69f75c49ca0009ccd8c62573c0cacc7a0ef44a2e2c14af4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84071970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f92f93bc47f7e20cf12c067a992d70e870b53b2a7e889bb533b1c221161ad9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:57:12 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:26:09 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:09 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:09 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f88801c955d02aa49c59b4ff045f9b5f57dfa39c7f639c1dc5ab15759d695f6`  
		Last Modified: Wed, 24 Oct 2018 23:59:43 GMT  
		Size: 2.2 MB (2165224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d19156f2b5c9c2cea402717329551b4cf21439a66fb506f71227d680ed1b93`  
		Last Modified: Fri, 02 Nov 2018 22:37:25 GMT  
		Size: 9.1 MB (9087939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f463bce551589717354fc1ea9abfda22f3b280570f682b766705cc065c63d5`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c3da39569a1ace9636d9061ce6e58da3fa9be2d34f2fca4fddbb7add36e1c`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-jdk-8-slim`

```console
$ docker pull maven@sha256:df7955f9831e713f917992a8733ac6fc9cba04cfe079ce9d9f91b636cf545a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:77e1cf8be9f11dcb7d4ead90549f7c02c62d2ea8fa62067646c37c2b4f40fde7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103723906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc214b652aa35b9c4099ff67e6175befb9386be6a657cf8e6bbdbd9e37bb91e2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:27:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:27:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:27:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:29:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:29:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:30:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:30:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:27 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:27 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:26:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c48fea920808538de92047d2615ee465bb0461b3a9c7030e22784400268ffc`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 454.8 KB (454840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beeeb05aa4653b87a6fa2268a20c197222c3223c01f5e20552ffaab449b6994`  
		Last Modified: Tue, 16 Oct 2018 05:56:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cf2782bd40eebe1d10c7efbde028e6c9321cd49331f11be5354633b0424a88`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c36b48cf1e371776a9e2d07b042373463ffbf2af7f0e5007df73bb426de33`  
		Last Modified: Mon, 29 Oct 2018 23:37:26 GMT  
		Size: 67.5 MB (67495071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425e838cd2fa8dcd9e00d2f53da4aea1f7982283b1640c3697bc50ba7ea8bba7`  
		Last Modified: Mon, 29 Oct 2018 23:37:11 GMT  
		Size: 246.7 KB (246685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25b515cabc0a4ebdc277535863af4a6505cfdf76d8f5c27b2c711d11cd71ed`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 4.0 MB (3951856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fc97111fbcd38b136f759f12edbeb7a296a7fca7be86c51b5c248ea0fecd78`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 9.1 MB (9087925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258a420bc5e72cb8b99584d684ada58b7b65d6487840b023057efa8a63e87598`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39237dcb7b5496c0b346b74e7891849346563d6541b11a19a6987ee06e7073b`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.6-slim`

```console
$ docker pull maven@sha256:df7955f9831e713f917992a8733ac6fc9cba04cfe079ce9d9f91b636cf545a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3.6-slim` - linux; amd64

```console
$ docker pull maven@sha256:77e1cf8be9f11dcb7d4ead90549f7c02c62d2ea8fa62067646c37c2b4f40fde7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103723906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc214b652aa35b9c4099ff67e6175befb9386be6a657cf8e6bbdbd9e37bb91e2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:27:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:27:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:27:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:29:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:29:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:30:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:30:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:27 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:27 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:26:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c48fea920808538de92047d2615ee465bb0461b3a9c7030e22784400268ffc`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 454.8 KB (454840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beeeb05aa4653b87a6fa2268a20c197222c3223c01f5e20552ffaab449b6994`  
		Last Modified: Tue, 16 Oct 2018 05:56:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cf2782bd40eebe1d10c7efbde028e6c9321cd49331f11be5354633b0424a88`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c36b48cf1e371776a9e2d07b042373463ffbf2af7f0e5007df73bb426de33`  
		Last Modified: Mon, 29 Oct 2018 23:37:26 GMT  
		Size: 67.5 MB (67495071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425e838cd2fa8dcd9e00d2f53da4aea1f7982283b1640c3697bc50ba7ea8bba7`  
		Last Modified: Mon, 29 Oct 2018 23:37:11 GMT  
		Size: 246.7 KB (246685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25b515cabc0a4ebdc277535863af4a6505cfdf76d8f5c27b2c711d11cd71ed`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 4.0 MB (3951856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fc97111fbcd38b136f759f12edbeb7a296a7fca7be86c51b5c248ea0fecd78`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 9.1 MB (9087925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258a420bc5e72cb8b99584d684ada58b7b65d6487840b023057efa8a63e87598`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39237dcb7b5496c0b346b74e7891849346563d6541b11a19a6987ee06e7073b`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-ibmjava`

```console
$ docker pull maven@sha256:51066a5dda2b473e79ed660fb34da83457ecb45933c1f2e5b29e989251515112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:c429789bf3f4a4560d5b03a9b897e7d0872e3d3087e9347e210e437b04e6a5a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242444607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b20ac590ea0be5878ce0fda8158e8b91505d54655054a29f730ae8e4583958`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:31:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 01:31:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:20:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:25:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 02 Nov 2018 22:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Nov 2018 22:27:34 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:34 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:28:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:28:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:28:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:28:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28276d7851498aed83f57d54de769785ae5b0c665005245dcbfb33f63c023c1`  
		Last Modified: Fri, 19 Oct 2018 01:34:13 GMT  
		Size: 3.0 MB (3021267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8552f043c2ec3a1198d0d43cd503c2b872adafd3edc57e702abdad1b696e44dd`  
		Last Modified: Fri, 02 Nov 2018 22:32:38 GMT  
		Size: 164.3 MB (164258775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d46916dfebf745d26c37585c6ee1bd0010ae88efadd3a34144ed6a3694e7b38`  
		Last Modified: Fri, 02 Nov 2018 22:46:05 GMT  
		Size: 31.8 MB (31808969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5187d224b47cc5f89746b2d8afe539e094690391fb24f6c590a99629c91b0a5e`  
		Last Modified: Fri, 02 Nov 2018 22:46:00 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22748bc92569b21b77c7f26b1435cc5c8283088df6b4d9d9595b65f3631540b1`  
		Last Modified: Fri, 02 Nov 2018 22:46:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-ibmjava-8`

```console
$ docker pull maven@sha256:51066a5dda2b473e79ed660fb34da83457ecb45933c1f2e5b29e989251515112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-8` - linux; amd64

```console
$ docker pull maven@sha256:c429789bf3f4a4560d5b03a9b897e7d0872e3d3087e9347e210e437b04e6a5a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242444607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b20ac590ea0be5878ce0fda8158e8b91505d54655054a29f730ae8e4583958`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:31:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 01:31:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:20:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:25:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 02 Nov 2018 22:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Nov 2018 22:27:34 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:34 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:28:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:28:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:28:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:28:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28276d7851498aed83f57d54de769785ae5b0c665005245dcbfb33f63c023c1`  
		Last Modified: Fri, 19 Oct 2018 01:34:13 GMT  
		Size: 3.0 MB (3021267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8552f043c2ec3a1198d0d43cd503c2b872adafd3edc57e702abdad1b696e44dd`  
		Last Modified: Fri, 02 Nov 2018 22:32:38 GMT  
		Size: 164.3 MB (164258775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d46916dfebf745d26c37585c6ee1bd0010ae88efadd3a34144ed6a3694e7b38`  
		Last Modified: Fri, 02 Nov 2018 22:46:05 GMT  
		Size: 31.8 MB (31808969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5187d224b47cc5f89746b2d8afe539e094690391fb24f6c590a99629c91b0a5e`  
		Last Modified: Fri, 02 Nov 2018 22:46:00 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22748bc92569b21b77c7f26b1435cc5c8283088df6b4d9d9595b65f3631540b1`  
		Last Modified: Fri, 02 Nov 2018 22:46:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:473417c0a8be1c38b7cad0910f768a3e7fe208284b555d510dc3310f68abaea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:00a411f5f396eaed0455d461403dc32a2e936c6cae9d722ed9aa9f36ad1228b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182194457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61fa943ea0143023fcd8605a16eadd54ac89c6d571dfeff718bd7cdf9353b61`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 28 Sep 2018 19:22:52 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 28 Sep 2018 19:27:18 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='5be5205ef921b9269bd7f84cf93322aeac2dbcf08536fdf38b1dd2036f8911b9';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='da3c6dcb264508a29a505567f58c49c77594d5a6102a7e678f5b35aff79549fc';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='51d53f86d79f5d1fd16a7ed11b305f140aa1b0946221f307334f310312e9f2b6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='17436a485322009b9d402a977a7fef9e6d14a062665e13f7a21962a695f6c989';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6635bebc3108d0210eef7c75b76b7d3944d163b2374522fcd22570288d602a13';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 28 Sep 2018 19:27:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Sep 2018 20:02:16 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:27:14 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:14 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:14 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:27:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:27:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47295dbbc880ca7e1c2df482819138b0c13d49d78101b77791d29deb63febfc1`  
		Last Modified: Fri, 28 Sep 2018 19:30:54 GMT  
		Size: 164.2 MB (164169142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1083113fe6e4e9d5e44af43c00f2561d06fe71a33cf77ef6a8af7b55a66cb2f`  
		Last Modified: Fri, 28 Sep 2018 20:03:25 GMT  
		Size: 2.3 MB (2310086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec82ba401ba2958532e1c1a13c378449accc4982bafebbce2ed5bbf6470b0564`  
		Last Modified: Fri, 02 Nov 2018 22:43:55 GMT  
		Size: 9.1 MB (9087921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4aa215a93973d6cf8dec66a2ea1a0685b55e9b1e9b0b0b2aada196f16e25f44`  
		Last Modified: Fri, 02 Nov 2018 22:43:57 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9cd5b54b127a47200029f13fad1fcfdd75c24f5dcd963489e88c97e1e6c2d`  
		Last Modified: Fri, 02 Nov 2018 22:43:54 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-10`

```console
$ docker pull maven@sha256:30fd59b5f2ca209f5933f7a9ee3843772f531a89a78c446dd19d4fdeacf90dcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-10` - linux; amd64

```console
$ docker pull maven@sha256:529e1cf6acde835d3dc3d1372bcd9d1fe82d192eb075f80152aaf3f930a3c161
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.6 MB (503596752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309940bbd385afe715d02e05dac0950d38791407433f9f66e6fae52e4fdbdab0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:15:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:20:43 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:20:43 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:20:43 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 24 Oct 2018 22:27:32 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Wed, 24 Oct 2018 22:28:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 24 Oct 2018 22:28:48 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:22:35 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:22:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:22:35 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:22:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:22:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:22:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:22:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:22:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:22:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:22:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:22:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:22:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15911fa38fedc7fe60b36c7f212701e72fe2b0c7a45daa0f30b963a310ff928c`  
		Last Modified: Tue, 16 Oct 2018 05:36:35 GMT  
		Size: 896.9 KB (896914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05608362f0e0dcb66c43d70328dfb62bed93a76eb965be517cfc5602db5080d6`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eafb7bea1a45b225e77f4b9d92834ce58d1195559d2f8b27a418aaaf9cb37e`  
		Last Modified: Tue, 16 Oct 2018 05:43:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c6e9198d4949c65e4eff1e5e7c7b6907715c117faa08233463ba0a6afd2d4f`  
		Last Modified: Wed, 24 Oct 2018 22:34:20 GMT  
		Size: 375.8 MB (375816128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f0eb548fa5c948dc28820acf84fee0d077aedd636197eb81d3dc1c9adf61b8`  
		Last Modified: Fri, 02 Nov 2018 22:29:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6b92805c80c0622f9fa6989f11c5958e33020170c7d46087186e4e32a4aa5b`  
		Last Modified: Fri, 02 Nov 2018 22:29:51 GMT  
		Size: 9.1 MB (9087935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a84d34dfe2543085a2ea407dd1609175101d65ef9f4b03cd206a6da47a1add6`  
		Last Modified: Fri, 02 Nov 2018 22:29:50 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8511730b8ac9280e714e1ecd30696b80eacaa5f4462eca7b59d534041f18898d`  
		Last Modified: Fri, 02 Nov 2018 22:29:51 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-10-slim`

```console
$ docker pull maven@sha256:f1125461dd3aa33dd7b7b6d799f6a1933a0bf721f1c7075c04d3ffe44fea9edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-10-slim` - linux; amd64

```console
$ docker pull maven@sha256:3f29ccd31aa32feb50267ae33b69b7de8456efc6fac698c23767e394958999de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.9 MB (311857395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e323e40e6765a878d66ab56238d0f433d5dacd05e79bebca7c06814b1e0b36`
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
# Tue, 16 Oct 2018 05:22:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 24 Oct 2018 22:29:00 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Wed, 24 Oct 2018 22:29:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 24 Oct 2018 22:29:38 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:21:49 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:21:50 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:21:50 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:21:50 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:22:06 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:22:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:22:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:22:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:22:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:22:10 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:22:10 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:22:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:22:11 GMT
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
	-	`sha256:2912756b153bdfcb7ccda1fdf8e8c02a686e003c30f8180ce70d6163d136f5a1`  
		Last Modified: Tue, 16 Oct 2018 05:46:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacef915bfd2d9ec78f7ca6d7f344691a22cb2426881127a899d1c3e83d81899`  
		Last Modified: Wed, 24 Oct 2018 22:37:14 GMT  
		Size: 273.8 MB (273845920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ee25ff72a253fbf6c517a1838f5dc133b7b0b5794441f93441cbc088a0113d`  
		Last Modified: Fri, 02 Nov 2018 22:28:47 GMT  
		Size: 2.2 MB (2176859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df92c1e98dc38eb9a90927674540764abb6748eaefdd3b21fa820c2763863698`  
		Last Modified: Fri, 02 Nov 2018 22:28:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8aba723d57751878d3ac20d10f9f1cda9dc89db2bcaafc7da70a5fd557c58f`  
		Last Modified: Fri, 02 Nov 2018 22:28:48 GMT  
		Size: 9.1 MB (9087924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6276d1955a7636690c95c229c9c41f79b33b2b2b098fee34bb2686b8fbba0911`  
		Last Modified: Fri, 02 Nov 2018 22:28:47 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f652e9e1f7c5fee7a9a109f8c734ad0d29daf83838254e760077394ccdbbe3`  
		Last Modified: Fri, 02 Nov 2018 22:28:48 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-11`

```console
$ docker pull maven@sha256:7b8b7a39eb10b7a52d4c32df5ce4c7e30af8ea76cd2e7964be2a8d4222d9fcb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-11` - linux; amd64

```console
$ docker pull maven@sha256:a3759f7878524e34a07aa7c093ddf502c91e510fa8bbd57a1f1bde1a8a781ce1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **516.8 MB (516817483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fef7b609d54eba02d2d64f70cf143972a5ef37b13a3fff173932142193d77d6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:15:47 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:15:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:15:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:15:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 18 Oct 2018 23:59:14 GMT
ENV JAVA_VERSION=11.0.1
# Thu, 18 Oct 2018 23:59:15 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 00:00:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 00:00:31 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:23:40 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:23:40 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:23:41 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:23:41 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:23:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:23:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:23:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:23:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:23:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:23:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:23:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:23:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15911fa38fedc7fe60b36c7f212701e72fe2b0c7a45daa0f30b963a310ff928c`  
		Last Modified: Tue, 16 Oct 2018 05:36:35 GMT  
		Size: 896.9 KB (896914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05608362f0e0dcb66c43d70328dfb62bed93a76eb965be517cfc5602db5080d6`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b557609cc1f07d388d0b34a27eed49a2db4309ab2a6008d7f9cb1346b6c8a587`  
		Last Modified: Tue, 16 Oct 2018 05:36:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea98ccfb6f5f7fe3048132dbd70dca830c564b8abe7f873d004e6d3a9ee9bf2`  
		Last Modified: Fri, 19 Oct 2018 00:08:57 GMT  
		Size: 389.0 MB (389036868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658f00c8d389eee4f49b2a29b83db709542df2ec62ab07533e2821391f5592b`  
		Last Modified: Fri, 02 Nov 2018 22:31:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83adf8bd37490bf9fd058b7f2167b5fcbb00903b394886c6b40917caf8271433`  
		Last Modified: Fri, 02 Nov 2018 22:31:47 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac148c5fdb3197dcb06623d242bf81ea2f581e2b6f328d6a0d87c6d8ad6d61d`  
		Last Modified: Fri, 02 Nov 2018 22:31:46 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eab68e17b5c662cb619b9a8ff59b49441848a863aa9e1aae92f98273b977c48`  
		Last Modified: Fri, 02 Nov 2018 22:31:46 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-11-slim`

```console
$ docker pull maven@sha256:c14615cc099ac1107a45b46cc2ab00153e7261abfa3457f40a4ed1cad02a6617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `maven:3-jdk-12`

```console
$ docker pull maven@sha256:97794ba2c4e9cdd873a70bdad1ca581b5e1a4bf3da5e83c3c48dbe002ee790b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-12` - linux; amd64

```console
$ docker pull maven@sha256:9630c514e7b3b69b84edb68554165a61f3d88fa676a09aaf87d3e1dcf20da22d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252856011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d8284707707a153c23a8a141c4f3a603efa87ed1707c85cd2a730fe5379408`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 30 Aug 2018 21:49:27 GMT
MAINTAINER Oracle Linux Product Team <ol-ovm-info_ww@oracle.com>
# Tue, 16 Oct 2018 21:38:24 GMT
ADD file:fbe6533ea9111b27c121848a809a9c839ffe3d74cb1695643ebd19d9899c8e4e in / 
# Tue, 16 Oct 2018 21:38:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Oct 2018 22:02:16 GMT
RUN set -eux; 	yum install -y 		gzip 		tar 				freetype fontconfig 	; 	rm -rf /var/cache/yum
# Tue, 16 Oct 2018 22:02:16 GMT
ENV JAVA_HOME=/usr/java/openjdk-12
# Tue, 16 Oct 2018 22:02:17 GMT
ENV PATH=/usr/java/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Oct 2018 20:23:51 GMT
ENV JAVA_VERSION=12-ea+17
# Fri, 26 Oct 2018 20:23:51 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/17/GPL/openjdk-12-ea+17_linux-x64_bin.tar.gz
# Fri, 26 Oct 2018 20:23:52 GMT
ENV JAVA_SHA256=68a4cafbb0325ad89efa67c36aa46788fcf076721d73e479bd84d735d62ccd1f
# Fri, 26 Oct 2018 20:24:31 GMT
RUN set -eux; 		curl -fL -o /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 26 Oct 2018 20:24:39 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:24:28 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:24:28 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:24:29 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:24:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:24:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:24:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:24:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:24:32 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:24:32 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:24:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:24:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e64f6e679e1aa8acf7118fe395ca9c3ee44b10f3d83b02c381afb68551ba3f67`  
		Last Modified: Tue, 16 Oct 2018 21:41:42 GMT  
		Size: 42.4 MB (42414111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66bec2b4dfe78001e661f43e29dee27e9bbefffea6e1ec67c24a171d64695809`  
		Last Modified: Tue, 16 Oct 2018 22:05:40 GMT  
		Size: 4.4 MB (4374701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e07188eb4e4ff656de38d92d6e2ce5b660a572ad5d307d225892f1da9288026`  
		Last Modified: Fri, 26 Oct 2018 20:33:06 GMT  
		Size: 197.0 MB (196977004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ac1c723c16ad24892a2e482a5add27d9b1830008ee5d4ca1c951c9b58ef483`  
		Last Modified: Fri, 02 Nov 2018 22:33:43 GMT  
		Size: 9.1 MB (9089085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129e57495afcb5e30ca85c9310b79e4b841702449e33b1bc771c7f414fabb2e8`  
		Last Modified: Fri, 02 Nov 2018 22:33:42 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa842fdc7850e56cf0dca0ef124cddee8b89c14441641a3425f7a3f74806495`  
		Last Modified: Fri, 02 Nov 2018 22:33:42 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-12-alpine`

```console
$ docker pull maven@sha256:6ee27e44a0054f07c21a4d27d96afac724a42a0ac262ffdbd5d18721841367e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-12-alpine` - linux; amd64

```console
$ docker pull maven@sha256:329bb6560f1e5b553a92d8299be730081c48cc493f0ef6b742cac410830eaff4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.9 MB (209895578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df11e0e85b11d68ffbab60631760dfd43adda917b211d9ca0cd60aa28c973162`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 02 Oct 2018 17:36:08 GMT
ENV JAVA_HOME=/opt/openjdk-12
# Tue, 02 Oct 2018 17:36:08 GMT
ENV PATH=/opt/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Oct 2018 22:21:39 GMT
ENV JAVA_VERSION=12-ea+14
# Tue, 09 Oct 2018 22:21:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/14/binaries/openjdk-12-ea+14_linux-x64-musl_bin.tar.gz
# Tue, 09 Oct 2018 22:21:40 GMT
ENV JAVA_SHA256=172c7d7c6859253822e03f0839f83627ffe06055f118423c6ef619a1af836b4c
# Tue, 09 Oct 2018 22:23:04 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Tue, 09 Oct 2018 22:23:10 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:24:00 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:24:01 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:24:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:24:01 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:24:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:24:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:24:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:24:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:24:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:24:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:24:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:24:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e5f2e0fe39aa02c5b89c1b82cbf447b2799dfeb96ae4c4f3297bb1769d19b8`  
		Last Modified: Tue, 09 Oct 2018 22:24:47 GMT  
		Size: 196.2 MB (196162746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4180133f4f864c9f17d64e36c6233d858eb8519b2196b571fc0be8dfae696e4a`  
		Last Modified: Fri, 02 Nov 2018 22:32:44 GMT  
		Size: 2.4 MB (2436870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2443f486063dd2e162e6ae698a67a72dbd647a3d3827954e6ed7a162b18606`  
		Last Modified: Fri, 02 Nov 2018 22:32:46 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fd3eef23921ca4e92cb8427cfe6bda4b69aaf2aaa30ab75af811a8caf802c8`  
		Last Modified: Fri, 02 Nov 2018 22:32:44 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612adce41739fcd8e7895f0290583657967db1b3bf0b3002b59280d1262e800c`  
		Last Modified: Fri, 02 Nov 2018 22:32:44 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:448458f258ab35cf217b16425ed7e80541e5b1258edaea08c75626963e2b08a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:26d581608f4c322e5e3073dcdc26329d5e60698b8d2fd82b8d1a908b125de8cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.8 MB (222824410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8802d4d92a74941ef1d3c7e0e9991b68a7543d59d1d6269974143b13061c402e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:54:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:54:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:55:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:30:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:30:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:30:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:30:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:30:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:30:19 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 05:30:19 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 05:31:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 02 Nov 2018 22:25:51 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:25:51 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:25:51 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:25:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:25:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:25:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:25:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:25:54 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:25:54 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:25:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:25:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa696905a59054a0875af6a9b054edd282710a6e885c03514cc9e685aa31ca7a`  
		Last Modified: Tue, 16 Oct 2018 01:09:21 GMT  
		Size: 17.5 MB (17538611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dd2322bbef2cf5fc00a84425ab08febcb9cd378326afc9cdc954257f9daf67`  
		Last Modified: Tue, 16 Oct 2018 01:09:51 GMT  
		Size: 43.3 MB (43303672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bf78e897aa028eff4f0b5d46900204bc63b4742d75b6162fd0fc4a662fabd5`  
		Last Modified: Tue, 16 Oct 2018 06:00:44 GMT  
		Size: 828.2 KB (828217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3e0783f7ce325241c3fbdf73b0fc6e8a130ec6835e864822a88306030a7515`  
		Last Modified: Tue, 16 Oct 2018 06:00:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642aa9d6e20eb3d4fbd975459dc0374d81a5c6f3440d94691e36d800f6e3ec3`  
		Last Modified: Tue, 16 Oct 2018 06:00:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276ed06c956f7df5450e89710f0b43b65a6b613a80beba8ade23806127fa1c9`  
		Last Modified: Tue, 16 Oct 2018 06:00:57 GMT  
		Size: 97.8 MB (97812362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4028a8008a0373dc6db05921e71157536907ecb567e1728aba9062dfd155cb17`  
		Last Modified: Fri, 02 Nov 2018 22:36:22 GMT  
		Size: 9.1 MB (9087931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b86dade2b106744a40d34509f4b359df7ac4cc582baec08bc83a76eab75a612`  
		Last Modified: Fri, 02 Nov 2018 22:36:21 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd15a917f9c9b29ef14e4d049624a928846d4f8fe423a80f65447cca225e4fd0`  
		Last Modified: Fri, 02 Nov 2018 22:36:21 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:ccd88fb3fb79b290d40b1823f5408a1077a9614329a0b9ed7f848edc6c1d14db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

```console
$ docker pull maven@sha256:59d1660aefae3b58d615372939e68cde114e466658579219f230302d595e0fdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91737678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32b405af15afb1cd13d1f2e987a59917a87a85c8e0b398d6b5493c4f3d740b7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 12 Sep 2018 00:07:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 12 Sep 2018 00:07:43 GMT
ENV JAVA_VERSION=7u181
# Wed, 12 Sep 2018 00:07:43 GMT
ENV JAVA_ALPINE_VERSION=7.181.2.6.14-r0
# Wed, 12 Sep 2018 00:07:54 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 03:43:36 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:24:47 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:24:48 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:24:48 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:24:48 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:24:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:24:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:24:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:24:52 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:24:52 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:24:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:24:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6051d9c702c379e5b8d92873df91dca3b2f03b1eb34425adc145799bb896d30`  
		Last Modified: Wed, 12 Sep 2018 00:11:30 GMT  
		Size: 78.3 MB (78264718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a6e8908daac216a07f0e26370d1d0752a5b657496db726784d3e7c5a146e61`  
		Last Modified: Wed, 12 Sep 2018 03:44:39 GMT  
		Size: 2.2 MB (2176746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c01b0602e003ba958c48c9a000883765dc1ae55caa45788939bb74f8dd719`  
		Last Modified: Fri, 02 Nov 2018 22:34:29 GMT  
		Size: 9.1 MB (9087933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845bf8dcd0d2ec52bc7339fee5bd10d87151e6e404890ff2cde4df77b94533b5`  
		Last Modified: Fri, 02 Nov 2018 22:34:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1faa08b64e4d8aa4385dfc151c2bd22f22352a7a59a6f1d91d0a115f508b3af`  
		Last Modified: Fri, 02 Nov 2018 22:34:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:6aae4753d2f47272e73305c88bcc525539c7717683dbf95d2cf4a1435cdd94e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:0b6cb2957f10c2a39637417fec6415c0aeb5dbb28cd92f335440fd530db43fa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126137453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14584f6f7cc02548db93ef34236f73466e7de0a6f793e7e8fc94d98ce217aeb8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:32:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:32:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:32:09 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_VERSION=7u181
# Tue, 16 Oct 2018 05:32:10 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 16 Oct 2018 05:33:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 02 Nov 2018 22:25:07 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:25:07 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:25:07 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:25:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:25:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:25:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:25:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:25:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:25:34 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:25:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:25:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:25:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8defe034fd48900ab2c6e8bd0efb090a2e8d7dc437c82e961339ec4ad7737`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 463.7 KB (463743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d8dad75e602d23f8d377d9e8981537f979365546442ee03aabbe7a2826ae42`  
		Last Modified: Tue, 16 Oct 2018 06:03:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad497c7359958782aa0f99bcc986a3e88be017a1052c80d1f7b51d886c93c462`  
		Last Modified: Tue, 16 Oct 2018 06:03:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba98c252b6c1ff288a099f0b1e4e66dfe9fa004e77bfc35b8e870837db911666`  
		Last Modified: Tue, 16 Oct 2018 06:03:27 GMT  
		Size: 85.2 MB (85206189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3ec21f3dee977347ac9cf1dde7c625a42a851a0975b9dce9a93b4d89452582`  
		Last Modified: Fri, 02 Nov 2018 22:35:18 GMT  
		Size: 1.3 MB (1257483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a04c501f352744c69b0705f7e3b6c10f228fdd1ff4f85597daf7f677a077f7`  
		Last Modified: Fri, 02 Nov 2018 22:35:18 GMT  
		Size: 9.1 MB (9087926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757d0b0673c3e631024f41594a1ab3924df0976b2536eeb5e2e1f9d7b4600100`  
		Last Modified: Fri, 02 Nov 2018 22:35:17 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f47e849af38363404e95b0ae4e802524f8de34c158a7a3329b87dcfb30cf17`  
		Last Modified: Fri, 02 Nov 2018 22:35:17 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:90d89fe14d58af2f60fe5b3715bf0a44aeedfc9c03703bbe8a8aea6a0fd65a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

```console
$ docker pull maven@sha256:5e5f82d62c6ad0cd140cb9bee2488e3c7164a8c7e1dcc086c77e5b41c32e360a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254655014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9502b11ef5292320e9c87e2c76f0f2c889a054ceee2a1e04176c859621be21b4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:28:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:28:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:29:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:29:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:52 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:52 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:53 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c0e52d1ec297a9ade35f6b17bcf69d959bb1f16c506290f29af5513b0cdabd`  
		Last Modified: Mon, 29 Oct 2018 23:34:50 GMT  
		Size: 134.0 MB (133974982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d22bc4393511e7d49d7bb83b5b2dcc95cde66f54a69099421c65928e873e9c`  
		Last Modified: Mon, 29 Oct 2018 23:34:21 GMT  
		Size: 246.7 KB (246716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bf5e6b8346c04fe65194154c8f9b5a75b85b0cc14210529995f3df30ec08b6`  
		Last Modified: Fri, 02 Nov 2018 22:41:30 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3943ccaa27c99dd82b8e31e12d59db777de844d47ea141560a2330e7c042c6`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e78afe180e715ab8130710e1ec68008ae47abc00c022ac3d077f1382d0d674`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:9f212a24a2f033808ef9d7853c2dc786e06b163c9b6c06fcb84f865d040c865f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:bc4f01c7f98ec1ef69f75c49ca0009ccd8c62573c0cacc7a0ef44a2e2c14af4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84071970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f92f93bc47f7e20cf12c067a992d70e870b53b2a7e889bb533b1c221161ad9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:57:12 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:26:09 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:09 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:09 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f88801c955d02aa49c59b4ff045f9b5f57dfa39c7f639c1dc5ab15759d695f6`  
		Last Modified: Wed, 24 Oct 2018 23:59:43 GMT  
		Size: 2.2 MB (2165224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d19156f2b5c9c2cea402717329551b4cf21439a66fb506f71227d680ed1b93`  
		Last Modified: Fri, 02 Nov 2018 22:37:25 GMT  
		Size: 9.1 MB (9087939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f463bce551589717354fc1ea9abfda22f3b280570f682b766705cc065c63d5`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c3da39569a1ace9636d9061ce6e58da3fa9be2d34f2fca4fddbb7add36e1c`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-slim`

```console
$ docker pull maven@sha256:df7955f9831e713f917992a8733ac6fc9cba04cfe079ce9d9f91b636cf545a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:77e1cf8be9f11dcb7d4ead90549f7c02c62d2ea8fa62067646c37c2b4f40fde7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103723906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc214b652aa35b9c4099ff67e6175befb9386be6a657cf8e6bbdbd9e37bb91e2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:27:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:27:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:27:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:29:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:29:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:30:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:30:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:27 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:27 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:26:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c48fea920808538de92047d2615ee465bb0461b3a9c7030e22784400268ffc`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 454.8 KB (454840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beeeb05aa4653b87a6fa2268a20c197222c3223c01f5e20552ffaab449b6994`  
		Last Modified: Tue, 16 Oct 2018 05:56:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cf2782bd40eebe1d10c7efbde028e6c9321cd49331f11be5354633b0424a88`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c36b48cf1e371776a9e2d07b042373463ffbf2af7f0e5007df73bb426de33`  
		Last Modified: Mon, 29 Oct 2018 23:37:26 GMT  
		Size: 67.5 MB (67495071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425e838cd2fa8dcd9e00d2f53da4aea1f7982283b1640c3697bc50ba7ea8bba7`  
		Last Modified: Mon, 29 Oct 2018 23:37:11 GMT  
		Size: 246.7 KB (246685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25b515cabc0a4ebdc277535863af4a6505cfdf76d8f5c27b2c711d11cd71ed`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 4.0 MB (3951856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fc97111fbcd38b136f759f12edbeb7a296a7fca7be86c51b5c248ea0fecd78`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 9.1 MB (9087925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258a420bc5e72cb8b99584d684ada58b7b65d6487840b023057efa8a63e87598`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39237dcb7b5496c0b346b74e7891849346563d6541b11a19a6987ee06e7073b`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:9f212a24a2f033808ef9d7853c2dc786e06b163c9b6c06fcb84f865d040c865f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

```console
$ docker pull maven@sha256:bc4f01c7f98ec1ef69f75c49ca0009ccd8c62573c0cacc7a0ef44a2e2c14af4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84071970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f92f93bc47f7e20cf12c067a992d70e870b53b2a7e889bb533b1c221161ad9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:57:12 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:26:09 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:09 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:09 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f88801c955d02aa49c59b4ff045f9b5f57dfa39c7f639c1dc5ab15759d695f6`  
		Last Modified: Wed, 24 Oct 2018 23:59:43 GMT  
		Size: 2.2 MB (2165224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d19156f2b5c9c2cea402717329551b4cf21439a66fb506f71227d680ed1b93`  
		Last Modified: Fri, 02 Nov 2018 22:37:25 GMT  
		Size: 9.1 MB (9087939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f463bce551589717354fc1ea9abfda22f3b280570f682b766705cc065c63d5`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042c3da39569a1ace9636d9061ce6e58da3fa9be2d34f2fca4fddbb7add36e1c`  
		Last Modified: Fri, 02 Nov 2018 22:37:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:ibmjava`

```console
$ docker pull maven@sha256:51066a5dda2b473e79ed660fb34da83457ecb45933c1f2e5b29e989251515112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:c429789bf3f4a4560d5b03a9b897e7d0872e3d3087e9347e210e437b04e6a5a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.4 MB (242444607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b20ac590ea0be5878ce0fda8158e8b91505d54655054a29f730ae8e4583958`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:31:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 01:31:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:20:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:25:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='65717f402943895fcb46f235404647a63dc3a5b7defcff6fa327f201f3e11cf2';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='a107524bbbc79446ca7a651157c3fb94395df595fe5ce5b754d2dd7d61e526bf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4069e4b273da768294ca023dba5f6a2da005d4a712ebc2ee406116ecebdcf958';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0130d0abf94b43ee8fe5f48e4199db334403a5669f8dc45aab60548da6e25016';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5395c62e01743eb709f54253de14de5148023bf25ae460a3364a1af62c8ac64c';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 02 Nov 2018 22:25:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Nov 2018 22:27:34 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:34 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:35 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update && apt-get install -y curl   && mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:28:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:28:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:28:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:28:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:28:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28276d7851498aed83f57d54de769785ae5b0c665005245dcbfb33f63c023c1`  
		Last Modified: Fri, 19 Oct 2018 01:34:13 GMT  
		Size: 3.0 MB (3021267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8552f043c2ec3a1198d0d43cd503c2b872adafd3edc57e702abdad1b696e44dd`  
		Last Modified: Fri, 02 Nov 2018 22:32:38 GMT  
		Size: 164.3 MB (164258775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d46916dfebf745d26c37585c6ee1bd0010ae88efadd3a34144ed6a3694e7b38`  
		Last Modified: Fri, 02 Nov 2018 22:46:05 GMT  
		Size: 31.8 MB (31808969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5187d224b47cc5f89746b2d8afe539e094690391fb24f6c590a99629c91b0a5e`  
		Last Modified: Fri, 02 Nov 2018 22:46:00 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22748bc92569b21b77c7f26b1435cc5c8283088df6b4d9d9595b65f3631540b1`  
		Last Modified: Fri, 02 Nov 2018 22:46:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:ibmjava-alpine`

```console
$ docker pull maven@sha256:473417c0a8be1c38b7cad0910f768a3e7fe208284b555d510dc3310f68abaea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:ibmjava-alpine` - linux; amd64

```console
$ docker pull maven@sha256:00a411f5f396eaed0455d461403dc32a2e936c6cae9d722ed9aa9f36ad1228b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.2 MB (182194457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61fa943ea0143023fcd8605a16eadd54ac89c6d571dfeff718bd7cdf9353b61`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 28 Sep 2018 19:22:52 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 28 Sep 2018 19:27:18 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='5be5205ef921b9269bd7f84cf93322aeac2dbcf08536fdf38b1dd2036f8911b9';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='da3c6dcb264508a29a505567f58c49c77594d5a6102a7e678f5b35aff79549fc';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='51d53f86d79f5d1fd16a7ed11b305f140aa1b0946221f307334f310312e9f2b6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='17436a485322009b9d402a977a7fef9e6d14a062665e13f7a21962a695f6c989';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='6635bebc3108d0210eef7c75b76b7d3944d163b2374522fcd22570288d602a13';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 28 Sep 2018 19:27:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Sep 2018 20:02:16 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 02 Nov 2018 22:27:14 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:27:14 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:27:14 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:27:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:27:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:27:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:27:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:27:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:27:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47295dbbc880ca7e1c2df482819138b0c13d49d78101b77791d29deb63febfc1`  
		Last Modified: Fri, 28 Sep 2018 19:30:54 GMT  
		Size: 164.2 MB (164169142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1083113fe6e4e9d5e44af43c00f2561d06fe71a33cf77ef6a8af7b55a66cb2f`  
		Last Modified: Fri, 28 Sep 2018 20:03:25 GMT  
		Size: 2.3 MB (2310086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec82ba401ba2958532e1c1a13c378449accc4982bafebbce2ed5bbf6470b0564`  
		Last Modified: Fri, 02 Nov 2018 22:43:55 GMT  
		Size: 9.1 MB (9087921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4aa215a93973d6cf8dec66a2ea1a0685b55e9b1e9b0b0b2aada196f16e25f44`  
		Last Modified: Fri, 02 Nov 2018 22:43:57 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9cd5b54b127a47200029f13fad1fcfdd75c24f5dcd963489e88c97e1e6c2d`  
		Last Modified: Fri, 02 Nov 2018 22:43:54 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:90d89fe14d58af2f60fe5b3715bf0a44aeedfc9c03703bbe8a8aea6a0fd65a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

```console
$ docker pull maven@sha256:5e5f82d62c6ad0cd140cb9bee2488e3c7164a8c7e1dcc086c77e5b41c32e360a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254655014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9502b11ef5292320e9c87e2c76f0f2c889a054ceee2a1e04176c859621be21b4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:28:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:28:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:29:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:29:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:52 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:52 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:53 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c0e52d1ec297a9ade35f6b17bcf69d959bb1f16c506290f29af5513b0cdabd`  
		Last Modified: Mon, 29 Oct 2018 23:34:50 GMT  
		Size: 134.0 MB (133974982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d22bc4393511e7d49d7bb83b5b2dcc95cde66f54a69099421c65928e873e9c`  
		Last Modified: Mon, 29 Oct 2018 23:34:21 GMT  
		Size: 246.7 KB (246716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bf5e6b8346c04fe65194154c8f9b5a75b85b0cc14210529995f3df30ec08b6`  
		Last Modified: Fri, 02 Nov 2018 22:41:30 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3943ccaa27c99dd82b8e31e12d59db777de844d47ea141560a2330e7c042c6`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e78afe180e715ab8130710e1ec68008ae47abc00c022ac3d077f1382d0d674`  
		Last Modified: Fri, 02 Nov 2018 22:41:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:slim`

```console
$ docker pull maven@sha256:df7955f9831e713f917992a8733ac6fc9cba04cfe079ce9d9f91b636cf545a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:slim` - linux; amd64

```console
$ docker pull maven@sha256:77e1cf8be9f11dcb7d4ead90549f7c02c62d2ea8fa62067646c37c2b4f40fde7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103723906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc214b652aa35b9c4099ff67e6175befb9386be6a657cf8e6bbdbd9e37bb91e2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:27:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:27:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:27:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:29:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:29:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:30:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:30:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:27 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:27 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:26:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c48fea920808538de92047d2615ee465bb0461b3a9c7030e22784400268ffc`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 454.8 KB (454840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beeeb05aa4653b87a6fa2268a20c197222c3223c01f5e20552ffaab449b6994`  
		Last Modified: Tue, 16 Oct 2018 05:56:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cf2782bd40eebe1d10c7efbde028e6c9321cd49331f11be5354633b0424a88`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c36b48cf1e371776a9e2d07b042373463ffbf2af7f0e5007df73bb426de33`  
		Last Modified: Mon, 29 Oct 2018 23:37:26 GMT  
		Size: 67.5 MB (67495071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425e838cd2fa8dcd9e00d2f53da4aea1f7982283b1640c3697bc50ba7ea8bba7`  
		Last Modified: Mon, 29 Oct 2018 23:37:11 GMT  
		Size: 246.7 KB (246685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25b515cabc0a4ebdc277535863af4a6505cfdf76d8f5c27b2c711d11cd71ed`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 4.0 MB (3951856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fc97111fbcd38b136f759f12edbeb7a296a7fca7be86c51b5c248ea0fecd78`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 9.1 MB (9087925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258a420bc5e72cb8b99584d684ada58b7b65d6487840b023057efa8a63e87598`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39237dcb7b5496c0b346b74e7891849346563d6541b11a19a6987ee06e7073b`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

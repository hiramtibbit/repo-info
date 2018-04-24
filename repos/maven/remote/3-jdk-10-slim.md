## `maven:3-jdk-10-slim`

```console
$ docker pull maven@sha256:0e58046343bd308bf4a0e4257e0937ce8c3c5d3bf09a36fa90c2e2df1dee5205
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

### `maven:3-jdk-10-slim` - linux; amd64

```console
$ docker pull maven@sha256:55ba6c2a91420a937aac645a1646a125b97dd4b590ea85f670c8847519204cf0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278053102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00c46ea576a29109c6db4156bac9b10687cbf00e8aa77ea12fefe5ff1ce4004c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:43 GMT
ADD file:abc56f5a5510633481f0de7469b312f4f4cdcfbbe92bf1d7bddb5d716a2a5820 in / 
# Tue, 13 Mar 2018 22:21:44 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:56:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:30:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:30:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 19 Apr 2018 23:13:58 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 19 Apr 2018 23:13:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Apr 2018 02:22:00 GMT
ENV JAVA_VERSION=10.0.1+10
# Sat, 21 Apr 2018 02:22:00 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-2
# Sat, 21 Apr 2018 02:26:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 21 Apr 2018 02:26:54 GMT
CMD ["jshell"]
# Sat, 21 Apr 2018 05:45:51 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 21 Apr 2018 05:45:51 GMT
ARG USER_HOME_DIR=/root
# Sat, 21 Apr 2018 05:45:52 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 21 Apr 2018 05:45:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 21 Apr 2018 05:46:02 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 21 Apr 2018 05:46:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 21 Apr 2018 05:46:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 21 Apr 2018 05:46:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 21 Apr 2018 05:46:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 21 Apr 2018 05:46:06 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 21 Apr 2018 05:46:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 21 Apr 2018 05:46:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 21 Apr 2018 05:46:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8d602e635a7063b254ddcd64997153b2e8f74c29ff4648089ae116a4ca3ea8e3`  
		Last Modified: Tue, 13 Mar 2018 22:50:19 GMT  
		Size: 25.7 MB (25713113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b0cb5bfff7921055b3160e463c0cbbd0da8804c54c0e81870e32789de17696`  
		Last Modified: Wed, 14 Mar 2018 11:50:29 GMT  
		Size: 460.3 KB (460326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aaf5b382af90e713d7581c352ac81060358c641b90a3708b45268486ae3911`  
		Last Modified: Wed, 14 Mar 2018 12:30:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698e5cb98f91351dfeafe8378be5331b8d3a8a1dd8a770085fcf057f190c0959`  
		Last Modified: Fri, 20 Apr 2018 01:51:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054e20e3675e5b26c4b79c527eff06c6d0402a41bcdde09f0a931d82ef905a43`  
		Last Modified: Sat, 21 Apr 2018 02:46:54 GMT  
		Size: 239.7 MB (239747037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a25eb2233a2bd83bd0b309b1a2ef9444d059d94bcda89ee048cf6d6d5dc4eb6b`  
		Last Modified: Sat, 21 Apr 2018 06:09:13 GMT  
		Size: 3.2 MB (3184925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a877ed40b81860521d48ad1516763b5f5cabb761e8a7d7b1a4675b3d02ba742`  
		Last Modified: Sat, 21 Apr 2018 06:09:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24528ff2f4a906e55a69b71d5cf4b5a4165f4592602e68f9ff883851939aded8`  
		Last Modified: Sat, 21 Apr 2018 06:09:13 GMT  
		Size: 8.9 MB (8946002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dcc9439832e349fa9e2a6e0e6d3685876e0c6204b8d8e120e453cb849bf8b28`  
		Last Modified: Sat, 21 Apr 2018 06:09:12 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d5acff20c2d4b77d915112f0aeb32ef348fa5179548014aadd8c7c804aa17b`  
		Last Modified: Sat, 21 Apr 2018 06:09:12 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:b69c1d5a75bce1f30ff477148f3197680e93ca3c0650454495e756630803930d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245801601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a207e447a2d2cced82adf1a0ae784d30ce318fdc5d2a2f94b0bd22899ee88e7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 19:59:20 GMT
ADD file:b829fe1b85a76eaae255627baf7572a89310e31a86d94c40353cdf5184a08296 in / 
# Wed, 14 Mar 2018 19:59:21 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:37:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:42:18 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:42:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 09:00:30 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 09:00:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Apr 2018 08:50:05 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 24 Apr 2018 08:57:19 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-3
# Tue, 24 Apr 2018 09:01:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 24 Apr 2018 09:01:41 GMT
CMD ["jshell"]
# Tue, 24 Apr 2018 09:29:46 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 24 Apr 2018 09:29:46 GMT
ARG USER_HOME_DIR=/root
# Tue, 24 Apr 2018 09:29:47 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 24 Apr 2018 09:29:47 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 24 Apr 2018 09:30:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 09:30:04 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Tue, 24 Apr 2018 09:30:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 24 Apr 2018 09:30:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 24 Apr 2018 09:30:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 24 Apr 2018 09:30:13 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 24 Apr 2018 09:30:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 24 Apr 2018 09:30:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 24 Apr 2018 09:30:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1df428c58793052c39aa67c5a0cfc437c4f5e97e12915970ffa3b5a637915c81`  
		Last Modified: Wed, 14 Mar 2018 20:10:52 GMT  
		Size: 23.7 MB (23719570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea34fa7879bc512ea22a1ff5fd2caeccec4a4a30a175ae662a07c22e57532a`  
		Last Modified: Wed, 14 Mar 2018 23:01:39 GMT  
		Size: 453.8 KB (453792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d53ef6ceaeefa22395981d0871593abdf315d62946258906c10c78378424bd2`  
		Last Modified: Wed, 14 Mar 2018 23:01:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e792449796f21c2e9f8f590786d5922ffa6a51d2a45e75de8feb6ebca3f7c`  
		Last Modified: Fri, 20 Apr 2018 09:12:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b6a911bbebf63f8415ecc5b5fe580f940199109c35d86a3c6c6f596e784b88`  
		Last Modified: Tue, 24 Apr 2018 09:09:51 GMT  
		Size: 210.0 MB (209991463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f866cd354b15a6f5daec7438fa35c4c9359b0efcb656549b25fc9d43eb34acf`  
		Last Modified: Tue, 24 Apr 2018 09:31:28 GMT  
		Size: 2.7 MB (2688945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:becde34dfc1af596de83f61ef6017e5e544cfb8ce4e1d42f005ff7a046344e26`  
		Last Modified: Tue, 24 Apr 2018 09:31:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38deb8cd3f0bd9d45b777331135a3a2e313e07795de061a990a7828ce70444c`  
		Last Modified: Tue, 24 Apr 2018 09:31:28 GMT  
		Size: 8.9 MB (8946134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec53abca3e3faf6ca3d2b5e04c8348719e2d14b0d96bb101fdc48de92c2383a9`  
		Last Modified: Tue, 24 Apr 2018 09:31:28 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9637b97586899089e22b492392c67a6083c02eb60b64852b236c6b4227cbd1e`  
		Last Modified: Tue, 24 Apr 2018 09:31:27 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:b8f9e2c0fa90f9e933afddb2ea2cb86a306b8a2b7582367d58626dceff24db81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244416839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19ec18b70e5f5d167bf690ff1b8de99b4bed1cbe6e7d8cf186709f5ceb05a3b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 12:30:51 GMT
ADD file:01a57c20f154d841f3d0067187339035634947891cdd63b93cf26c052ccec8a9 in / 
# Wed, 14 Mar 2018 12:30:52 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:49:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:56:59 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 13:57:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 12:05:34 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 12:05:34 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 20 Apr 2018 12:05:35 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 20 Apr 2018 12:05:35 GMT
ENV JAVA_DEBIAN_VERSION=10~46-5
# Fri, 20 Apr 2018 12:09:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 20 Apr 2018 12:09:03 GMT
CMD ["jshell"]
# Fri, 20 Apr 2018 12:35:35 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 20 Apr 2018 12:35:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Apr 2018 12:35:35 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 20 Apr 2018 12:35:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 20 Apr 2018 12:35:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 20 Apr 2018 12:35:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 20 Apr 2018 12:35:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 20 Apr 2018 12:35:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Apr 2018 12:35:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Apr 2018 12:35:51 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 20 Apr 2018 12:35:52 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 20 Apr 2018 12:35:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Apr 2018 12:35:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:eb4d24f57aa2e9887d736ab5ae837254043a7420798488e113011250c3d45c6b`  
		Last Modified: Wed, 14 Mar 2018 12:42:40 GMT  
		Size: 21.7 MB (21736182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6632e794ba04784b0b45265566f4f18a26d40bdfdd4aa6726c2df55600f62e`  
		Last Modified: Wed, 14 Mar 2018 14:18:56 GMT  
		Size: 436.4 KB (436377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e62fee9928c709ea5d7c9da848769f94473ffc5f05cbc085072d2748d08a374`  
		Last Modified: Wed, 14 Mar 2018 14:28:29 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71eb05175abb2819c084eaf8e1e8d31eff017024030aeb8acafae1c46425308d`  
		Last Modified: Fri, 20 Apr 2018 12:14:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29244b2aebcfd029527de6b332914c1d31fc035564a3abca4768384d84f4616a`  
		Last Modified: Fri, 20 Apr 2018 12:18:30 GMT  
		Size: 210.7 MB (210747431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d4d5d87eef4b96dc0b4841d3b4ee0b0f9dfac56bc7603955570dd5879c6e24`  
		Last Modified: Fri, 20 Apr 2018 12:37:38 GMT  
		Size: 2.5 MB (2549012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f52725295adbe8ba07d9b6fd4e3f0ffba14d5db6befd0f1ae4c0850cd8dc6c3`  
		Last Modified: Fri, 20 Apr 2018 12:37:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2475d0a3a0ce0136c640f75e7a9747afa36c52b2d311fe0de63123150583ff3`  
		Last Modified: Fri, 20 Apr 2018 12:37:38 GMT  
		Size: 8.9 MB (8946136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1e072b1a4cc2b552c885c0998f15c77a25d634e4804dd248f90d3a464e47ec`  
		Last Modified: Fri, 20 Apr 2018 12:37:37 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e615a3f0c403bc735de15e5b9dba51496f5b24ece8c2369cf0d8ace21f54a74`  
		Last Modified: Fri, 20 Apr 2018 12:37:37 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:60c468f7fde41309fd0d38092b3a65fb6bcb0325dfa078e54b556b60f28ea7ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250699881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72b4f7161b43dba99ce1e98c97dba29279345cf6a9f468dbbd91cd94877f488`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 17:28:31 GMT
ADD file:e02f4f3766155e52cc84a63120d6a2789b8ecbc9d3d5311e6fde66f676f7bb09 in / 
# Wed, 14 Mar 2018 17:28:32 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 19:56:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:20:33 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:20:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 09:21:47 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 09:21:48 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Apr 2018 09:06:09 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 24 Apr 2018 09:40:16 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-3
# Tue, 24 Apr 2018 09:58:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 24 Apr 2018 09:58:07 GMT
CMD ["jshell"]
# Tue, 24 Apr 2018 10:57:57 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 24 Apr 2018 10:57:57 GMT
ARG USER_HOME_DIR=/root
# Tue, 24 Apr 2018 10:57:58 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 24 Apr 2018 10:58:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 24 Apr 2018 10:58:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 10:58:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Tue, 24 Apr 2018 10:58:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 24 Apr 2018 10:59:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 24 Apr 2018 10:59:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 24 Apr 2018 10:59:09 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 24 Apr 2018 10:59:09 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 24 Apr 2018 10:59:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 24 Apr 2018 10:59:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:793dde53d6e905ab81ddaae8c8ff711e51c5782e6ff5c8065a2f2017b116e00c`  
		Last Modified: Wed, 14 Mar 2018 17:43:12 GMT  
		Size: 23.1 MB (23087383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd912422d8771b9bce422bc6af0c49132976576aa3834e0baccfc7c50ebd2ef9`  
		Last Modified: Wed, 14 Mar 2018 21:04:08 GMT  
		Size: 445.1 KB (445107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d547b26b9f7cb3ede348dd4e8f8d68fbb9c762a4bcd74738fd220c848c542972`  
		Last Modified: Wed, 14 Mar 2018 21:22:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8eec43cd732f281b64f931a62a2d9989d1a71fa6afb046b23fc337126ff22b`  
		Last Modified: Sat, 21 Apr 2018 09:26:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db2489cfba06601c740a843718ef68b4c421358720ecb137d70a9ef7ee38eab`  
		Last Modified: Tue, 24 Apr 2018 10:21:18 GMT  
		Size: 215.5 MB (215508507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c31b207018021633b315e9982ee70bc29ea342aa4655461472e05d72020d21e`  
		Last Modified: Tue, 24 Apr 2018 11:03:34 GMT  
		Size: 2.7 MB (2711180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ef6381a58211ace1aaa57e4dfd7b4c847301c4f46c6b017e9ae565eda025df`  
		Last Modified: Tue, 24 Apr 2018 11:03:32 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1503d42a7aa42d87ab9e5a5d633d1ae97d5278864c0b19a725bcc4387c31fe7`  
		Last Modified: Tue, 24 Apr 2018 11:03:34 GMT  
		Size: 8.9 MB (8946000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1465d35eab8ed1c37dd396e3056fa16992bdde7b390d30655d79cb6c1f494ed5`  
		Last Modified: Tue, 24 Apr 2018 11:03:32 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba4a315f575e2fde33bea394d49aad2627f15c0f99677bfbb32c990d3df96de`  
		Last Modified: Tue, 24 Apr 2018 11:03:32 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; 386

```console
$ docker pull maven@sha256:8c252e1248b1e3d3b1df4fbcb0b727d3d7e49476fa5eb3a0ace531c61d37f436
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.4 MB (285368806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95b11fbf51c326c8ce310234b41c1e9499cc0e4497905a4be9036a9f56c7ba3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Mar 2018 15:31:00 GMT
ADD file:d1c19ab632aa3b287544e9da0740ffc15f79bb20b8c85b2a152d294a61a3aff4 in / 
# Tue, 27 Mar 2018 15:31:00 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 02:47:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:47:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Sat, 14 Apr 2018 02:47:09 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:47:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:47:10 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:47:10 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:47:10 GMT
ENV JAVA_VERSION=10-ea+46
# Sat, 14 Apr 2018 02:47:11 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Sat, 14 Apr 2018 02:50:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:50:52 GMT
CMD ["jshell"]
# Sat, 14 Apr 2018 05:47:28 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 14 Apr 2018 05:47:28 GMT
ARG USER_HOME_DIR=/root
# Sat, 14 Apr 2018 05:47:28 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 14 Apr 2018 05:47:28 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 14 Apr 2018 05:47:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:47:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 14 Apr 2018 05:47:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 14 Apr 2018 05:47:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 14 Apr 2018 05:47:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 14 Apr 2018 05:47:47 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 14 Apr 2018 05:47:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 14 Apr 2018 05:47:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 14 Apr 2018 05:47:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bfa9140a49a214e9eec99cc78f98d2b195eb9bcaff910fee3ae80f19dcd425b4`  
		Last Modified: Thu, 15 Mar 2018 01:13:45 GMT  
		Size: 26.4 MB (26401611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71818a32b1cd6739ae5ab427d699dae5ea7139c618d7360dc08e3febf6a7c4c`  
		Last Modified: Sat, 14 Apr 2018 03:09:51 GMT  
		Size: 468.9 KB (468935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a35f450ff491708be9b905d67d313e0f8857a2d57e53c22cf8feadc8aa7da00`  
		Last Modified: Sat, 14 Apr 2018 03:09:51 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90d9cc100b7316396b5b586b5935db505d88a7229b1960174beb8c0db9ee768`  
		Last Modified: Sat, 14 Apr 2018 03:09:51 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0c19dd2d9b7886dc25e8bccb9833d3841d244400f42de819aa89083144280a`  
		Last Modified: Sat, 14 Apr 2018 03:09:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06b42cadce880ffa769383464a37da15eca10af7d2456f5b182f455df7a9833`  
		Last Modified: Sat, 14 Apr 2018 03:13:05 GMT  
		Size: 246.5 MB (246458157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51fdeb60ec253ab128222922074923df61f5e6c5ff2a0998bc27b6aabf265b7`  
		Last Modified: Sat, 14 Apr 2018 05:50:25 GMT  
		Size: 3.1 MB (3092208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de45c719fc7815ef80fe7114464c0136e31361af06a71c47ed6e7854705fd7db`  
		Last Modified: Sat, 14 Apr 2018 05:50:25 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa8c8b13a680ce610f58bd772f0042d86066045dde142eda7ea4656c3588c6`  
		Last Modified: Sat, 14 Apr 2018 05:50:26 GMT  
		Size: 8.9 MB (8945972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1a314366ddb5dc00702e10a50b90e30adfe74d9b28b3c97c56f12ef1d5e855`  
		Last Modified: Sat, 14 Apr 2018 05:50:24 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dd16b325869841611d769903fb6173a4b9b351de639534d9b8780033a341b7`  
		Last Modified: Sat, 14 Apr 2018 05:50:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:9d1efe3b823d7845aca2f5e530a9ac65dcaa9442f408b16c5d3815e525cdda19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262277191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d8211027790e4a82a8d19b840c88b902f2f031ba97cb888e67d588eecf4f4a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:55 GMT
ADD file:e890898916a686430a0d7cea9f16c3859f35938952b26ba20163570f64ab383c in / 
# Wed, 14 Mar 2018 00:33:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:03:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:18:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 20 Apr 2018 08:50:17 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 20 Apr 2018 08:50:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Apr 2018 08:24:53 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 24 Apr 2018 08:48:09 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-3
# Tue, 24 Apr 2018 09:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 24 Apr 2018 09:19:44 GMT
CMD ["jshell"]
# Tue, 24 Apr 2018 09:47:48 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 24 Apr 2018 09:47:49 GMT
ARG USER_HOME_DIR=/root
# Tue, 24 Apr 2018 09:47:49 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 24 Apr 2018 09:47:50 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 24 Apr 2018 09:48:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 09:48:22 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Tue, 24 Apr 2018 09:48:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 24 Apr 2018 09:48:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 24 Apr 2018 09:48:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 24 Apr 2018 09:48:30 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 24 Apr 2018 09:48:31 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 24 Apr 2018 09:48:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 24 Apr 2018 09:48:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b3949de4c16b03531582180df6c78e53e16851fa35f1a3ab12ac83a511cae577`  
		Last Modified: Wed, 14 Mar 2018 00:41:23 GMT  
		Size: 26.9 MB (26942453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecfa491131fe3c43d09dfae52d8bf81576df7e7c5fa65cc8ca02dd14a07330c`  
		Last Modified: Thu, 15 Mar 2018 06:00:01 GMT  
		Size: 455.0 KB (454980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cd6dec31efd7f104c93e0092e096437e0fd71c847ebb04861345763d94a407`  
		Last Modified: Thu, 15 Mar 2018 06:00:00 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75fcf0f7c40be7ad736e745a62b91d057f53e9f16b31c5251b44395d9ce0d36`  
		Last Modified: Fri, 20 Apr 2018 09:11:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f9bc721bbb58d39c18d9b14f4376d34675d07592e62fd5600dfe602c7bd314`  
		Last Modified: Tue, 24 Apr 2018 09:28:32 GMT  
		Size: 222.9 MB (222944016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94caebd360bc02f98250b88e0d01a85c0932df333db14a5a30f1ccc3a492b620`  
		Last Modified: Tue, 24 Apr 2018 09:49:43 GMT  
		Size: 3.0 MB (2987907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191caac1c4d2ab91695d8073a8f2f4b2442a6416cb3c0f66d804c6cc3fe130df`  
		Last Modified: Tue, 24 Apr 2018 09:49:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f49df198ffd7df5278fcf40080546d73e3f569a6b1e2e6d70badbe2bc19a890`  
		Last Modified: Tue, 24 Apr 2018 09:49:43 GMT  
		Size: 8.9 MB (8946137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e98cb062eb6c0da5e6b6de5321d66e5a723a47dc324e3dd9fa2eee7a73c368`  
		Last Modified: Tue, 24 Apr 2018 09:49:42 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0440bb536325c588ffc1bc3a6c69abdc34fb1d76f5a280639c43f1598c5676`  
		Last Modified: Tue, 24 Apr 2018 09:49:41 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; s390x

```console
$ docker pull maven@sha256:353e9161ff2bb1e4f6973c4271ebe7712cebd3068e00aa50b1ec9ea35439eb2e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.1 MB (236126592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c2508124f73d836b02fc8a4ae2333809cac1a8bf93ef5192c18d54e4da6600`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:08 GMT
ADD file:6f68d1b98f1844e4f556be18e2db7a2f1262097f9dea14071f46d5f8dfbd22e7 in / 
# Wed, 14 Mar 2018 05:23:08 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:35:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:35:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 14 Mar 2018 06:35:37 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:35:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:35:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:35:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Mar 2018 05:42:23 GMT
ENV JAVA_VERSION=10-ea+46
# Fri, 06 Apr 2018 18:00:26 GMT
ENV JAVA_DEBIAN_VERSION=10~46-4
# Fri, 06 Apr 2018 18:04:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 06 Apr 2018 18:04:53 GMT
CMD ["jshell"]
# Fri, 06 Apr 2018 18:42:13 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 06 Apr 2018 18:42:13 GMT
ARG USER_HOME_DIR=/root
# Fri, 06 Apr 2018 18:42:14 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 06 Apr 2018 18:42:14 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 06 Apr 2018 18:42:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 06 Apr 2018 18:42:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 06 Apr 2018 18:42:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 06 Apr 2018 18:42:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 06 Apr 2018 18:42:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 06 Apr 2018 18:42:49 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 06 Apr 2018 18:42:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 06 Apr 2018 18:42:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 06 Apr 2018 18:42:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:298af72285f6bd87726f47a71d44a9089da15048e0eb38a6b2ad0d5f6eef4cff`  
		Last Modified: Wed, 14 Mar 2018 05:27:48 GMT  
		Size: 24.9 MB (24881607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fa0f98e9ab2b7efe654e711de6bbee6c0afc5d2a8d62d21d8f7b9f5dd611b9`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 471.1 KB (471066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf9bd37faf4b01e8ce07fbb2e78b05f74bc20c16bd189b199c1844b9af4eb2d`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fb1f77914d3a0c3d99ff5e81cb4b402918a8dbff220dc8f3b6aaf00250723d`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f6516fe841568983cb1d49b9d42fa55b5c6fbba2c31e52c82df6c602a1763`  
		Last Modified: Wed, 14 Mar 2018 06:49:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83aa14e87ee523cf1b2ca93e89f1b43b3fdc909765b7d86ff23900b94dc570a8`  
		Last Modified: Fri, 06 Apr 2018 18:17:07 GMT  
		Size: 198.9 MB (198904833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e880861d9d2e94c20ce19275d5c71f84cecc7b3a5673afd8052779355282e4`  
		Last Modified: Fri, 06 Apr 2018 18:47:27 GMT  
		Size: 2.9 MB (2921167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a93ab7df6ab0e75ab150c4ea4b3e6a9ef20e4f2348f7de081a6bcfd464a9206`  
		Last Modified: Fri, 06 Apr 2018 18:47:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaf1fb614a6464c2292ad37bfca6bbaea8af670483b152b6542ab23b5cdb2ec`  
		Last Modified: Fri, 06 Apr 2018 18:47:28 GMT  
		Size: 8.9 MB (8946000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886a91f34d04aa797ae7bb919be2c3f90760e361de217a36b3736d81fd1fd911`  
		Last Modified: Fri, 06 Apr 2018 18:47:26 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997e9c023b6601a9b6c1aec3baa378eb56d7f2dcd4e2cf631f3a52d621827885`  
		Last Modified: Fri, 06 Apr 2018 18:47:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-11-slim`

```console
$ docker pull maven@sha256:c8d09d768d9d96c8a0d008e5f4a106ce8c81718a5f7737d3b0a946a422b7c9bc
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

### `maven:3-jdk-11-slim` - linux; amd64

```console
$ docker pull maven@sha256:8b404a2810709535ac4738cdfafc11a2e1b62b04060989ffde8c73ed1295db94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.6 MB (333599907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e978dca5d27a6284cbe8aa432c1b698dc96c7bf7bdda4f03cd5cdc4b9d0717b6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:58 GMT
ADD file:a391d9232725a03d7b21f24be4d387c1d11f905c3ba448c0a3793745ca8cc6f3 in / 
# Tue, 04 Sep 2018 21:20:58 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:15:51 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:15:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:15:52 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:15:52 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 28 Sep 2018 18:24:19 GMT
ENV JAVA_VERSION=11
# Thu, 04 Oct 2018 20:21:22 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Thu, 04 Oct 2018 20:22:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 04 Oct 2018 20:22:04 GMT
CMD ["jshell"]
# Thu, 04 Oct 2018 20:48:28 GMT
ARG MAVEN_VERSION=3.5.4
# Thu, 04 Oct 2018 20:48:28 GMT
ARG USER_HOME_DIR=/root
# Thu, 04 Oct 2018 20:48:28 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Thu, 04 Oct 2018 20:48:29 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Thu, 04 Oct 2018 20:48:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 04 Oct 2018 20:48:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Thu, 04 Oct 2018 20:48:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 04 Oct 2018 20:48:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 04 Oct 2018 20:48:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 04 Oct 2018 20:48:52 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 04 Oct 2018 20:48:52 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 04 Oct 2018 20:48:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 04 Oct 2018 20:48:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a7e1658cb0533dfcb5baa38a0ce3230fd3aea217be1a52d0b46f5521b305d608`  
		Last Modified: Tue, 04 Sep 2018 21:24:51 GMT  
		Size: 26.3 MB (26269506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d7fab3f2f9f524ee8ab66d9bf80ff7ce89278ff495a4c665481d069832089`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 460.8 KB (460788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7705f8b8f1de989ae8e63828bc91553d1aa32563ed57bd05b21828c0ef89920`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346fb9b43905ab75618d23770204a6bc486e33867d3761b8a29e052036f87396`  
		Last Modified: Wed, 05 Sep 2018 01:32:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47cc07b41ba51579a6ece6e0392762ba4cfa8c9c11d32e85d85dc6c65a30a05`  
		Last Modified: Thu, 04 Oct 2018 20:27:38 GMT  
		Size: 296.0 MB (295979632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e901253381ab02e33ab07cd0c1b318cb712ccf0c7b486c063d55b35bdbf7f49`  
		Last Modified: Thu, 04 Oct 2018 20:49:51 GMT  
		Size: 1.9 MB (1899068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b172c903e85adfd684c122837f946817308a399dab4b35098b159e59709908cb`  
		Last Modified: Thu, 04 Oct 2018 20:49:50 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e87d215e80330e54903ea13e61ec17d9b8c3f41212d70814cb8ba7c9217381a`  
		Last Modified: Thu, 04 Oct 2018 20:49:51 GMT  
		Size: 9.0 MB (8989217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aaaafb8e96732f5a72d2f5f7192e2eed8066e8f64cd23097761e985977b191`  
		Last Modified: Thu, 04 Oct 2018 20:49:50 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c041fe30deb2df2cb3689fa3e44b86ad451f1db56494fc0087d8c87227df0057`  
		Last Modified: Thu, 04 Oct 2018 20:49:51 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:c9394a02314e5357d0bbb18ad8f2df6944efbadf4e20ec16bb650e4b4e8b071b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259614417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b46edf00aea1bc46f95024dede5a09895fe7d6e906cdc0e85f177c8399840c66`
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
# Tue, 16 Oct 2018 09:09:23 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 09:09:23 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 09:10:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 09:10:26 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 13:10:21 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 13:10:22 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 13:10:22 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 13:10:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 13:10:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:10:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 16 Oct 2018 13:10:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 13:10:48 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 13:10:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 13:10:49 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 13:10:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 13:10:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 13:10:50 GMT
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
	-	`sha256:cc9157ecc0cdb59327dfa7332b3d5f366e4b7fafa920247134653cf63b1bce6f`  
		Last Modified: Tue, 16 Oct 2018 09:21:12 GMT  
		Size: 224.3 MB (224318514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed10f79a33b8c71ed264d0355a0daeb0667f3ba667d94ef1bd4f8b307bde33fc`  
		Last Modified: Tue, 16 Oct 2018 13:14:07 GMT  
		Size: 1.8 MB (1801000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461ab7ba805ea9561175651e42041dcc7fb6d95a5464eadf655c65a7b8d16760`  
		Last Modified: Tue, 16 Oct 2018 13:14:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea11c562a919c3c2bc95302d5e976ac9d3fca95bf724120da58803e7248dd83`  
		Last Modified: Tue, 16 Oct 2018 13:14:10 GMT  
		Size: 9.0 MB (8989221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9db4d1a00a51c80910fd88473d7534e7548729f0cecef1ad60a31b790c39c0`  
		Last Modified: Tue, 16 Oct 2018 13:14:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c743279522de31a18ec7315b3a5016ea56482c9151af74e88fd6fad7d20003`  
		Last Modified: Tue, 16 Oct 2018 13:14:06 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:16a4a8d57164bbd91fcde37608b30af76567df3a5d15c97db05b93d6a145d345
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282089799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e9003068da7772adf5efdf79ea4221d30091b9f719cfb5341c26e551e34589`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:34 GMT
ADD file:d966b641bd0795de9f6442fec893e1b9449c978d22fd9094d193b1535602d0a2 in / 
# Wed, 05 Sep 2018 12:02:35 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:10:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:10:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:10:16 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:10:18 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 12:00:19 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 11:59:34 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Sat, 06 Oct 2018 12:01:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 06 Oct 2018 12:01:08 GMT
CMD ["jshell"]
# Sat, 06 Oct 2018 12:37:43 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 06 Oct 2018 12:37:43 GMT
ARG USER_HOME_DIR=/root
# Sat, 06 Oct 2018 12:37:44 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 06 Oct 2018 12:37:44 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 06 Oct 2018 12:37:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 06 Oct 2018 12:37:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Sat, 06 Oct 2018 12:38:02 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 06 Oct 2018 12:38:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 06 Oct 2018 12:38:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 06 Oct 2018 12:38:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 06 Oct 2018 12:38:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 06 Oct 2018 12:38:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 06 Oct 2018 12:38:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ba8445defddd24c3f2ac1eee6211fd2c3b937fa4fb76c2b8e6cff179fd515555`  
		Last Modified: Wed, 05 Sep 2018 12:11:44 GMT  
		Size: 22.0 MB (21986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7054fed937aa9eb213be249c9e83d066ebfc81075a7ac56b5fcc5ea9db7df2bf`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 435.3 KB (435302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9fa9b089781c7e685cb03827f255eaddb539c9ca57b5a62119f11f2f48816`  
		Last Modified: Wed, 05 Sep 2018 13:36:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b4a4356e4985fd665b9c4ac6b65f0c326a47b37393268d7a132a1a9d8510b7`  
		Last Modified: Sat, 08 Sep 2018 12:22:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90454c622bdd56a56da9501c2d10db1aa13620c0056268562507b5aa1142284f`  
		Last Modified: Sat, 06 Oct 2018 12:17:34 GMT  
		Size: 249.0 MB (248996316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af38dd769ddee050a9c8200ab25253e314571e654781f76930b73eecc9ed1402`  
		Last Modified: Sat, 06 Oct 2018 12:39:21 GMT  
		Size: 1.7 MB (1680705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a5a6846ca325fe20b366b0e6864fbf524728104e309c97b27da6c3f62cd6ee`  
		Last Modified: Sat, 06 Oct 2018 12:39:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84483d4afc86d94b379e64adfd116c62719ab4c7d8e636d89d8f6beca5f69b9`  
		Last Modified: Sat, 06 Oct 2018 12:39:22 GMT  
		Size: 9.0 MB (8989223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4931d8f04ed301f102757832708fbe163a4e723c102ded4c0c396f83f23d6894`  
		Last Modified: Sat, 06 Oct 2018 12:39:21 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccecf1df73b47767dbb334f912111180a767bfcd62fbe146902fc03bfb4aee6`  
		Last Modified: Sat, 06 Oct 2018 12:39:21 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b96cec04ee67946d031fa06bd5f1460528209e2f3e76992938986a609e3b785d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.3 MB (314322165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef74bd389c0ee9c2761338414c3a86c8c3e6370eb29202356e89bfd35a4dcfc2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 05 Sep 2018 08:45:52 GMT
ADD file:24dbb552dccf9615a5e69bf23e9456e1113ecd17c0803a5b489ffed88bedfc74 in / 
# Wed, 05 Sep 2018 08:46:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:58:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:58:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 15 Sep 2018 10:18:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 15 Sep 2018 10:18:35 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 08:56:48 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 09:28:45 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 09:30:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 09:30:32 GMT
CMD ["jshell"]
# Fri, 05 Oct 2018 10:10:21 GMT
ARG MAVEN_VERSION=3.5.4
# Fri, 05 Oct 2018 10:10:22 GMT
ARG USER_HOME_DIR=/root
# Fri, 05 Oct 2018 10:10:23 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Fri, 05 Oct 2018 10:10:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Fri, 05 Oct 2018 10:10:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 05 Oct 2018 10:11:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 05 Oct 2018 10:11:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 05 Oct 2018 10:11:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 05 Oct 2018 10:11:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 05 Oct 2018 10:11:21 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 05 Oct 2018 10:11:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 05 Oct 2018 10:11:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 05 Oct 2018 10:11:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:72c8cb2fd9e6abd14d8304d2ab8f3981d9ee18081e0eec41f5a6329ad46e13dc`  
		Last Modified: Wed, 05 Sep 2018 09:03:24 GMT  
		Size: 24.4 MB (24421582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6913615f01b262099426dbf3dc8f34a66d8acdd16e1b670f80120a578455d15f`  
		Last Modified: Wed, 05 Sep 2018 13:51:40 GMT  
		Size: 446.8 KB (446802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43cb8ddfaa74be1577307975c3673ede54a0bdbaf3dfd3ce3f5026dc960b4c`  
		Last Modified: Wed, 05 Sep 2018 13:51:40 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efcec23c75ed06bd0fbded98349c08c73d716b5d10ace97dc8bfd239aededa0`  
		Last Modified: Sat, 15 Sep 2018 10:40:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b66381c9476fdf6f01bb24a233fc2d85dc47ff77c1ca78d1eb84b9e45482803`  
		Last Modified: Fri, 05 Oct 2018 09:43:03 GMT  
		Size: 278.6 MB (278604765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710d840ee373e76d37ce3a7cc788ccde901487a81e513bb7656f1a7e524e9b4`  
		Last Modified: Fri, 05 Oct 2018 10:13:19 GMT  
		Size: 1.9 MB (1858080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9950881f03824d74ca927438135e8a9e16a82d65b51b12533748f7deffca8b`  
		Last Modified: Fri, 05 Oct 2018 10:13:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf6d015bca35830533d91b988411b14658c88b0cf279aceb518b852fa5d6766`  
		Last Modified: Fri, 05 Oct 2018 10:13:20 GMT  
		Size: 9.0 MB (8989237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248359acea3b296079d31430fc81e80de9625728e9540aea304e5566adf55d83`  
		Last Modified: Fri, 05 Oct 2018 10:13:18 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97aa3fc73a180bf2b792b9fb6599b34b89ccd3a384bb4f5006518e8651e5c4ab`  
		Last Modified: Fri, 05 Oct 2018 10:13:19 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; 386

```console
$ docker pull maven@sha256:b067692c0141ccb8d2cccdf2f043da4a428b58e457ca9a8d8ad617cc84734c5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (411032072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d59855446748b721d0d0bc7d480625477fee5f1fb6d772ffd723e1ae9f0e08`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:28 GMT
ADD file:d4af5b170a1dc9b1a5129aad95a449a0412bc890b20f7bcc406b10765217d72d in / 
# Wed, 05 Sep 2018 10:42:28 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:37 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:46:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:46:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:46:39 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 10:49:52 GMT
ENV JAVA_VERSION=11
# Fri, 05 Oct 2018 11:08:03 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Fri, 05 Oct 2018 11:09:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Oct 2018 11:09:00 GMT
CMD ["jshell"]
# Fri, 05 Oct 2018 11:38:22 GMT
ARG MAVEN_VERSION=3.5.4
# Fri, 05 Oct 2018 11:38:22 GMT
ARG USER_HOME_DIR=/root
# Fri, 05 Oct 2018 11:38:23 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Fri, 05 Oct 2018 11:38:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Fri, 05 Oct 2018 11:38:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 05 Oct 2018 11:38:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 05 Oct 2018 11:38:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 05 Oct 2018 11:38:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 05 Oct 2018 11:38:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 05 Oct 2018 11:38:33 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 05 Oct 2018 11:38:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 05 Oct 2018 11:38:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 05 Oct 2018 11:38:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5b7c4e2e64859070ddb846c8d1995c868828ca3f0747e700ce525cca0c668ead`  
		Last Modified: Wed, 05 Sep 2018 10:50:43 GMT  
		Size: 26.9 MB (26855389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe790305403cfefcd04e2c7141ec9c0cdf63365ea7cb2266f45810018349d1e`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 469.7 KB (469687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ab579a9b26299f67deeeff886666f4181e13e5ff5abf594e0cc6b5c92241e0`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e627eb48e8c1bd26da91b7e08e7ef7b07c39051360609f97ce5343cdf95448b`  
		Last Modified: Sat, 08 Sep 2018 18:28:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7623d00986f431e93424ff02bcd3e03d1ff4229b6490e5efb11cf50e5dc119`  
		Last Modified: Fri, 05 Oct 2018 11:14:21 GMT  
		Size: 372.7 MB (372722382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29584da58e13758285cf6d647038f04e4b715bd62594b45b271e84b838065fb1`  
		Last Modified: Fri, 05 Oct 2018 11:39:16 GMT  
		Size: 2.0 MB (1993682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afb8cb6dd17807686741fd6928629113c90e42b2e299a01956bf14ac39a0546`  
		Last Modified: Fri, 05 Oct 2018 11:39:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a1282705a097f380adee82302cd03c1f192e83d9c735129cdc1a06ae6ee67a`  
		Last Modified: Fri, 05 Oct 2018 11:39:16 GMT  
		Size: 9.0 MB (8989235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e863bd402fb0ad4ee4381d145cddc74f35679da2197bd78513bf80f9bc5625b1`  
		Last Modified: Fri, 05 Oct 2018 11:39:16 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3e7edcad703d875f7d22f0cf7722f1a5a2389b7f037d06fb5a5a678c804001`  
		Last Modified: Fri, 05 Oct 2018 11:39:16 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:d3af63980db8c44d5b7f89ad2016afb79269148f5d20cb8362a233f45c426e18
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.3 MB (305328643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca890b7b7a0e0182b371b5abb7a9f89c07aaf6b8fda2eda5e191caa1c376fc8`
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
# Tue, 16 Oct 2018 08:32:03 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 08:32:04 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 08:33:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 08:33:31 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 15:40:19 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 15:40:22 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 15:40:24 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 15:40:25 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 15:41:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:41:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 16 Oct 2018 15:41:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 15:41:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 15:41:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 15:41:29 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 15:41:33 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 15:41:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 15:41:36 GMT
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
	-	`sha256:634e8d4c39287264c46aef7d8d72e7dce49f8d9424facff3b49d64f7599fdd9a`  
		Last Modified: Tue, 16 Oct 2018 08:49:54 GMT  
		Size: 264.8 MB (264820040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c67ebf35da8aa660c3a0ab6f994f92d290d2c30528aeee65e5b8751d2f7309`  
		Last Modified: Tue, 16 Oct 2018 15:45:49 GMT  
		Size: 2.1 MB (2089956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23134606de0080755efc5dff51e30d9d2a73aec64b684bbb72ee8864315ff2bc`  
		Last Modified: Tue, 16 Oct 2018 15:45:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d694704fd7404835749a3f4bfe2d9cc05e323b195f63a154f817a2d1468119d5`  
		Last Modified: Tue, 16 Oct 2018 15:45:49 GMT  
		Size: 9.0 MB (8989245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ddb3d36fbf9548c126f13adc59e3e9f04865864783accaaf553bd8af4cc370`  
		Last Modified: Tue, 16 Oct 2018 15:45:49 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc00456542014764f258600df139eb458458a500a1b2956eef88cdb08eaf64d`  
		Last Modified: Tue, 16 Oct 2018 15:45:48 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; s390x

```console
$ docker pull maven@sha256:0d351b3267270e5bd7f71daa18a69ca0b723f78165eccd1c34c712adb4c09060
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296526427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:380f223da983a949b4601ff1c6562b33adc4bad85c3a5874d130f5b286d1e756`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:06 GMT
ADD file:62a57ce13803527510a159dec3878e0707d3e939029a993efddd4bee35a7df4d in / 
# Tue, 16 Oct 2018 11:42:06 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:48:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:48:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:48:43 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:48:43 GMT
ENV JAVA_VERSION=11
# Tue, 16 Oct 2018 11:48:43 GMT
ENV JAVA_DEBIAN_VERSION=11~28-3
# Tue, 16 Oct 2018 11:49:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 11:49:29 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 15:05:34 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 15:05:34 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 15:05:34 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 15:05:34 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 15:05:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:05:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 16 Oct 2018 15:05:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 15:05:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 15:05:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 15:05:53 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 15:05:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 15:05:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 15:05:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:76f5ebafa73fb12b78ff445aeb469bac1bdc591f1244e3059c3f61e2a5e6362d`  
		Last Modified: Tue, 16 Oct 2018 11:44:54 GMT  
		Size: 24.9 MB (24911339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17c7826f5495310992281eba0a0d306a002d8aa46b3f244b2d73eacec0df197`  
		Last Modified: Tue, 16 Oct 2018 11:52:58 GMT  
		Size: 469.6 KB (469641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013090cc4546c9a956574c0854191efd3a5ac57b96420985df6104a73cde7e35`  
		Last Modified: Tue, 16 Oct 2018 11:52:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb207e5a8bd48780201a4f5d394ee9ed515f63c334ae5707f54fe56d33c3021`  
		Last Modified: Tue, 16 Oct 2018 11:52:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7367f39d9e7367d706b4070bde24cf4ecdf6db0d17a7943060dac325864255dd`  
		Last Modified: Tue, 16 Oct 2018 11:53:46 GMT  
		Size: 260.3 MB (260296952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43aec97114cbd70c15d018abdf0b673aae5d4f892fad12ea9333a8073033ddb9`  
		Last Modified: Tue, 16 Oct 2018 15:08:02 GMT  
		Size: 1.9 MB (1857580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27789323d3e82698d568ecf65ca33903ae541cbddff2902551596d5a08163eb4`  
		Last Modified: Tue, 16 Oct 2018 15:08:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10afa496d44b4e2bfe64742d8c1dccc99eeb247853507c22ef85a77f7e2ea334`  
		Last Modified: Tue, 16 Oct 2018 15:08:02 GMT  
		Size: 9.0 MB (8989216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567ef18616228ff4593a6f0f593f0c46bd1096de805d3b9c5ae768f5840d2673`  
		Last Modified: Tue, 16 Oct 2018 15:08:02 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680d784b9a9cc32a67e4db9bcda7af4e9d33102fb7abebb66ebc23f41e48a52a`  
		Last Modified: Tue, 16 Oct 2018 15:08:01 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

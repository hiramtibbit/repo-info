## `maven:3-jdk-10-slim`

```console
$ docker pull maven@sha256:6d786e54c471baa77312a6fd3ae4a37afea5356488ea450de242abcfd9bcb480
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
$ docker pull maven@sha256:59ad4797d774483109a21de18f9ed9d90b17278de694eee9df2c6aaa9c7a8bbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273249181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986b26a3bb20928c62917edb7edda707951102bc00aa81c1ddd5f7e715abb38e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 07:02:48 GMT
ADD file:4ac5b74448a361591479d0374d36fef5832baedf42ca81cbd6fbd8ac037ad414 in / 
# Sat, 28 Apr 2018 07:02:49 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:46:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:46:10 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:46:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:48:47 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:48:47 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:48:48 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 06 Jun 2018 01:48:48 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 06 Jun 2018 01:51:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:51:58 GMT
CMD ["jshell"]
# Fri, 22 Jun 2018 17:21:22 GMT
ARG MAVEN_VERSION=3.5.4
# Fri, 22 Jun 2018 17:21:22 GMT
ARG USER_HOME_DIR=/root
# Fri, 22 Jun 2018 17:21:22 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Fri, 22 Jun 2018 17:21:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Fri, 22 Jun 2018 17:21:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 22 Jun 2018 17:21:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Fri, 22 Jun 2018 17:21:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 22 Jun 2018 17:21:48 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 22 Jun 2018 17:21:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 22 Jun 2018 17:21:49 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 22 Jun 2018 17:21:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 22 Jun 2018 17:21:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 22 Jun 2018 17:21:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c2ad77de49cedb25345a40be4f3ccc592075053d2d1b4cafcc67a011c070df60`  
		Last Modified: Sat, 28 Apr 2018 09:01:30 GMT  
		Size: 26.0 MB (26007039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ada33455794aa7a1eae4863fe5cd0a217d996ff6ef4b801e4c09cad0a717ebf`  
		Last Modified: Wed, 06 Jun 2018 02:06:51 GMT  
		Size: 460.5 KB (460521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d334d334f7166ed34df964ad8ccfead46f6132bdf4d2d21c0ab620ffd84e4c7`  
		Last Modified: Wed, 06 Jun 2018 02:06:51 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ca44442357d233adc8e64a8a1a9ea782ddd9b2c9fb7ec2e5ea4e481b41ce00`  
		Last Modified: Wed, 06 Jun 2018 02:06:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e0f7e420dbb270a442f6bd3cdafe10827e8430ed4a6cc525f38afcc1ad6afd`  
		Last Modified: Wed, 06 Jun 2018 02:11:50 GMT  
		Size: 236.3 MB (236269423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f620583826ce06734722120a1925ac84b4d3bf9d781bb934927a40c00d17a4c2`  
		Last Modified: Fri, 22 Jun 2018 17:28:27 GMT  
		Size: 1.5 MB (1521276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afb9dacad65eae3b3e7e58340e3f91417af9e2266390d7a11f2973ccce2ff9b`  
		Last Modified: Fri, 22 Jun 2018 17:28:27 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e3bffb22dcbc7f3d4973c79bb69736a265282de15b5a632add8f0807829fb`  
		Last Modified: Fri, 22 Jun 2018 17:28:28 GMT  
		Size: 9.0 MB (8989220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8359010d7c953fb45e1c4371f046366bb5ab33690e1cd10953b81c02f8caef`  
		Last Modified: Fri, 22 Jun 2018 17:28:27 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589562d30ae813c031956797f7321571c1f9fa240fa6f3c1dc5d80b8b1683a67`  
		Last Modified: Fri, 22 Jun 2018 17:28:27 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:92785d9a11c9eaeb8245b05134dd90236c2b7f56070ea62c97ce36218203713b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.3 MB (241270604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b47e1b0f4d13578f0325b57365878d86323c75352bf9187796983040e9ab9f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:57 GMT
ADD file:4bb0a1afcce11262886b693c92f368728f7ca179f516dcfd86a6a74d9941a2bd in / 
# Sat, 28 Apr 2018 08:51:57 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:33:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:33:18 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:33:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:38:08 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:38:08 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:38:09 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 08:55:21 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 09:40:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:40:31 GMT
CMD ["jshell"]
# Sat, 23 Jun 2018 08:48:30 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 08:48:31 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 08:48:31 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 08:48:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 08:48:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 08:48:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 23 Jun 2018 08:48:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 08:48:48 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 08:48:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 08:48:48 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 08:48:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 08:48:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 08:48:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d8a6a213c8dfd9e72ad11408970d74e2be7ffdfbac3683ed1a40c28534145e4a`  
		Last Modified: Sat, 28 Apr 2018 09:00:19 GMT  
		Size: 24.0 MB (23990346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe23918d5c3df5c5737b91e6e16035342f47e61426f3dd0265882e998ef16a4`  
		Last Modified: Sat, 28 Apr 2018 13:02:15 GMT  
		Size: 454.0 KB (453984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3278875f078d656ef3d6c8ce9702f8344f1343454d75403da10d4e583f90931`  
		Last Modified: Sat, 28 Apr 2018 13:02:15 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2f1c65b0af8ba65e7cbd0537c3602e8a1c342f9200f12fd0a0d8f60d31ec14`  
		Last Modified: Sat, 28 Apr 2018 13:09:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af9e1c1128903410e1cff27a597dc8eab436b4ef13f38fa61e768808ef400b3`  
		Last Modified: Tue, 15 May 2018 10:09:31 GMT  
		Size: 206.1 MB (206132580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d94d8450fecc37b75a977ba76ac9763fd8834eddbc0da468de6fdc5714b973`  
		Last Modified: Sat, 23 Jun 2018 08:52:06 GMT  
		Size: 1.7 MB (1702771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17b5a043ed252ab841e23839d61ed70755bb5469c9a0f678a194145951fe52a`  
		Last Modified: Sat, 23 Jun 2018 08:52:03 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611babf4d86cd912f7158cb0eb05619560bb66f2873f32948fcd852d2f51849d`  
		Last Modified: Sat, 23 Jun 2018 08:52:04 GMT  
		Size: 9.0 MB (8989219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0272da12d0859e3addea575c628a921af9f179dab84fe3500a01c8c7e969a619`  
		Last Modified: Sat, 23 Jun 2018 08:52:03 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0c723ba1dee6a2690525528380e8ec65151040a2d657e823aa7f48934d8d5a`  
		Last Modified: Sat, 23 Jun 2018 08:52:03 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:6f2719a99de37b120e265225d49c80552a3d93c93f2260e3a86c8b424a15250e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239913346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f0dd8956d2dc6dffa7366743ca8724884afd321558787ab902b03d23d884e4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 12:02:41 GMT
ADD file:51a6f559367fc724be19aeee6bd277b378069389bc848507cfa991829488f7a6 in / 
# Sat, 28 Apr 2018 12:02:41 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:38:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:38:04 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:38:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:42:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:42:19 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:42:20 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 12:10:49 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 12:12:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 12:12:37 GMT
CMD ["jshell"]
# Sat, 23 Jun 2018 11:57:37 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 11:57:37 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 11:57:37 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 11:57:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 11:57:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 11:57:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 23 Jun 2018 11:57:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 11:57:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 11:57:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 11:57:59 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 11:57:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 11:57:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 11:57:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e896ce6a07096665b9b10eea8b8d7a9f0f6e26c3d88bd463db48304823b92890`  
		Last Modified: Sat, 28 Apr 2018 12:14:08 GMT  
		Size: 22.0 MB (21967210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925e7bf3333e528dfd915abfbcbc560f820ce29a375d884865566688160e4eed`  
		Last Modified: Sat, 28 Apr 2018 13:05:56 GMT  
		Size: 436.6 KB (436647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc2cc177a3ab014156f5c72f5b4f97a9fb66c88c1f2d8c79cdf90ed2dab6a6c`  
		Last Modified: Sat, 28 Apr 2018 13:05:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec819d3fefda63fdabc6644a3152410ef549eafd68839c96b47375d98e14cc1c`  
		Last Modified: Sat, 28 Apr 2018 13:05:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13a8b8669a5dbaff5be81d6f8f3cdd8ee666b5699dac16c07c45643b71ffc38`  
		Last Modified: Tue, 15 May 2018 12:48:35 GMT  
		Size: 206.9 MB (206922044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97bc770b17f54fe654866796a26c1a0339b2bf2354e107feab3b9b4eb8271aa8`  
		Last Modified: Sat, 23 Jun 2018 12:01:35 GMT  
		Size: 1.6 MB (1596515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d28be5f5eff1e9093793456ee5602f12d9bd4892524573c83034319fb21b487`  
		Last Modified: Sat, 23 Jun 2018 12:01:34 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd9dae650d74d36c309bbefe9cca705c7b0ec8daf9e5f8ceb6dcc089c73bf58`  
		Last Modified: Sat, 23 Jun 2018 12:01:36 GMT  
		Size: 9.0 MB (8989228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3f325fa8919397a12d120241c43f7a65da5075e31295af7b28b40da9c3e091`  
		Last Modified: Sat, 23 Jun 2018 12:01:34 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6885910a352a6587f4502d7b7be92bc071bc8e804c91bbfc5ad531cfaae40f0c`  
		Last Modified: Sat, 23 Jun 2018 12:01:34 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:5617e6ddc621187576cf16302be49c5069d59d211b9345d2097cc2349b8480dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246119416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c961c53aa7600a86d03595bf34e3b945c00ede559e3930852c8d678194ffddc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 30 Apr 2018 23:28:38 GMT
ADD file:0c141fd79d3e8c492efc85f35f6f2273b082454831ae4e4e58f2bb99395ac72b in / 
# Mon, 30 Apr 2018 23:28:47 GMT
CMD ["bash"]
# Tue, 01 May 2018 10:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 10:26:43 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 10:26:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 10:35:42 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 10:35:43 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 10:35:43 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 10:22:27 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 09:32:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:32:47 GMT
CMD ["jshell"]
# Sat, 23 Jun 2018 08:39:58 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 08:39:58 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 08:39:59 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 08:40:00 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 08:40:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 08:40:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 23 Jun 2018 08:40:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 08:40:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 08:40:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 08:40:43 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 08:40:43 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 08:40:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 08:40:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8a965c5efd07de5feb761f2ff7f7c9319fbd736849e5c372d102a79db79c4f2f`  
		Last Modified: Mon, 30 Apr 2018 23:48:28 GMT  
		Size: 23.4 MB (23364515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca2f61f6ee678d7988be608168e9c185ba5c895ae0c465aae1111cc9b9f381e`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 445.3 KB (445326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c81d59c641d2ddc2a09929f5b5d1a2b5181d4c465d5d47ac607bb97deb6f8a`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89036d0f9d8f06fc082efcb51ca1fb4b97086c7e9f240adbd8bc08357a32af98`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab23d7c248c471319c31efce1ddac583fa7c3720f37509cf3168b2b22af0f0df`  
		Last Modified: Tue, 15 May 2018 10:48:49 GMT  
		Size: 211.6 MB (211625296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4ef9a32efb55851c05d8c33c41d1a63af2bc92607245892c7e45521c30ebba`  
		Last Modified: Sat, 23 Jun 2018 08:48:06 GMT  
		Size: 1.7 MB (1693370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5fd05a0e6402df9bf9cd4a8d7eebf23cb98a5228a3b91a2c28141716a81e65a`  
		Last Modified: Sat, 23 Jun 2018 08:48:05 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed80a169fd01b2a2ad1b2af6b511e08463066a304255c4d0f0eb53c5778d68f`  
		Last Modified: Sat, 23 Jun 2018 08:48:07 GMT  
		Size: 9.0 MB (8989202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea952f6bae93ba185ab49b7bcc8e48fc11eda779fe6f7616baec5f01fe3d2bb8`  
		Last Modified: Sat, 23 Jun 2018 08:48:05 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fba296cb154d2141ca4ed4a1fc2d43cbfa49815f0814165765621571404c231`  
		Last Modified: Sat, 23 Jun 2018 08:48:05 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; 386

```console
$ docker pull maven@sha256:eb6894ef1c24bb24f32f04e918328eb11b3f590c757b12af38e86d3a149178ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281130811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedd948689e935b01602b5320749b5a64f15ecec2352c61ffa8ab6220e12deae`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:59 GMT
ADD file:9e204bd06575325653d9ca924ded453fa1a0f9eb3fe6d0fb8390160b39768da9 in / 
# Sat, 28 Apr 2018 10:40:59 GMT
CMD ["bash"]
# Thu, 31 May 2018 05:46:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 05:46:06 GMT
ENV LANG=C.UTF-8
# Thu, 31 May 2018 05:46:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 May 2018 05:51:57 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 31 May 2018 05:51:57 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 05:51:57 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 31 May 2018 05:51:57 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Thu, 31 May 2018 05:55:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 05:55:34 GMT
CMD ["jshell"]
# Sat, 23 Jun 2018 10:38:51 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 10:38:51 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 10:38:51 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 10:38:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 10:39:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 10:39:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 23 Jun 2018 10:39:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 10:39:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 10:39:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 10:39:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 10:39:12 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 10:39:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 10:39:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b0b251c3fa17d0cdbdd0cb21b207843e9e733533c09d41956b9606a7c6aaf613`  
		Last Modified: Sat, 28 Apr 2018 10:47:45 GMT  
		Size: 26.7 MB (26687092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5bd07609d18b01a4468533d1ef2f44d73ce4a39eb21ca52f111fe56eaf4e07`  
		Last Modified: Thu, 31 May 2018 06:18:02 GMT  
		Size: 469.1 KB (469106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2eb62cc483e44adba330b0e961bb185427b884355d6c1d64fe31215e6f821e`  
		Last Modified: Thu, 31 May 2018 06:18:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464436664fa0c29b4e563b87a2001886395f72193f149f8e0684e0404d65b0e4`  
		Last Modified: Thu, 31 May 2018 06:26:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d09b1d5b8f2a9f976c257dda68c2dace3e175ab6140d48460531b41f069954`  
		Last Modified: Thu, 31 May 2018 06:30:54 GMT  
		Size: 243.2 MB (243166999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3d0ff13eb4580f83c9d876ba38e0a6bda357fa928ceb0ef4fc85a19d660dd7`  
		Last Modified: Sat, 23 Jun 2018 10:45:14 GMT  
		Size: 1.8 MB (1816700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b85345ca41c8fff02b9a20d25981604df794062c02de8d57f7599bc2b831a492`  
		Last Modified: Sat, 23 Jun 2018 10:45:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9202fddbc96360e090568052a74f3c8d17c92bfb2ef5008570f48656b12ea9`  
		Last Modified: Sat, 23 Jun 2018 10:45:14 GMT  
		Size: 9.0 MB (8989210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10a7be965990cc7148aa038a65a7fc8acf393b9360a3c5aecc73f6294fed8cb`  
		Last Modified: Sat, 23 Jun 2018 10:45:13 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcaa60a1da38afe432455b613e9a2d3e61a0d363382610916b37b84a2f622e47`  
		Last Modified: Sat, 23 Jun 2018 10:45:13 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:600af96824f6f94400ace94f451d97662cdb6846d1d35089fd768ab7c09f8eb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257730929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53b98d4b8112b066a71639730ac7e3cf082171c57878f8bd5bde0b524336f28`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 08:19:31 GMT
ADD file:0f2a0abf96fc92379da26343d7babcee966430e13e320ed58e9b026f81a35dc0 in / 
# Sat, 28 Apr 2018 08:19:33 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:22:50 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:22:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 09:24:20 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 09:24:21 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 09:24:21 GMT
ENV JAVA_VERSION=10.0.1+10
# Sat, 12 May 2018 09:56:16 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 08:40:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 08:40:14 GMT
CMD ["jshell"]
# Sat, 23 Jun 2018 08:17:34 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 08:17:35 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 08:17:37 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 08:17:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 08:18:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 08:18:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 23 Jun 2018 08:18:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 08:18:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 08:18:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 08:18:18 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 08:18:19 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 08:18:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 08:18:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:62552d209895f0ed53682f7309596edd291c8529683e854dd1fb36398d01bf69`  
		Last Modified: Sat, 28 Apr 2018 08:28:10 GMT  
		Size: 27.3 MB (27275595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ff6d72f21b69924c949ee40aec368655f2ab6a94c0a4a2067453fce44edabe`  
		Last Modified: Sat, 28 Apr 2018 09:48:20 GMT  
		Size: 455.2 KB (455169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d6f4b35b1a81554702460476a2fe3bd916579be94638ded8ee84048b7e208b`  
		Last Modified: Sat, 28 Apr 2018 09:48:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aab4403f46e68329b9668d7695325f9b1874096a3e56b9ca4fbccea9eec8e9`  
		Last Modified: Sat, 28 Apr 2018 09:48:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59f6e8ef540b693080f5b6e620ab70c1d88fb226c43b9fab61bb708403b1711`  
		Last Modified: Tue, 15 May 2018 09:32:11 GMT  
		Size: 219.2 MB (219158960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a77b16fc3c5bf87e81a0313dcb2f89ec7238a2436669db47cb5d57c26dc1de`  
		Last Modified: Sat, 23 Jun 2018 08:26:50 GMT  
		Size: 1.9 MB (1850273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90eac112a0f1ba2b6a7806656f359d0092902b5d7e43ffb68ab75e9dc56225b6`  
		Last Modified: Sat, 23 Jun 2018 08:26:50 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6127cbd86f06dc8ec2c0f7316c20bcc07ed871725d8ecc3da29bd1333e4cef17`  
		Last Modified: Sat, 23 Jun 2018 08:26:51 GMT  
		Size: 9.0 MB (8989225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef3ead8d2d19d750e5a999ad3a87b76a900deb65b28ad0d6cd00fed9e655ed7`  
		Last Modified: Sat, 23 Jun 2018 08:26:51 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c4b1e161d02b3da43b56051c3fe4c2ad11ebed7049e4cae9cd3bc205c71d30`  
		Last Modified: Sat, 23 Jun 2018 08:26:49 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; s390x

```console
$ docker pull maven@sha256:e64695fc959aa573e1d051fd9c1113e33edb98ee07507301dccbeebf42f7c5f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.0 MB (229989252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76598ba2f37ac0dcd7e7cc6f5f9e192512e91b4031456d94a6dc837f68f95b4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 11:44:07 GMT
ADD file:e38be352b5f5592b16e7137f372c3c15b62fa18d58036f3756f302a0b0bb631b in / 
# Sat, 28 Apr 2018 11:44:07 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:19:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:19:52 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:19:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:23:39 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:23:39 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:23:40 GMT
ENV JAVA_VERSION=10.0.1+10
# Thu, 10 May 2018 13:05:06 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 15 May 2018 12:01:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 12:02:00 GMT
CMD ["jshell"]
# Sat, 23 Jun 2018 11:41:36 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 11:41:36 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 11:41:36 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 11:41:36 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 11:41:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 11:41:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 23 Jun 2018 11:41:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 11:41:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 11:41:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 11:41:53 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 11:41:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 11:41:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 11:41:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bff59799036649cecf076e4900a64b601dd41fb4774da5d260797609e96f77d2`  
		Last Modified: Sat, 28 Apr 2018 11:50:00 GMT  
		Size: 25.1 MB (25056085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00321480668e2c88c597070fd4a0503df76d083adfe3488d69f82f37cf3a1143`  
		Last Modified: Sat, 28 Apr 2018 14:37:59 GMT  
		Size: 471.3 KB (471260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b7fa65f7725d173d1d9261b5c223d16d2f1f2a2850391fb2cd3eca5082060`  
		Last Modified: Sat, 28 Apr 2018 14:37:58 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4240038087e1741583804ad016bed38315958a67dcae9adf82b20de4a96779b3`  
		Last Modified: Sat, 28 Apr 2018 14:42:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647676813ad310403fb3f350e48c177bb945525df0168c5e92b53e18709f5fe2`  
		Last Modified: Tue, 15 May 2018 12:30:40 GMT  
		Size: 193.7 MB (193726420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b028a466ffbc20b64d1efafbee13bae907e5a5788ec3a5c28a65dbd3ea8729`  
		Last Modified: Sat, 23 Jun 2018 11:45:33 GMT  
		Size: 1.7 MB (1744568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8fbe798cf48837af8585bf4db66c9da68584e3c1c70ec81868649b0684606`  
		Last Modified: Sat, 23 Jun 2018 11:45:33 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78052040c3f571d19fe897f5c53819efdf903e49da6dfc3ea2109dfbb6d4d0a4`  
		Last Modified: Sat, 23 Jun 2018 11:45:34 GMT  
		Size: 9.0 MB (8989214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de692842e812d78db0285519d5a9b547511c5815a406ca073647c909fb253f28`  
		Last Modified: Sat, 23 Jun 2018 11:45:33 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef06a52892413c191a234de7031bfa3efad6c815abe6ed1572823d7ae42e98c5`  
		Last Modified: Sat, 23 Jun 2018 11:45:33 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

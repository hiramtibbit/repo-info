## `maven:3-jdk-10-slim`

```console
$ docker pull maven@sha256:52595a9d77f0162dc56dd3883433c8ee3a54807347a498196826f11e3d0e4283
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
$ docker pull maven@sha256:48f9c847cbedc742b9f2d243a1fce2bb66abd8e9870a824d8ed843074575f1b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278325675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29156f5b62ed383f9f5fedebd4b214a385cc36c4145d8e3b68662c4e153d9acc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 07:02:48 GMT
ADD file:4ac5b74448a361591479d0374d36fef5832baedf42ca81cbd6fbd8ac037ad414 in / 
# Sat, 28 Apr 2018 07:02:49 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 09:40:17 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 09:40:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 10:09:11 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 10:09:12 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 10:09:12 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 01 May 2018 10:09:12 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-3
# Tue, 01 May 2018 10:34:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 01 May 2018 10:34:54 GMT
CMD ["jshell"]
# Thu, 03 May 2018 01:50:12 GMT
ARG MAVEN_VERSION=3.5.3
# Thu, 03 May 2018 01:50:12 GMT
ARG USER_HOME_DIR=/root
# Thu, 03 May 2018 01:50:12 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Thu, 03 May 2018 01:50:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Thu, 03 May 2018 01:50:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 01:50:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Thu, 03 May 2018 01:50:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 03 May 2018 01:50:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 03 May 2018 01:50:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 03 May 2018 01:50:32 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 03 May 2018 01:50:33 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 03 May 2018 01:50:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 03 May 2018 01:50:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c2ad77de49cedb25345a40be4f3ccc592075053d2d1b4cafcc67a011c070df60`  
		Last Modified: Sat, 28 Apr 2018 09:01:30 GMT  
		Size: 26.0 MB (26007039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6485a2cca95b289b549728c0c66bb1b463cdb7a204d224291f28c111a64a371`  
		Last Modified: Tue, 01 May 2018 14:02:46 GMT  
		Size: 460.5 KB (460510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4ea4e6ab41ff82240aed63937b358af3ee0d7749491ea788298b5cd38027cd`  
		Last Modified: Tue, 01 May 2018 14:02:47 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dd7b9669d469a1ec66b44c39dd80ea0c5914225f7d1c3b14495b32514b3572`  
		Last Modified: Tue, 01 May 2018 14:02:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cef87fb9fae9881db98665fbe845d362fc3e26f6ddec6f505986407aef709e9`  
		Last Modified: Tue, 01 May 2018 15:30:19 GMT  
		Size: 239.7 MB (239723413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54945d618f96bcf28dda239b7d58dde1ab33d3efe2e1d7ad0a6eb3ee08336cc8`  
		Last Modified: Thu, 03 May 2018 01:56:54 GMT  
		Size: 3.2 MB (3187015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec36cf72d958949253bd5b339fbe573df109efe1992e2c41bc7e385726c34a4`  
		Last Modified: Thu, 03 May 2018 01:56:53 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ed39c6ee381fb214c5d78230b4e507f49c67b522672461e5142b507f6def0d`  
		Last Modified: Thu, 03 May 2018 01:56:54 GMT  
		Size: 8.9 MB (8946003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708ef9bbb73178211aeec5e20b682c757ba499a46046dcb76341862242c24204`  
		Last Modified: Thu, 03 May 2018 01:56:53 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f9930ceaa0cc22075a39f0ee839335d2698ca5663474348defd0e0b43d944b`  
		Last Modified: Thu, 03 May 2018 01:56:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:b37c2a0f86eb7ccfbb9372eb8ebf23fcca166d6a56e6d3d07da720fc5f00c6af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245493729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678bd6d770d2c5fe6a3a08640e6bd28230641574dd09d0ba60ec04d72d70f667`
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
# Sat, 28 Apr 2018 12:38:09 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-3
# Sat, 28 Apr 2018 12:41:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 12:41:36 GMT
CMD ["jshell"]
# Sat, 28 Apr 2018 15:20:29 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 28 Apr 2018 15:20:29 GMT
ARG USER_HOME_DIR=/root
# Sat, 28 Apr 2018 15:20:29 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 28 Apr 2018 15:20:30 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 28 Apr 2018 15:20:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:20:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 28 Apr 2018 15:20:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 28 Apr 2018 15:20:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 28 Apr 2018 15:20:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 28 Apr 2018 15:20:52 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 28 Apr 2018 15:20:52 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 28 Apr 2018 15:20:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 28 Apr 2018 15:20:53 GMT
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
	-	`sha256:710f9e9f3c62f5eb3d4701234410c42c1075851d408925b0847de43f638eb94c`  
		Last Modified: Sat, 28 Apr 2018 13:14:00 GMT  
		Size: 209.4 MB (209412795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca15a418d612b82ff05e6d058ca79922017c8f3c93e1cbf9cff126ee28f72b2`  
		Last Modified: Sat, 28 Apr 2018 15:25:32 GMT  
		Size: 2.7 MB (2688807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d243b8a251e5140589583670c66a8e0d245d5c2b9776c1f4fa5518ad133a2d`  
		Last Modified: Sat, 28 Apr 2018 15:25:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63712001367edc3a684800f05aee2c12b22301ce5ef6c2a016b49138d4c316`  
		Last Modified: Sat, 28 Apr 2018 15:25:33 GMT  
		Size: 8.9 MB (8946098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8bcd2e763081e1aa3b980b806e72efc89780bf496ae25e6a16ed5861ba7cbd`  
		Last Modified: Sat, 28 Apr 2018 15:25:31 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668b752ca8e33d46efb1bb58889e3d96c451731cd18344c3fb621b7453529c2c`  
		Last Modified: Sat, 28 Apr 2018 15:25:31 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:ba09bd27d4d45fd56b68ac15f4cf479dd83f9d9c39c54261405fa42ba04a816b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244630671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a268f5ecae90fd2618075d5c53c4b141a0857c9e9e87a0d42e65607fa96087`
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
# Sat, 28 Apr 2018 12:42:20 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-3
# Sat, 28 Apr 2018 12:45:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 12:45:39 GMT
CMD ["jshell"]
# Sat, 28 Apr 2018 16:43:33 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 28 Apr 2018 16:43:34 GMT
ARG USER_HOME_DIR=/root
# Sat, 28 Apr 2018 16:43:34 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 28 Apr 2018 16:43:34 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 28 Apr 2018 16:43:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 16:43:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 28 Apr 2018 16:43:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 28 Apr 2018 16:43:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 28 Apr 2018 16:43:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 28 Apr 2018 16:43:50 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 28 Apr 2018 16:43:51 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 28 Apr 2018 16:43:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 28 Apr 2018 16:43:51 GMT
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
	-	`sha256:16619fc5e30e32b74cdca2ea0b950793cc82b738025cc55637d5a98ff3e8b9d2`  
		Last Modified: Sat, 28 Apr 2018 13:12:19 GMT  
		Size: 210.7 MB (210729950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7923a96414d7a99a4e3fdc8129663e33a4074cc651a4b093260e70340f136331`  
		Last Modified: Sat, 28 Apr 2018 16:48:09 GMT  
		Size: 2.5 MB (2549033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ec12e3d123007164f4ea5f3b324a7c6608bcfe2fe0273a88b53ff468a04c29`  
		Last Modified: Sat, 28 Apr 2018 16:48:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007af0b9712285744371b999ec7cd058173a57b6903446d63ff8fbeea8bf4747`  
		Last Modified: Sat, 28 Apr 2018 16:48:10 GMT  
		Size: 8.9 MB (8946132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde87c8d8887a1ca0d8f85152b37462a85cb864562fda504bfeb54b30e539ebe`  
		Last Modified: Sat, 28 Apr 2018 16:48:08 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1c9798a63c70ef34bdb61bc74d91bbf45093c347c6bcb925818b54d0e01e63`  
		Last Modified: Sat, 28 Apr 2018 16:48:08 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:4ef4031a6cc818f24b97d554321cb364ea04ebe1af7d0e9af35cc153e5b71b7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (250965440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e286350b449ef15ec2e320a5e72ff446d69dbfd9c2d539e9dcd5f1357f5e58d6`
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
# Tue, 01 May 2018 10:35:45 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-3
# Tue, 01 May 2018 10:50:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 01 May 2018 10:50:35 GMT
CMD ["jshell"]
# Tue, 01 May 2018 22:14:17 GMT
ARG MAVEN_VERSION=3.5.3
# Tue, 01 May 2018 22:14:18 GMT
ARG USER_HOME_DIR=/root
# Tue, 01 May 2018 22:14:18 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Tue, 01 May 2018 22:14:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Tue, 01 May 2018 22:14:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 22:14:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Tue, 01 May 2018 22:14:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 01 May 2018 22:14:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 01 May 2018 22:14:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 01 May 2018 22:15:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 01 May 2018 22:15:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 01 May 2018 22:15:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 01 May 2018 22:15:07 GMT
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
	-	`sha256:d8f517222c83f59c5d1135c0483c68e0124ec804f57e46ee1d074b575ad123e9`  
		Last Modified: Tue, 01 May 2018 11:48:12 GMT  
		Size: 215.5 MB (215496297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea41bff01ad7c3504ea98b94f068874ddd87cce2ace24afb35da0453c5c6f0a`  
		Last Modified: Tue, 01 May 2018 22:20:26 GMT  
		Size: 2.7 MB (2711611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b236005849d4e92c37945b304308ccf3693cfcea0025e2c20b2cf538594c0380`  
		Last Modified: Tue, 01 May 2018 22:20:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c19f6268e5d10c6b327e18ff0976ed89ded46090124de9e8a6a9190be7feaa`  
		Last Modified: Tue, 01 May 2018 22:20:27 GMT  
		Size: 8.9 MB (8945993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc7939e516a48484089a842484ad2b5ffdf9384ea46de85d21b1d70e1338213`  
		Last Modified: Tue, 01 May 2018 22:20:25 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c0b756e9bde8cbd8bdddb3c0d29fe665fad27d2bd2dda6478596d25019bdc`  
		Last Modified: Tue, 01 May 2018 22:20:25 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; 386

```console
$ docker pull maven@sha256:9418dc3e6bb6e22e558329f2aaa5b5e018327cba4fa1bcfd5e439e455c636af6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.7 MB (285679565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b25de0662ab87fcbc0107f5de42135d7ad8f2f055d2fa37e7adce4aa5dbd3f7d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:59 GMT
ADD file:9e204bd06575325653d9ca924ded453fa1a0f9eb3fe6d0fb8390160b39768da9 in / 
# Sat, 28 Apr 2018 10:40:59 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:41:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:41:58 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:41:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:44:41 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:44:41 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:44:42 GMT
ENV JAVA_VERSION=10.0.1+10
# Sat, 28 Apr 2018 14:44:42 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-3
# Sat, 28 Apr 2018 14:48:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 14:48:42 GMT
CMD ["jshell"]
# Sat, 28 Apr 2018 22:21:22 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 28 Apr 2018 22:21:22 GMT
ARG USER_HOME_DIR=/root
# Sat, 28 Apr 2018 22:21:22 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 28 Apr 2018 22:21:22 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 28 Apr 2018 22:21:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 22:21:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 28 Apr 2018 22:21:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 28 Apr 2018 22:21:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 28 Apr 2018 22:21:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 28 Apr 2018 22:21:40 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 28 Apr 2018 22:21:40 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 28 Apr 2018 22:21:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 28 Apr 2018 22:21:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b0b251c3fa17d0cdbdd0cb21b207843e9e733533c09d41956b9606a7c6aaf613`  
		Last Modified: Sat, 28 Apr 2018 10:47:45 GMT  
		Size: 26.7 MB (26687092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dba5883d54ea2e960ec74337613b22d342a4cf7dc0a8004731c69f17ca460c2`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 469.1 KB (469104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0202ed9a08fb9954731cc7fe5f246e4b09b730c006ef6ba471b6671db09dbe`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ee7c70345c4a89a6d40037b6a69760b1e2f7fdc705f373511d7b97ec0a0dac`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d05a2a4b174a5edf025caa3ea5b39aaf0170299954629bf20e39b3408f5723`  
		Last Modified: Sat, 28 Apr 2018 15:10:52 GMT  
		Size: 246.5 MB (246480757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fc64471bdca67b418179f155e4808232087be2ec77e51d21daefa3455f6d39`  
		Last Modified: Sat, 28 Apr 2018 22:24:49 GMT  
		Size: 3.1 MB (3094918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d91b3fa36fdf46094378f4b71e15cc56dcb8a8a68df36864c239aeb5838ca84`  
		Last Modified: Sat, 28 Apr 2018 22:24:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bcf6138af0d2321f34d750fe5e23889ad3a2c23e667fc893f6e1e8c685157b`  
		Last Modified: Sat, 28 Apr 2018 22:24:49 GMT  
		Size: 8.9 MB (8945999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd6ffe9964abc3510ef86cafae46077a5fe22340d959d9f3d9f97b3a99b0a3f`  
		Last Modified: Sat, 28 Apr 2018 22:24:48 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305ffcb6da70db93eb08598a2b0d9c27132424cc8c5bf57b9ac33751452f3ad6`  
		Last Modified: Sat, 28 Apr 2018 22:24:48 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:2013e4ac3a00356baf2419b003699db5d7d3c73e374e03f902e382af5229d8f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262597918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:500276b9035bc6c48dc0c7f032f02558c65eb7a7b31a20c4054c757c45c5aaff`
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
# Sat, 28 Apr 2018 09:24:22 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-3
# Sat, 28 Apr 2018 09:30:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 09:30:38 GMT
CMD ["jshell"]
# Sat, 28 Apr 2018 13:37:07 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 28 Apr 2018 13:37:08 GMT
ARG USER_HOME_DIR=/root
# Sat, 28 Apr 2018 13:37:08 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 28 Apr 2018 13:37:08 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 28 Apr 2018 13:37:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:37:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 28 Apr 2018 13:37:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 28 Apr 2018 13:37:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 28 Apr 2018 13:37:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 28 Apr 2018 13:37:40 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 28 Apr 2018 13:37:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 28 Apr 2018 13:37:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 28 Apr 2018 13:37:42 GMT
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
	-	`sha256:a5aeed630b98e2e497f4faa38b3f48ab0330dcbbc475177547e91ca92c9da208`  
		Last Modified: Sat, 28 Apr 2018 09:50:45 GMT  
		Size: 222.9 MB (222931929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31de3c25e9885e5c1d8a10c7e0aeab13813e6c73ea303964b75a24149a592042`  
		Last Modified: Sat, 28 Apr 2018 13:42:08 GMT  
		Size: 3.0 MB (2987406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf5c09a345294406d999eb32f1d5a9d498d8146bfa5053b9d2611097a08ac88`  
		Last Modified: Sat, 28 Apr 2018 13:42:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4fa94acbe731056835c5f1337db364a64c314b0e857c7f7b337ce00f59ddb2a`  
		Last Modified: Sat, 28 Apr 2018 13:42:09 GMT  
		Size: 8.9 MB (8946124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b222195a9c7e89ef22f0c6fcdf4ac1754bfe6aa12fdbf03a300972371341cc28`  
		Last Modified: Sat, 28 Apr 2018 13:42:08 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc0f8d158283fc934062265b8a1e8e591d62d9f435d19025618497aa796df8a`  
		Last Modified: Sat, 28 Apr 2018 13:42:07 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; s390x

```console
$ docker pull maven@sha256:cbb87e871736ef37bc5f833ca7f83bdf24f15289c7d462b9cf778f6c8d5b65a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.3 MB (236283671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa5770dcdc30bdff10f41a54f9083a549fc770f8f4a875f2821f9230a923122`
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
# Sat, 28 Apr 2018 14:23:40 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-3
# Sat, 28 Apr 2018 14:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 14:25:51 GMT
CMD ["jshell"]
# Sat, 28 Apr 2018 20:28:29 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 28 Apr 2018 20:28:29 GMT
ARG USER_HOME_DIR=/root
# Sat, 28 Apr 2018 20:28:30 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 28 Apr 2018 20:28:30 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 28 Apr 2018 20:28:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:28:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 28 Apr 2018 20:28:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 28 Apr 2018 20:28:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 28 Apr 2018 20:28:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 28 Apr 2018 20:28:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 28 Apr 2018 20:28:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 28 Apr 2018 20:28:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 28 Apr 2018 20:28:46 GMT
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
	-	`sha256:4491f5181ca0a3d3396a318c8897f3e2d19951ce169700c66fffc4f3b4c659c3`  
		Last Modified: Sat, 28 Apr 2018 14:46:12 GMT  
		Size: 198.9 MB (198890541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92fdcb07cdbd00ca6f32e737f9f920fe7e7eb1d42b224d6cca4e0933387571bb`  
		Last Modified: Sat, 28 Apr 2018 20:33:05 GMT  
		Size: 2.9 MB (2918116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1472f1d0a63546c5fdd3c958c24aa67abf03f03862325221284db209d91b9ed4`  
		Last Modified: Sat, 28 Apr 2018 20:33:03 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995404b5c98518bf128d75c62f00e18cca95d00a2e4e081aec950156926fd5a9`  
		Last Modified: Sat, 28 Apr 2018 20:33:06 GMT  
		Size: 8.9 MB (8945976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47d2143c701784f92ce1625ecc05bf51e4ddff7924884b56446cea4f4cd2a59`  
		Last Modified: Sat, 28 Apr 2018 20:33:03 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2fabacd9eda42265fa9ea246fcc31e448bf215437b2a1a1e86a730cdb4b628a`  
		Last Modified: Sat, 28 Apr 2018 20:33:03 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

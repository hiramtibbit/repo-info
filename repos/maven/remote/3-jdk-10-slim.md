## `maven:3-jdk-10-slim`

```console
$ docker pull maven@sha256:22946c55a49491aa6b82b733608cc413bd80767243ab0f6e9bc0352e757285bd
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
$ docker pull maven@sha256:2822e04202b615808e0a574dcf44362e34c7c3e946002939e4a2d0dbbc1c31bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.5 MB (311465058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d536815273a567c3c28be71a46c9da7b63f47381d1b51a229cad8924e92ad520`
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
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Tue, 16 Oct 2018 05:22:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:22:52 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 17:13:15 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 17:13:16 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 17:13:16 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 17:13:16 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 17:13:30 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:13:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Tue, 16 Oct 2018 17:13:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 17:13:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 17:13:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 17:13:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 17:13:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 17:13:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 17:13:37 GMT
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
	-	`sha256:fd59a337edcb2d8d3a1b3d1622ba66c3adf507dfc061b2ec0d78eac661adfc27`  
		Last Modified: Tue, 16 Oct 2018 05:47:30 GMT  
		Size: 273.8 MB (273833297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a635766176aec8f8a25be48e1c38a083c7cee0bef594124c98389e817dd88a4`  
		Last Modified: Tue, 16 Oct 2018 17:18:56 GMT  
		Size: 1.9 MB (1895862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976057bfc916b12586b328d569e8e7969c28c0b3af41afbaee8faa1b4759810d`  
		Last Modified: Tue, 16 Oct 2018 17:18:54 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e197fd170d17b941bfe7325cae282985e22a9274b583432157644deb1af172`  
		Last Modified: Tue, 16 Oct 2018 17:18:57 GMT  
		Size: 9.0 MB (8989209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9359de15f0e0430f3d49d4924afdf48dbc468c32bae218cb1b7e27497d29a11`  
		Last Modified: Tue, 16 Oct 2018 17:18:54 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8351b919265eaa64704baa4ff67d6859194a27052500e864e787d7ef6e0b96`  
		Last Modified: Tue, 16 Oct 2018 17:18:54 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:a2db04c5032d50ecd310df43a1c6c24787ec3b5149f0938087b7df9a2883108b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259599624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f85296284251b2847d273337cff3936a6fda1630fd4b40a95033bd214b1f189b`
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
# Tue, 16 Oct 2018 09:11:27 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:11:27 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:11:28 GMT
ENV JAVA_VERSION=10.0.2
# Tue, 16 Oct 2018 09:11:28 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Tue, 16 Oct 2018 09:12:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 09:12:26 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 13:09:18 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 13:09:18 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 13:09:19 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 13:09:20 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 13:09:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:09:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Tue, 16 Oct 2018 13:09:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 13:09:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 13:09:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 13:09:53 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 13:09:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 13:09:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 13:09:54 GMT
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
	-	`sha256:4bd585e6fe0ce79f2ff0eaf1ef5ed0e32c445ee587b1e72de0d3bd3ad833bd0f`  
		Last Modified: Tue, 16 Oct 2018 09:22:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db82629c4f1bab628a532b3258791fb5271362e794667cd705c13d3b8817a7c`  
		Last Modified: Tue, 16 Oct 2018 09:24:20 GMT  
		Size: 224.3 MB (224304306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d0a4a17693b761962a19bb4bfbe51c8f8c5310f59ebab4fee1975ebc6ccdd4`  
		Last Modified: Tue, 16 Oct 2018 13:13:21 GMT  
		Size: 1.8 MB (1800416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb59b38b3885653ade065cf444328769a8e82329476d0ab056e2f3eb9bd34fe`  
		Last Modified: Tue, 16 Oct 2018 13:13:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690f0ac78f8732a25421389aa4109269e2b040f88c8db341b4aefa4a79890258`  
		Last Modified: Tue, 16 Oct 2018 13:13:22 GMT  
		Size: 9.0 MB (8989217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cce35af9f9fd165c85f348f8f18beffb37150c97d3f20e15ce40fd82b229f0`  
		Last Modified: Tue, 16 Oct 2018 13:13:20 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5f3d983266a37c4596ea365a9c07421527407c78961d3a1a35a09ba99df769`  
		Last Modified: Tue, 16 Oct 2018 13:13:20 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:15e3380ccbb96a71dc71ff5d8c14bd18595598f9fe9459f437e444527d64f3d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271387212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e4bf74a002d471a4f116de2d8459b52d1ee27172bae3ffcdc996d83d5a0ce25`
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
# Wed, 05 Sep 2018 13:14:29 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 12:05:47 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 12:05:47 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 12:06:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 12:06:32 GMT
CMD ["jshell"]
# Sat, 29 Sep 2018 12:57:12 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 29 Sep 2018 12:57:13 GMT
ARG USER_HOME_DIR=/root
# Sat, 29 Sep 2018 12:57:13 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 29 Sep 2018 12:57:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 29 Sep 2018 12:57:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 12:57:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 29 Sep 2018 12:57:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 29 Sep 2018 12:57:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 29 Sep 2018 12:57:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 29 Sep 2018 12:57:57 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 29 Sep 2018 12:57:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 29 Sep 2018 12:58:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 29 Sep 2018 12:58:07 GMT
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
	-	`sha256:d111e6a305987c8f4221f0f1b980a91e385498b2b08dade9597055697d681b88`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f2399533bd116e51725a5b265d3b3ae27f03b62fe730d5a93fbceefea3fe28`  
		Last Modified: Sat, 29 Sep 2018 12:27:22 GMT  
		Size: 238.3 MB (238293883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86952c92f1b787914a9a66829537241c367d926d5e8c0cfb57828fc287cbf2d1`  
		Last Modified: Sat, 29 Sep 2018 13:01:20 GMT  
		Size: 1.7 MB (1680529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cb99fbb505ed40e595856ddd10e643421c8ddae742f8595e0e9339268b00a1`  
		Last Modified: Sat, 29 Sep 2018 13:01:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41afa1d4028e2b3c3fec2e190a89350cf8eca592f664bb77c7649aa8184308be`  
		Last Modified: Sat, 29 Sep 2018 13:01:21 GMT  
		Size: 9.0 MB (8989239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c2b70e010d9136a675d23ce685f11b320e44f85167241d70e03f6ab7c879f5`  
		Last Modified: Sat, 29 Sep 2018 13:01:20 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a1f1ed1890e2af6dadd165a7c7b8c6a82ae59934e569fc61cc38f66922d4fb`  
		Last Modified: Sat, 29 Sep 2018 13:01:20 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:7312ed62c7329c2f49aa4ce36cdba4faf641edcb498f9a0a463873cfabcd8f3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.1 MB (287052809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bda286b907d53940bc753f3350888b2b788b4f49a98925faf945d36028df47e`
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
# Tue, 16 Oct 2018 09:11:46 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:11:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:11:47 GMT
ENV JAVA_VERSION=10.0.2
# Tue, 16 Oct 2018 09:11:48 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Tue, 16 Oct 2018 09:13:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 09:13:51 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 23:24:51 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 23:24:52 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 23:24:52 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 23:24:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 23:25:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 23:25:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Tue, 16 Oct 2018 23:25:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 23:25:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 23:25:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 23:25:27 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 23:25:28 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 23:25:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 23:25:29 GMT
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
	-	`sha256:c95273e558341ce93d539250d00b93fb68136badfc6d74fa43bed2a9bf5ac743`  
		Last Modified: Tue, 16 Oct 2018 09:27:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47c359262d97fd81ac428155bc9523996fdd9a384c848b7fc5625d961251294`  
		Last Modified: Tue, 16 Oct 2018 09:28:38 GMT  
		Size: 251.2 MB (251162350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d95098e4d2fe2639a20828956e40c4c2b0b8dcf5980ad7ea3540f63a43ae74`  
		Last Modified: Tue, 16 Oct 2018 23:30:32 GMT  
		Size: 1.9 MB (1855084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c5d1a1db09825e676d395da00580635711008a711dd33eb2021d20528c4c3e`  
		Last Modified: Tue, 16 Oct 2018 23:30:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e614976581073503c7d0ef68fd5ebd1d82ce036639e69bdd74de2f2a8dbcebc8`  
		Last Modified: Tue, 16 Oct 2018 23:30:33 GMT  
		Size: 9.0 MB (8989215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2163edd5d54d2e2936abe76f03a44e2a99a272d3b88ffe60f0a0e1b967ed1a72`  
		Last Modified: Tue, 16 Oct 2018 23:30:31 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0062ad2708bdda95e743c41a7a14965978ce49e9dc0500bf71a29d06e03a980`  
		Last Modified: Tue, 16 Oct 2018 23:30:31 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; 386

```console
$ docker pull maven@sha256:741cf2fc9c6ec86f39e941e78cb345ff90a7525e6517f683547ba87537767b06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.6 MB (377596110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2de4ec0cc2018578e9f58ae49f7ee05020d4b4a0becd58465b9a7c9f9193fa`
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
# Wed, 05 Sep 2018 12:51:15 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:51:16 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 10:53:58 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 10:53:59 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 10:54:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 10:54:50 GMT
CMD ["jshell"]
# Sat, 29 Sep 2018 11:32:17 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 29 Sep 2018 11:32:17 GMT
ARG USER_HOME_DIR=/root
# Sat, 29 Sep 2018 11:32:18 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 29 Sep 2018 11:32:18 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 29 Sep 2018 11:32:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 11:32:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 29 Sep 2018 11:32:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 29 Sep 2018 11:32:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 29 Sep 2018 11:32:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 29 Sep 2018 11:32:29 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 29 Sep 2018 11:32:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 29 Sep 2018 11:32:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 29 Sep 2018 11:32:30 GMT
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
	-	`sha256:9e89b90599f0895ab1c534d8de2562ce3a6f075cefe4de08fc3b6d51484bdfc5`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ddbb1da53481571bf56201367ab3280e47fa719dc974f855f4b56f0a51fca0`  
		Last Modified: Sat, 29 Sep 2018 11:05:04 GMT  
		Size: 339.3 MB (339290711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0769a30f7a6e16d8a35b3b590e698b1c4488eeb1755297b05a718982efc726`  
		Last Modified: Sat, 29 Sep 2018 11:34:39 GMT  
		Size: 2.0 MB (1989396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6725233243f932f9b7b7f942777f41f59cac023ae10cc53a913b3833dcd57c`  
		Last Modified: Sat, 29 Sep 2018 11:34:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a4b02834431c5a403ab00c591fa416ea163fd0aebef076b86f51ce9dfdaada`  
		Last Modified: Sat, 29 Sep 2018 11:34:39 GMT  
		Size: 9.0 MB (8989230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28506a3411b78b7eed88102d974e5eaa32b7508d2f02ed589a27fe1d02cc76e0`  
		Last Modified: Sat, 29 Sep 2018 11:34:39 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fac3a828839e4ef357d9c77d6e670dd98fdc63e7e5529b3259507e3c40df25d`  
		Last Modified: Sat, 29 Sep 2018 11:34:39 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:6276c241992bafdb2bca056ffc8efd168861c8533d53e7fbf17323eaeae2abe6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292345445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb79eafeaa74b1e84001d6174f4982145e234fc87bca6d250f2f87838df6b8a4`
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
# Tue, 16 Oct 2018 08:34:54 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 08:34:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 08:34:58 GMT
ENV JAVA_VERSION=10.0.2
# Tue, 16 Oct 2018 08:35:03 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Tue, 16 Oct 2018 08:36:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 08:36:47 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 15:37:39 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 15:37:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 15:37:41 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 15:37:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 15:38:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:38:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Tue, 16 Oct 2018 15:39:06 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 15:39:09 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 15:39:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 15:39:12 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 15:39:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 15:39:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 15:39:16 GMT
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
	-	`sha256:d062b916bc9a924809d604dc29386b1558f3f7814b9540c0d3c35c591f72608e`  
		Last Modified: Tue, 16 Oct 2018 08:55:25 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee23c5df0766f031d3677019b4c50c9dd7349ff84960b9deef9e42fc89d2bbbc`  
		Last Modified: Tue, 16 Oct 2018 08:56:03 GMT  
		Size: 251.8 MB (251837314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4623c649ab21c25092d750dc90410d6635e759548be107537984a6859485a4f9`  
		Last Modified: Tue, 16 Oct 2018 15:44:50 GMT  
		Size: 2.1 MB (2089489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758bc24aa0f5cdf518380d430e4dc29dce87e489f74a6f8b3fe0579bcfe776e6`  
		Last Modified: Tue, 16 Oct 2018 15:44:49 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4ae230bac0107fef64d0fc67fb9e8f1eefc5dcc460b301c26d744eeadbc856`  
		Last Modified: Tue, 16 Oct 2018 15:44:51 GMT  
		Size: 9.0 MB (8989235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405a9c48d4c5c0a9048c51c0583c13816593423d7cdb7e97d0207f9d3f97d07a`  
		Last Modified: Tue, 16 Oct 2018 15:44:49 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb62824a6b64e5ab74c6017e2087410d88e0ff543573eff1f785046fe2c4698`  
		Last Modified: Tue, 16 Oct 2018 15:44:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; s390x

```console
$ docker pull maven@sha256:c6870fb1a1ba84af93faabd3e538f853bf0c6af94c42f4ed47797b5c8be67df4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 MB (285905778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52d9e55c9986433ff9056575ff3fea7b31db53525d6a18b3e03f914e2739418`
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
# Tue, 16 Oct 2018 11:50:00 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:50:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:50:01 GMT
ENV JAVA_VERSION=10.0.2
# Tue, 16 Oct 2018 11:50:01 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Tue, 16 Oct 2018 11:50:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 11:50:37 GMT
CMD ["jshell"]
# Tue, 16 Oct 2018 15:04:45 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 15:04:46 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 15:04:46 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 15:04:47 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 15:04:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:04:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Tue, 16 Oct 2018 15:05:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 15:05:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 15:05:09 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 15:05:09 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 15:05:10 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 15:05:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 15:05:10 GMT
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
	-	`sha256:3104b9dda4b9046c4192360cab3fd2ae20e56d2daba24be94d787e1167b41d54`  
		Last Modified: Tue, 16 Oct 2018 11:54:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e60a721eca0561fa10ecb556507edfb2009fa1bfcd40d60beb95a51e5b5847`  
		Last Modified: Tue, 16 Oct 2018 11:55:18 GMT  
		Size: 249.7 MB (249676832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d10c740a7eb5b06f7dc600aeea7f49ea8ac6cdffa344f160e0d84a62a86651b`  
		Last Modified: Tue, 16 Oct 2018 15:07:37 GMT  
		Size: 1.9 MB (1857054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437837241b7819be202f2d290528e4098c6d4fe21b12e576f17795bcb2dd3976`  
		Last Modified: Tue, 16 Oct 2018 15:07:36 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d4ef366895fe86c5dc1caf478a0b048460fe84b3b5e32e53407b5e1c560f5`  
		Last Modified: Tue, 16 Oct 2018 15:07:37 GMT  
		Size: 9.0 MB (8989213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c6114a8080aae5dafd61d8327f9f4aae4303c0e03a6a888e8e0250654c7224`  
		Last Modified: Tue, 16 Oct 2018 15:07:36 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de67bf2840e6879cb4889d20a709fb9cde06e4e4136190288f8980d8f7be3382`  
		Last Modified: Tue, 16 Oct 2018 15:07:36 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

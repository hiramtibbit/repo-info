## `maven:3-jdk-10-slim`

```console
$ docker pull maven@sha256:52fa7a8fdc6c30f8e4f67afbe563d88ca909288b1154d47c36a1d031f2158cdc
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
$ docker pull maven@sha256:17ac81c2a66d00ef0f787ec7c05633bb00bd151a83b95044948c220a76d8bc20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.4 MB (311404065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:933decce91b05d28ab25b1d61dbbf87b3b11a4e762c2a04ece2702f2999daa16`
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
# Wed, 05 Sep 2018 01:19:13 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 01:19:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:19:52 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 15:27:36 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 05 Sep 2018 15:27:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 05 Sep 2018 15:27:37 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 05 Sep 2018 15:27:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 05 Sep 2018 15:27:52 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:27:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Wed, 05 Sep 2018 15:28:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 05 Sep 2018 15:28:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 05 Sep 2018 15:28:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 05 Sep 2018 15:28:02 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 05 Sep 2018 15:28:03 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 05 Sep 2018 15:28:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 05 Sep 2018 15:28:03 GMT
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
	-	`sha256:2baa561332e300334fa017ef5b45151657527137d6c5d1996d8e8b7fa714bbba`  
		Last Modified: Wed, 05 Sep 2018 01:36:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4c901852afa436a0d3eb0e94858582b1dda5691a1a5f2828376aa5c7a7e20`  
		Last Modified: Wed, 05 Sep 2018 01:37:09 GMT  
		Size: 273.8 MB (273787323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d12df9f058de90dc54b29f0b55a974ba8529443ae01b3f4b1e152d22342910`  
		Last Modified: Wed, 05 Sep 2018 15:33:54 GMT  
		Size: 1.9 MB (1895514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a655c1e0dac8a598de90d471d37cceba879e4f4136e9738ae5400b88aa335eab`  
		Last Modified: Wed, 05 Sep 2018 15:33:55 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ad6bf0e4c68a1ad21a43d82561f3287f8cf5b6e7ac1f2a71216998edf7b339`  
		Last Modified: Wed, 05 Sep 2018 15:33:55 GMT  
		Size: 9.0 MB (8989232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb18a74dedc3273a0c1209cdd96216a80fd35a04e0a3d13e30a00b1a496a4e7`  
		Last Modified: Wed, 05 Sep 2018 15:33:53 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fddc7d47d3d0903e97dc05a61b4e9a649b25b4a9ba13a400a4a2a56d8e57c42`  
		Last Modified: Wed, 05 Sep 2018 15:33:53 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:ca2a067a432fc797e255c8dad61619daf659b9e349bbf548a529fecd59bd85b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259564911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a982d7f9fc489dffc8b44bad1c2a8af04b0b1ec285bea4a3919c968e2c42a2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:37 GMT
ADD file:c7d4df0199eabe1be20064e36b7f406cc093e6e4b249fe3d5e80efbdd9d11396 in / 
# Wed, 05 Sep 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:28:42 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 09:28:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 09:30:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 09:30:14 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 09:30:15 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 09:30:15 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 09:31:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 09:31:45 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 14:01:36 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 05 Sep 2018 14:01:37 GMT
ARG USER_HOME_DIR=/root
# Wed, 05 Sep 2018 14:01:37 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 05 Sep 2018 14:01:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 05 Sep 2018 14:02:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:02:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Wed, 05 Sep 2018 14:02:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 05 Sep 2018 14:02:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 05 Sep 2018 14:02:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 05 Sep 2018 14:02:14 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 05 Sep 2018 14:02:15 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 05 Sep 2018 14:02:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 05 Sep 2018 14:02:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:242ba358ac12243e79ea9900990c026a4b2a428ee912e82307cda7137ce87b08`  
		Last Modified: Wed, 05 Sep 2018 09:02:45 GMT  
		Size: 24.0 MB (24046737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9be3091e0f7f183201efb4d0d133657219a4951278ed991b57026f1390a136`  
		Last Modified: Wed, 05 Sep 2018 09:38:38 GMT  
		Size: 452.7 KB (452681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c6149e9cffbd63a5b8711d29fa55ec8913d650f6ba47eae844fdcceb45afd`  
		Last Modified: Wed, 05 Sep 2018 09:38:38 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c38bc6cad5552a2a60388a28ced2c9c70a64a36b5f04205c9c672ff1d84b699`  
		Last Modified: Wed, 05 Sep 2018 09:38:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f49dddd690de9d458ebacc79c9c2e7e1cbd788397100089e961fdee61a585e`  
		Last Modified: Wed, 05 Sep 2018 09:39:11 GMT  
		Size: 224.3 MB (224272227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0be64bc9d07c019cb1c9a14b6970ee001a52bc5e99c813775c76225479c778`  
		Last Modified: Wed, 05 Sep 2018 14:05:19 GMT  
		Size: 1.8 MB (1802319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d991c59ba60a896424a340727924b9474275693a106fc3c72ccc18a8a2d6bc06`  
		Last Modified: Wed, 05 Sep 2018 14:05:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130dd855c15267190b796bcb3125f2076bc147a43c8fd756c5c1d2927978dbae`  
		Last Modified: Wed, 05 Sep 2018 14:05:20 GMT  
		Size: 9.0 MB (8989248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f002ff0c2b0ec627a7d4885f426df256dde7005ba84f3b011e5bf26b3586293c`  
		Last Modified: Wed, 05 Sep 2018 14:05:19 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255bdfc87c7b43e839888532a4fc6bb0ddfd0170199509c0ebed71de640444e4`  
		Last Modified: Wed, 05 Sep 2018 14:05:19 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:c1ebb4d4c657780805874e19e325143994965235828d3b37d9c8ce91c0c4b2eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271352720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7815daea79bd49bdba17ea3e9f340f1742162af11b03a9ef95af62805bb341e`
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
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 13:15:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 13:15:16 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 17:43:07 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 05 Sep 2018 17:43:07 GMT
ARG USER_HOME_DIR=/root
# Wed, 05 Sep 2018 17:43:07 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 05 Sep 2018 17:43:08 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 05 Sep 2018 17:43:22 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:43:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Wed, 05 Sep 2018 17:43:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 05 Sep 2018 17:43:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 05 Sep 2018 17:43:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 05 Sep 2018 17:43:28 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 05 Sep 2018 17:43:28 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 05 Sep 2018 17:43:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 05 Sep 2018 17:43:29 GMT
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
	-	`sha256:e358f7bcdd89e3e0304c86be7989445863751f4f3df51f256242e2a21539a9aa`  
		Last Modified: Wed, 05 Sep 2018 13:37:09 GMT  
		Size: 238.3 MB (238261797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f179a6a6fb1faa137f02823a02500b5f13c73a905f95b3248717d16f760b299`  
		Last Modified: Wed, 05 Sep 2018 17:46:10 GMT  
		Size: 1.7 MB (1678135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3eaff19755c276cac38ea1feeb34f2d608bab0a9ea1909ebed2a3640a0b6bc`  
		Last Modified: Wed, 05 Sep 2018 17:46:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f300c56119148cbb718c2a8bf393f5838f3274b24bf7e97fcfbd60dcb4ac2fcb`  
		Last Modified: Wed, 05 Sep 2018 17:46:09 GMT  
		Size: 9.0 MB (8989231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa40ef9231eee87453d4b80808df17fa467218a4819685925d13238cc3695158`  
		Last Modified: Wed, 05 Sep 2018 17:46:08 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca211702cb912432a121f14b35b8a6fdb7f182160eca3d81acae3b8e6a7a515`  
		Last Modified: Wed, 05 Sep 2018 17:46:17 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c040145344a088d471446645f7b6d357482c5512647dafb37f4f42c8dba53e7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285294358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbadf225523bdd746541084ceecdc80ca744fc2886316e078d06fee74d321c9b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Jul 2018 08:44:27 GMT
ADD file:7441783fb02cfd0ec33462b944c21331e3ad1da6f38a9c835f677cb88c6dd7ec in / 
# Tue, 17 Jul 2018 08:44:33 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:56:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:56:59 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 09:57:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 10:06:38 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 10:06:39 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Jul 2018 10:29:12 GMT
ENV JAVA_VERSION=10.0.2+13
# Sat, 21 Jul 2018 10:29:13 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 21 Jul 2018 10:30:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 21 Jul 2018 10:30:56 GMT
CMD ["jshell"]
# Sat, 21 Jul 2018 16:47:52 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 21 Jul 2018 16:47:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 21 Jul 2018 16:47:54 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 21 Jul 2018 16:47:54 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 21 Jul 2018 16:48:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 16:48:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 21 Jul 2018 16:48:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 21 Jul 2018 16:48:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 21 Jul 2018 16:48:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 21 Jul 2018 16:48:39 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 21 Jul 2018 16:48:40 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 21 Jul 2018 16:48:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 21 Jul 2018 16:48:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:458ba916572f94d66f19aa3ff0115bc9864ed4d91c67787dcfcbb4b00bfbdb97`  
		Last Modified: Tue, 17 Jul 2018 08:53:47 GMT  
		Size: 23.5 MB (23468736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e2b81cd49e56ea3c4cae916184f441c675aa527aa693a54010d266d76746f7`  
		Last Modified: Tue, 17 Jul 2018 10:23:50 GMT  
		Size: 445.0 KB (445018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a478f77447653d89e7bb16b1270e51445b598b0c48ed8f7046fcc124bae1ae83`  
		Last Modified: Tue, 17 Jul 2018 10:23:50 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01739fd7fc001c331d8e1198f0fbba5b85522f69feaf74321f78180073301d`  
		Last Modified: Tue, 17 Jul 2018 10:31:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccc801622e256986531c0d45eb849907cf407f96f5b238a3c0f9feae1bfbdbf`  
		Last Modified: Sat, 21 Jul 2018 11:09:46 GMT  
		Size: 250.4 MB (250352354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19d9e9e0af0679c5aba22273d571ff173de4b379000a7e34b9eb8ac74571163`  
		Last Modified: Sat, 21 Jul 2018 16:53:07 GMT  
		Size: 2.0 MB (2037340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10b2f33ca51609ffd7520e046f90f08e566eb6fa36bb4203e628b126cd0c61e`  
		Last Modified: Sat, 21 Jul 2018 16:53:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abd4c1d9493d0e4ae78d005ff8f423a7ff02fce1d43160be70f811fafebd756`  
		Last Modified: Sat, 21 Jul 2018 16:53:08 GMT  
		Size: 9.0 MB (8989216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032ecbec04f5cd0bdfb2197d0a91a08651d8674d10b3f12e74926c33be530bb7`  
		Last Modified: Sat, 21 Jul 2018 16:53:07 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b8ae564710d278ada0b95021debc96e3f70b12aa88ad5f8d34f3ce4df99443`  
		Last Modified: Sat, 21 Jul 2018 16:53:06 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; 386

```console
$ docker pull maven@sha256:397546ceb7748fdf54dff34b2da48281ec81a23bbbc1a718405c0a69b571181b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.6 MB (377571149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56deec502a17be1d9b2e30c1d7da93d0993ce4dca3e2a6a7539f07de9dbcb4e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Jul 2018 10:47:10 GMT
ADD file:20144dcfd227e7e2fd2fa000865bff7a8586b26f763501c4602235f1d4f04119 in / 
# Tue, 17 Jul 2018 10:47:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:22:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:22:06 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:22:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 11:25:32 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 11:25:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 21 Jul 2018 11:52:51 GMT
ENV JAVA_VERSION=10.0.2+13
# Sat, 21 Jul 2018 11:52:51 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 21 Jul 2018 11:53:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 21 Jul 2018 11:53:49 GMT
CMD ["jshell"]
# Sat, 21 Jul 2018 14:34:06 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 21 Jul 2018 14:34:06 GMT
ARG USER_HOME_DIR=/root
# Sat, 21 Jul 2018 14:34:07 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 21 Jul 2018 14:34:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 21 Jul 2018 14:34:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jul 2018 14:34:22 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Sat, 21 Jul 2018 14:34:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 21 Jul 2018 14:34:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 21 Jul 2018 14:34:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 21 Jul 2018 14:34:25 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 21 Jul 2018 14:34:26 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 21 Jul 2018 14:34:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 21 Jul 2018 14:34:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5dfc5302b4bfc84b249f67f2e7094fdf4be54645eb3b6ce014c0c7ecca1e6df4`  
		Last Modified: Tue, 17 Jul 2018 11:04:29 GMT  
		Size: 26.8 MB (26847422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2f3a405923c070ef2fc1a30ce2d9036eee908d3d315c21569898eb8390c12e`  
		Last Modified: Tue, 17 Jul 2018 11:40:12 GMT  
		Size: 468.8 KB (468803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d96811d096ea29f146e1f9e59c6100f66189bee526673d4cc256ae946095fe`  
		Last Modified: Tue, 17 Jul 2018 11:40:12 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c87cc8b7a196c1115781e18b928f3a64611eb3b77eff6bd62a2084d3cc5a61`  
		Last Modified: Tue, 17 Jul 2018 11:49:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e57b081656bc899982966675f9e9e809a0c3d539d93af786ab5ec2b73516169`  
		Last Modified: Sat, 21 Jul 2018 12:16:32 GMT  
		Size: 339.0 MB (338990923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ac1c0e886a5fd8cb442d8c8f8f690b0467caaf1ceddf4fe95026f03b3f82dd`  
		Last Modified: Sat, 21 Jul 2018 14:36:07 GMT  
		Size: 2.3 MB (2273097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60f29ca8de7a056f25a7aa5dae3c0df59f453ca768aeb8f700334b6412bceed`  
		Last Modified: Sat, 21 Jul 2018 14:36:07 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb1124d19b952e6a5d8b7c9a2ad9567451a86f0f8a8e0f24e15d1a112132213`  
		Last Modified: Sat, 21 Jul 2018 14:36:08 GMT  
		Size: 9.0 MB (8989212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d721bf57f579d4c7aeae5555fcef3ff166bd7db69437722dd3162a1268c9a342`  
		Last Modified: Sat, 21 Jul 2018 14:36:07 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb3f60db69507242d737f0ca537f32832c4e774807300125a5a0d79ec13db99`  
		Last Modified: Sat, 21 Jul 2018 14:36:07 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:257848bcdca6e9430a8b4cb05acdc8bdc32ec5c741ef378a226691e430e76fc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.5 MB (291531428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf1dfeae6b1230abd05aae5cf6eec6f5a7fa5fe434b5003b2bc17ebe6ea6960`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 05 Sep 2018 08:18:11 GMT
ADD file:2c83f3c9e6ae13dc30fafc9ae3805ad69b08b4da3106915ed14ab1f30f967f23 in / 
# Wed, 05 Sep 2018 08:18:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:45:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:57:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:57:02 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 11:57:03 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 11:57:03 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 11:58:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 11:58:22 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 16:46:50 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 05 Sep 2018 16:46:51 GMT
ARG USER_HOME_DIR=/root
# Wed, 05 Sep 2018 16:46:52 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 05 Sep 2018 16:46:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 05 Sep 2018 16:47:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:47:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Wed, 05 Sep 2018 16:47:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 05 Sep 2018 16:47:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 05 Sep 2018 16:47:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 05 Sep 2018 16:47:32 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 05 Sep 2018 16:47:32 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 05 Sep 2018 16:47:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 05 Sep 2018 16:47:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ad06b39b761d5d0d233a1f9ed85dd96e65a277e736303cc95163a7aff63a44ec`  
		Last Modified: Wed, 05 Sep 2018 08:23:53 GMT  
		Size: 28.7 MB (28718549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bca90424a7272ac7b846fddea3728bdaaae7093a26bda8e0596bdd046aa8d2`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 458.4 KB (458392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e875ef1b7436e18e8f4d510cd11b49d70c3cc15aadbdff5eceb47089e22b733`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70776989c90e7bf1525a8eda7b904cd78325751c1c4a02b57a879c362c1d105`  
		Last Modified: Wed, 05 Sep 2018 12:24:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d030986ae7618511c529788d3947eedbadbb74076b2f53ae9e36c9f75d49ac75`  
		Last Modified: Wed, 05 Sep 2018 12:25:31 GMT  
		Size: 251.3 MB (251309541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4514026a140d88a6671678788bf8d5236efa8fe2d793f6bf16fa6120fb094a19`  
		Last Modified: Wed, 05 Sep 2018 16:50:07 GMT  
		Size: 2.1 MB (2054007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da30785fcc06491848074e0aff0947269096990cc1fdc33edbf9745169696d05`  
		Last Modified: Wed, 05 Sep 2018 16:50:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be29c0b0941ac344e21b3c3f85623a2fe50a243caee70e9dccfec748d7a3e71`  
		Last Modified: Wed, 05 Sep 2018 16:50:08 GMT  
		Size: 9.0 MB (8989240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd181908b7958b949694c85bd97723d56306ce5272275fc651333c9ba71c376`  
		Last Modified: Wed, 05 Sep 2018 16:50:06 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a6705385de9e171fc2087da6c976a7a7ff24273a85a77ce31851858fe47818`  
		Last Modified: Wed, 05 Sep 2018 16:50:06 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-10-slim` - linux; s390x

```console
$ docker pull maven@sha256:b59dacc57fc0afb73d974c7edf771a75a15e84f15ff1afd814e42e43baa014a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 MB (285905294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2fd6b151636a0a8b992fda9a0b16f62ef7dc31c42b00eb49ce74902c80f7a8d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:49 GMT
ADD file:7095b21d997eff90a29af9f20d020b10d14cea2f20456b08af38e55cc6c5dcfb in / 
# Wed, 05 Sep 2018 11:42:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:06:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:06:45 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:07:55 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:07:55 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 12:07:56 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 12:07:56 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 12:08:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 12:08:38 GMT
CMD ["jshell"]
# Wed, 05 Sep 2018 15:05:23 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 05 Sep 2018 15:05:23 GMT
ARG USER_HOME_DIR=/root
# Wed, 05 Sep 2018 15:05:24 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 05 Sep 2018 15:05:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 05 Sep 2018 15:05:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:05:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN ln -s /etc/java-10-openjdk /usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)/conf
# Wed, 05 Sep 2018 15:05:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 05 Sep 2018 15:05:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 05 Sep 2018 15:05:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 05 Sep 2018 15:05:46 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 05 Sep 2018 15:05:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 05 Sep 2018 15:05:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 05 Sep 2018 15:05:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0141ef1e371b0b8a4fc6d4d5118bbbf6045c295fad232833a634af2cf45bd823`  
		Last Modified: Wed, 05 Sep 2018 11:47:38 GMT  
		Size: 24.9 MB (24910961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc3bfe0feae05698cb0859fa53d95daee2e1eaab41cfebb8f0ce0069be8249f`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 469.8 KB (469760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb38e1f6e0d29149721db25f9fbb79505806393a70c856ce96f12151c543441`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622e8c23a6cd95f633fc06b7d0f1738dad7c31e9d3124e92c3c647ee51eed9b8`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46fd515f8bdf1e966ac199f762f0bf769dc673e31620830721578c1f2567013`  
		Last Modified: Wed, 05 Sep 2018 12:11:49 GMT  
		Size: 249.7 MB (249674186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d815d93ad2bb35dcaed83f1d12b4e637c17d65596ec2da7fc5031bd2691473e8`  
		Last Modified: Wed, 05 Sep 2018 15:07:23 GMT  
		Size: 1.9 MB (1859469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09342212a44e5350f65c77a4991c196b70bd61cfc66bf14c5fc72672c513f774`  
		Last Modified: Wed, 05 Sep 2018 15:07:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850a2d6e248fdd5274a29a39bd2704f4a158e85055959514c0e38a53883f0a68`  
		Last Modified: Wed, 05 Sep 2018 15:07:23 GMT  
		Size: 9.0 MB (8989216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ac055a811ecb5526c7469b1c1bc077df64154e75d57424b05c9d2b37507c9e`  
		Last Modified: Wed, 05 Sep 2018 15:07:22 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04d181d679b7ea92a2d6eeaebd8bca6b5863c1166dd6dfa9815a319b8bcd313`  
		Last Modified: Wed, 05 Sep 2018 15:07:22 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

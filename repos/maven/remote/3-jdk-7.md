## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:96e1d27e4b82156e662837550e3360ab1962648d08c696ade7d45cbca97766c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

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

### `maven:3-jdk-7` - linux; arm variant v5

```console
$ docker pull maven@sha256:341c936541a2078a670a87e1267946432cb1983fcc6124b8f951bd615e88bb02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.5 MB (205470023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b111b9a233ce3cabde556460a84b57c1a8a07515556c5c61ae0fd06372bc1a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:29:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:29:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 14:29:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 14:29:07 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 14:29:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 14:29:07 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Sep 2018 14:29:08 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 05 Sep 2018 14:30:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 03 Nov 2018 08:51:51 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 03 Nov 2018 08:51:51 GMT
ARG USER_HOME_DIR=/root
# Sat, 03 Nov 2018 08:51:52 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 03 Nov 2018 08:51:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 03 Nov 2018 08:51:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 03 Nov 2018 08:52:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 03 Nov 2018 08:52:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 03 Nov 2018 08:52:01 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 03 Nov 2018 08:52:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 03 Nov 2018 08:52:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 03 Nov 2018 08:52:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aa51c9e15e98d67294aa44c71558aa6a991e2657d211dec1ceaeea4a2759bc`  
		Last Modified: Wed, 05 Sep 2018 14:42:41 GMT  
		Size: 821.4 KB (821427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6789df0668fab9d80b1f34a305d3e7771d9acde6ee87d4a26564b4d7350765`  
		Last Modified: Wed, 05 Sep 2018 14:42:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a813a2aea73adb5f787457f9e969aa8f0eff4c0ba63387d094b8f9b85ecb8fc6`  
		Last Modified: Wed, 05 Sep 2018 14:42:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc52689182f329952d12a68266de621ab31b719509438df3face8d5ee2852d2f`  
		Last Modified: Wed, 05 Sep 2018 14:42:59 GMT  
		Size: 84.9 MB (84939879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6c7725585a4715f22868f8695e0d50f7cd4ef7c41b28141994a893a2a32cb4`  
		Last Modified: Sat, 03 Nov 2018 08:55:54 GMT  
		Size: 9.1 MB (9087976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d47d045d531a486071aa5840dc12550a8baa67ad98be2f515f021f981ae142`  
		Last Modified: Sat, 03 Nov 2018 08:55:53 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4890296a9d404c72bf433380b66de28b445c4d2b9657cb34691ed12e2035b053`  
		Last Modified: Sat, 03 Nov 2018 08:55:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; 386

```console
$ docker pull maven@sha256:f3bbea5fea6dd7fde25fdac9cf39d5c06b7d995cca9ac81806e868e891b1708a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235733667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c61db290437c70bf506117420064220efbc3ba714b3bcf9ba6584f559f13d30`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:07 GMT
ADD file:884a15e85725363fbbc2c6e8db4d505681cab38aaccb85d33230096fceb51ad1 in / 
# Tue, 16 Oct 2018 10:41:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:23:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:23:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:24:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:38:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:38:10 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:38:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:38:11 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:38:11 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 17 Oct 2018 03:38:11 GMT
ENV JAVA_VERSION=7u181
# Wed, 17 Oct 2018 03:38:12 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 17 Oct 2018 03:39:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 03 Nov 2018 11:05:42 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 03 Nov 2018 11:05:42 GMT
ARG USER_HOME_DIR=/root
# Sat, 03 Nov 2018 11:05:42 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 03 Nov 2018 11:05:43 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 03 Nov 2018 11:05:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 03 Nov 2018 11:05:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 03 Nov 2018 11:05:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 03 Nov 2018 11:05:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 03 Nov 2018 11:05:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 03 Nov 2018 11:05:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 03 Nov 2018 11:05:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:58744882a671928d73076405b749948006049d6d70461101d15a64e8b66d1786`  
		Last Modified: Tue, 16 Oct 2018 10:55:45 GMT  
		Size: 54.5 MB (54484289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98febec5483097f081c5032f812a7e64a5b4d73c4d741999bc664f6e3f048797`  
		Last Modified: Tue, 16 Oct 2018 21:40:20 GMT  
		Size: 19.8 MB (19835996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee4bfa90c6685c6307afa1e70690a9b39c02a9f1905e3138698722d145d7390`  
		Last Modified: Tue, 16 Oct 2018 21:41:12 GMT  
		Size: 44.0 MB (43952414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf77cf3c94ec60bdca1316a53c11d8cb51fecf74ca2d8ecdc8e1b64c76f5425d`  
		Last Modified: Wed, 17 Oct 2018 03:52:05 GMT  
		Size: 831.2 KB (831206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ab8edd044a7f304829c7e97ee6a4bfe197937cd6946cf4c18550fddf8b090c`  
		Last Modified: Wed, 17 Oct 2018 03:52:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d15e97e56c0e8fee23657da61a84980335983cfb43f2ed6391b4bb4557dd1ea`  
		Last Modified: Wed, 17 Oct 2018 03:52:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d06c1716d8ac9e001487fec5877b0f2e7c0e835771a8670efa0e5938f0d9088e`  
		Last Modified: Wed, 17 Oct 2018 03:52:21 GMT  
		Size: 107.5 MB (107540360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff5699bba652d58e437eb5d82c674851dc3110bcd170d236be015b1bba48f5`  
		Last Modified: Sat, 03 Nov 2018 11:11:07 GMT  
		Size: 9.1 MB (9087914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8684d850b666554cac4051914c2f5ebe40ec75c0ad72995e1f0a55e251c3e23e`  
		Last Modified: Sat, 03 Nov 2018 11:11:06 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811ca774b6ad697445787d155b91153e2b2e920d7d82135b7035695de5479ab9`  
		Last Modified: Sat, 03 Nov 2018 11:11:06 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

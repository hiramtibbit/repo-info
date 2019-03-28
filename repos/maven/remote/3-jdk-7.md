## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:1cbcdd12eb8725af17c9e856508c126c5b5b60e49d82c34c8ba70f00cdeb76fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `maven:3-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:9c6e96420fcb4fe14f0d3527827e823aaf55585a9d344d6958bc3f143d47fb5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.1 MB (223129768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2567824094e0ab184b1f292cd6d0309c08c4e5378069ea359e991a7cac5625`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:51:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:51:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:51:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:51:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:51:33 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:29:13 GMT
ENV JAVA_VERSION=7u211
# Wed, 27 Mar 2019 23:29:14 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 27 Mar 2019 23:33:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:20:05 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 28 Mar 2019 00:20:05 GMT
ARG USER_HOME_DIR=/root
# Thu, 28 Mar 2019 00:20:05 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 28 Mar 2019 00:20:05 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 28 Mar 2019 00:20:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 28 Mar 2019 00:20:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 28 Mar 2019 00:20:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 28 Mar 2019 00:20:08 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 28 Mar 2019 00:20:08 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 28 Mar 2019 00:20:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 28 Mar 2019 00:20:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe5b9a5ae4df86ade5163499bec6552c354611960eabfc7f1391f9e9f57945`  
		Last Modified: Tue, 26 Mar 2019 23:30:21 GMT  
		Size: 17.5 MB (17541227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc848917b0a4c37d6f00a2db476e407c6b36ce371a07e421e1b3b943ed64cba`  
		Last Modified: Tue, 26 Mar 2019 23:30:34 GMT  
		Size: 43.3 MB (43313715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cac1f45771ba8e8dee2a881fd6ab6e1b9a338720414178a3ad064729976776`  
		Last Modified: Wed, 27 Mar 2019 01:09:40 GMT  
		Size: 828.3 KB (828335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:badf01f9cd8671026a302dcc51e313b9bde9a88685c590e382cf996dc73eb473`  
		Last Modified: Wed, 27 Mar 2019 01:09:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f15d623984e03971476b794267abd8e5de1799f7f051e004fee36485c8fc58`  
		Last Modified: Wed, 27 Mar 2019 01:09:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9052adf3d3ddd1cc037f3c2f817ec9f05bb47302cb9a4612bad3accb4293b448`  
		Last Modified: Wed, 27 Mar 2019 23:48:04 GMT  
		Size: 98.0 MB (97974169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4939cb7f46955ed43c9bbf4fc684ac1211a67f962d0701e755a10f7da0db93d3`  
		Last Modified: Thu, 28 Mar 2019 00:22:38 GMT  
		Size: 9.1 MB (9087924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eed606e3b45e83bd439568ccc9ab1b5dcc749020ae83a851ce25037a6b8631f`  
		Last Modified: Thu, 28 Mar 2019 00:22:37 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c85619dd6de22fd595ad291cbaf22e29e4f5ff72e2d5f5ceb05c8de5ef149f`  
		Last Modified: Thu, 28 Mar 2019 00:22:37 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v5

```console
$ docker pull maven@sha256:15719eff5573f6ad186e07dcf283b2e0d3b4abccc24b6ecc872da3cae580df92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205641731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472ebaba1c84e303d7ec954bd6e82a1b7199b069af5ad4d06d75ecb210507eeb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Mar 2019 08:50:20 GMT
ADD file:3c356511cef57ac0765cb3dbc44849681160eed0da2bab71abbdfdf87a2f3c66 in / 
# Wed, 27 Mar 2019 08:50:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:37:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:37:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:08:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:08:55 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:08:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:08:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:09:00 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:09:00 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Mar 2019 12:09:01 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 27 Mar 2019 12:11:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 16:32:14 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 27 Mar 2019 16:32:14 GMT
ARG USER_HOME_DIR=/root
# Wed, 27 Mar 2019 16:32:15 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 27 Mar 2019 16:32:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 27 Mar 2019 16:32:22 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 27 Mar 2019 16:32:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 27 Mar 2019 16:32:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 27 Mar 2019 16:32:23 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 27 Mar 2019 16:32:24 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 27 Mar 2019 16:32:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 27 Mar 2019 16:32:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:35faed585909f6e9e85497a99e01695f4aeb8262181d87fcafd6f815fe5aa8c8`  
		Last Modified: Wed, 27 Mar 2019 08:56:55 GMT  
		Size: 52.6 MB (52571358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19004d17af2e3c968fdff26408889aa5005d87283ecbfba81c84b0ffebb84b1`  
		Last Modified: Wed, 27 Mar 2019 10:07:13 GMT  
		Size: 17.0 MB (17032562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd59e10a24df3a15e158152abd46f57ef5c0627f24b262fa9e975343159b08e3`  
		Last Modified: Wed, 27 Mar 2019 10:07:36 GMT  
		Size: 41.2 MB (41155805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd60d16b045b8fb72ff37bbb9c6f115adeb5bb77ed79ee102b69f25c176915b`  
		Last Modified: Wed, 27 Mar 2019 12:23:24 GMT  
		Size: 821.6 KB (821621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedd353b26bf1dad8e8e608b1523e9fab50cb2188923ecc6e0f61f655ead390a`  
		Last Modified: Wed, 27 Mar 2019 12:23:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec77bdf024c42a42e1afd9b5cf5c95c9c60e0c86b3bcf2dfd654322de8a1459`  
		Last Modified: Wed, 27 Mar 2019 12:23:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c39019ee6d992a9d6d989a9a85083226836316ab27b4a2792db562b6e83a6e`  
		Last Modified: Wed, 27 Mar 2019 12:23:42 GMT  
		Size: 85.0 MB (84970932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0e0a071cf4933b45f04456cc9fa0bc59b1d7cf796a3ed55c2e04f564077e89`  
		Last Modified: Wed, 27 Mar 2019 16:33:39 GMT  
		Size: 9.1 MB (9087967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8990c9af5717a038180178b335b4ce1f22eee247b526e6cfcb147670c1b77b4a`  
		Last Modified: Wed, 27 Mar 2019 16:33:38 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e61358d22f6cfd1bac849b0e1aed653da537ab392f29253ba76b790263f88`  
		Last Modified: Wed, 27 Mar 2019 16:33:38 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v7

```console
$ docker pull maven@sha256:eedbff1393de7f4f16f92aaca94e7524ae8897c81ef163f76b43dbbff0277b9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.3 MB (200285141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e676558eaa34f03b09700255a45cac7f9233d7d5a985190d098ae8f18aef4d3d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Mar 2019 12:03:57 GMT
ADD file:4757894eb0296869eee5517ee63abdb019c5b02b28e2de6774336869227076ad in / 
# Wed, 27 Mar 2019 12:03:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:04:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:04:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:05:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:00:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:00:59 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:01:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:01:03 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:01:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 15:01:04 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Mar 2019 15:01:05 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 27 Mar 2019 15:08:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 17:53:04 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 27 Mar 2019 17:53:05 GMT
ARG USER_HOME_DIR=/root
# Wed, 27 Mar 2019 17:53:05 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 27 Mar 2019 17:53:06 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 27 Mar 2019 17:53:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 27 Mar 2019 17:53:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 27 Mar 2019 17:53:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 27 Mar 2019 17:53:13 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 27 Mar 2019 17:53:14 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 27 Mar 2019 17:53:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 27 Mar 2019 17:53:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9cb2604037f474632362bf2141b9a7472452b696f2b0974eef3c5208260e6d69`  
		Last Modified: Wed, 27 Mar 2019 12:10:48 GMT  
		Size: 50.3 MB (50294640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbade77d5540720db42ecb08c263abf534c719f427db0c1c3d285765ba1fe238`  
		Last Modified: Wed, 27 Mar 2019 13:19:12 GMT  
		Size: 16.7 MB (16717953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264a4d46bfc19d14756c9c8906b4fad6db8178def3b95df0fdead9ca451cf204`  
		Last Modified: Wed, 27 Mar 2019 13:19:33 GMT  
		Size: 39.8 MB (39765443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b1c7c52825504d6cf739ff61c1780b8c9b1072a9b2eee1208c6e59571f0a11`  
		Last Modified: Wed, 27 Mar 2019 15:18:35 GMT  
		Size: 795.5 KB (795483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0ddd5a61249b859f69b16c4ead5777071ff6b3bf51fd3e6ea56881308bac3b`  
		Last Modified: Wed, 27 Mar 2019 15:18:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d382f4c9b8e173a32df16467e327d381a66515176512144232ae48a191a4ffe`  
		Last Modified: Wed, 27 Mar 2019 15:18:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f2234abd26db071232dc8a4a412abf8cd2861922999defaf5272302b094298`  
		Last Modified: Wed, 27 Mar 2019 15:18:52 GMT  
		Size: 83.6 MB (83622170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7ed8724241cd90a33bce700d32defd686453e58d1e89902cfef5f1351836fc`  
		Last Modified: Wed, 27 Mar 2019 17:53:53 GMT  
		Size: 9.1 MB (9087962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81b60d619076d9422d09a3e860716131472eca1620eed8b43df62620a4d8897`  
		Last Modified: Wed, 27 Mar 2019 17:53:52 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08448664268171292aaec06986618736ab741a39cd1ec4b27d5f8143aa14a3d3`  
		Last Modified: Wed, 27 Mar 2019 17:53:52 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; 386

```console
$ docker pull maven@sha256:a68385308213fdaedd4ce6cc58958a7c926d739966a9b4ae7d7388f7c8148e83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.9 MB (235910489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd06ccdcbe2f429eec861f79270bbb1524663d4c2b97951696f3d391e699de7f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 05 Mar 2019 11:40:55 GMT
ADD file:195af36095959161134ae0fc4d9bcb4aee6197916a6ee7b54451a229d2db3e89 in / 
# Tue, 05 Mar 2019 11:40:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:59:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 21:03:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:25:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Mar 2019 03:25:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Mar 2019 03:25:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Mar 2019 03:25:39 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Mar 2019 03:25:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Mar 2019 03:25:39 GMT
ENV JAVA_VERSION=7u181
# Wed, 06 Mar 2019 03:25:40 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 06 Mar 2019 03:29:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Mar 2019 05:22:13 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 06 Mar 2019 05:22:13 GMT
ARG USER_HOME_DIR=/root
# Wed, 06 Mar 2019 05:22:13 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 06 Mar 2019 05:22:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 06 Mar 2019 05:22:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 06 Mar 2019 05:22:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 06 Mar 2019 05:22:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 06 Mar 2019 05:22:16 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 06 Mar 2019 05:22:16 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 06 Mar 2019 05:22:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 06 Mar 2019 05:22:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f7ce4d781f3676a0be48b8d3d34d6f425e873120e0e4f57aa109f394b797292d`  
		Last Modified: Tue, 05 Mar 2019 11:51:08 GMT  
		Size: 54.6 MB (54604426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a0d5b8eca14fd26922c4d3f67119113f60045f853d3af1882dca1ad76136d`  
		Last Modified: Tue, 05 Mar 2019 21:15:47 GMT  
		Size: 19.8 MB (19847940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2765aef17b790d1b1e5a81d1b7a6fbd3d6f0977516b506c404ccdbf3e43974b9`  
		Last Modified: Tue, 05 Mar 2019 21:16:01 GMT  
		Size: 44.0 MB (43951800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af46226ba1b4370766d8601ea6d7ba0f3f714508c7bbbabb987ba4871878d2cc`  
		Last Modified: Wed, 06 Mar 2019 03:38:54 GMT  
		Size: 831.3 KB (831264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fc1f0501ec4102fc1f96cb08c90c022c4e52b1c96401f5e39808114d0b91ec`  
		Last Modified: Wed, 06 Mar 2019 03:38:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ccbf6ddbb1c3c57d9bcf05342d82c28690dfb9ad1262381b61368ea77744ae`  
		Last Modified: Wed, 06 Mar 2019 03:38:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296c02d9b15b91c8718ffe3ef5a73b9dee419c957f6e2e128c64b63d66f5493a`  
		Last Modified: Wed, 06 Mar 2019 03:39:10 GMT  
		Size: 107.6 MB (107585638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999ab16ca3212ca5ef9f61c41192b83194a2df502fdd2995c1e28e67c9d5462`  
		Last Modified: Wed, 06 Mar 2019 05:23:01 GMT  
		Size: 9.1 MB (9087930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7701c8ead7b753d66bfeda93a8c448492e8f64dcf8dd9564a88c9864817e97`  
		Last Modified: Wed, 06 Mar 2019 05:23:00 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34c3b2531bb8b3096ed19232df592c0e9a7c0ac6cb235d7c6ac24db2989c50a`  
		Last Modified: Wed, 06 Mar 2019 05:23:00 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

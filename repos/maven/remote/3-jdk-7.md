## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:157e9009b6b42bea69df7bb1b22d55c1317786d9d6e4bb6324178f0b24ab8567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `maven:3-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:9778b3547519fc0a4a6209fb44bce812e36655de9a0a18a0d5b1f77cabcf0f5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.1 MB (223055786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d7e0d944e027b2b40149eb1aa8638aae7432427dd52e3b401136aff909e586`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 22 Jan 2019 19:23:31 GMT
ADD file:3392f08cefaf93484868c5183e810a29e7cc370d21dae7cff10b856b2b21d072 in / 
# Tue, 22 Jan 2019 19:23:31 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 19:58:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:00:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:21:52 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:21:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:21:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:21:53 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:21:54 GMT
ENV JAVA_VERSION=7u181
# Tue, 22 Jan 2019 21:21:54 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 22 Jan 2019 21:24:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 06:49:17 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 06:49:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 06:49:18 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 06:49:18 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 06:49:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 06:49:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 06:49:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 06:49:20 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 06:49:20 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 06:49:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 06:49:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8ac9f5ca4429ff58493e4cb486b7a5eaa6af0a4711e9bda1ce4671732e25d1d1`  
		Last Modified: Tue, 22 Jan 2019 19:34:35 GMT  
		Size: 54.4 MB (54385768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4aea35522d8492e879829e82df51ae00b3313707430c6c29a715ad366c406df`  
		Last Modified: Tue, 22 Jan 2019 20:11:18 GMT  
		Size: 17.5 MB (17538985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f400822c61589bbf9c0df5d51fb91a79a2fe29e8f97aa3ef861c173fb417a7e`  
		Last Modified: Tue, 22 Jan 2019 20:11:33 GMT  
		Size: 43.3 MB (43308396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbaa2a08c8dbc65f41a2d2627d08162009eacc344bbdcfaed2857c487ff98ccc`  
		Last Modified: Tue, 22 Jan 2019 21:43:43 GMT  
		Size: 828.3 KB (828297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521e80f7a2aaf4a25d43205d28ad1a5cea97dba2af173faaafcfe30ece64c2f4`  
		Last Modified: Tue, 22 Jan 2019 21:43:43 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c28572e77f7411d86a2a3944f63dc94df10c560b9b0a6d9594655b479179d8b`  
		Last Modified: Tue, 22 Jan 2019 21:43:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da02b7ee4844434feb5d2bf8a8e842d3ba12a8f276f365994b1b851361d5ab81`  
		Last Modified: Tue, 22 Jan 2019 21:44:00 GMT  
		Size: 97.9 MB (97904926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248e4eed41ab94a06e895a53a667a33c0e44567036e5a57f6bc64d8564e862e2`  
		Last Modified: Wed, 23 Jan 2019 06:51:11 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd61582e3f2ee21550e90ac9220139f11c69f0107d16a33c044d9f21a2cc24e8`  
		Last Modified: Wed, 23 Jan 2019 06:51:10 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b32dc7a6f3efb76fe603908e939a2aad004da96914cd3fe5a556c20c172c355`  
		Last Modified: Wed, 23 Jan 2019 06:51:10 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v5

```console
$ docker pull maven@sha256:84ba9393341befbf87916791a7a860ac57c82e979d92d0ff1bfd4be2b19909f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205634990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ce7b04a95be9107edea06c443431686785884c41e80141c93d7b021629e779`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:54:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:54:33 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:54:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:54:36 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:54:36 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:54:36 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 12:54:37 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 12:56:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 16:38:32 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 16:38:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 16:38:33 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 16:38:34 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 16:38:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 16:38:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 16:38:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 16:38:45 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 16:38:46 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 16:38:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 16:38:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3de88f8a2bb3843d7eaf8138cebea564eff377c952046f18c233a3178e7646`  
		Last Modified: Wed, 23 Jan 2019 13:11:53 GMT  
		Size: 821.6 KB (821571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99324c28460ff3f109083f461618c2f5090d862ae5ac74509426e38c09911998`  
		Last Modified: Wed, 23 Jan 2019 13:11:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f43351365313f8830d3ce478c304e220395e7ba848e4b24335cc7f36882a9b`  
		Last Modified: Wed, 23 Jan 2019 13:11:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6149ec1e3996e11df9c1701da1858414132e3aa757b5c4bc1bb7eb4ed9aa106`  
		Last Modified: Wed, 23 Jan 2019 13:12:10 GMT  
		Size: 85.0 MB (84971880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144bc6e40d1e53fa323c8b95b262dd168629e10cedd302dec258f580a872c081`  
		Last Modified: Wed, 23 Jan 2019 16:40:42 GMT  
		Size: 9.1 MB (9087958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c0261b035ec52c385e412f2960a5a713d618f70932ea71fda170b84db733ee`  
		Last Modified: Wed, 23 Jan 2019 16:40:41 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321878e2c6dc167a1a26ad31d6d6b76cebcb53b634bd4057d900aa4c428b597`  
		Last Modified: Wed, 23 Jan 2019 16:40:41 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v7

```console
$ docker pull maven@sha256:6475f6f5743078ddce25f2bc422d692c5e9b7dcbfb1a1a506e03a7dd64aa344c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.3 MB (200271361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea05c3e9216a37cba069b2313542f4e025825fb0983e3336cee68533f7930148`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 29 Dec 2018 12:59:11 GMT
ADD file:01b62bfbd45f1e17ef9559bc94ada32cdd52fbf49c22cf9240e225e6291ce59f in / 
# Sat, 29 Dec 2018 12:59:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:35:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:35:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:37:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:35:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:35:45 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 15:35:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 15:35:51 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 15:35:52 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 15:35:52 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 15:35:53 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 15:37:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 09 Jan 2019 13:15:51 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 09 Jan 2019 13:15:52 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Jan 2019 13:15:52 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 09 Jan 2019 13:15:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 09 Jan 2019 13:16:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 09 Jan 2019 13:16:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Jan 2019 13:16:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Jan 2019 13:16:03 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 09 Jan 2019 13:16:03 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 09 Jan 2019 13:16:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Jan 2019 13:16:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:40b7080c29fdee0d573b842a38b8b4678dd34588fed78cb13c1be48cbeb5641a`  
		Last Modified: Sat, 29 Dec 2018 13:09:32 GMT  
		Size: 50.3 MB (50294191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e27fe2fedafcc8ab2f5ecd1d2ed1207427909474213be3c86adea22ffea9d1`  
		Last Modified: Sat, 29 Dec 2018 14:02:09 GMT  
		Size: 16.7 MB (16713166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4a14d2e841ac31f4c8c1d024e181fe46e15e29b9c73a4ad45b4033c68251b1`  
		Last Modified: Sat, 29 Dec 2018 14:02:29 GMT  
		Size: 39.8 MB (39762412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27851a1adc542c37d5a6ca1389b586a4dca3a173d557da66abafa6eb328e3169`  
		Last Modified: Sat, 29 Dec 2018 15:50:15 GMT  
		Size: 795.4 KB (795422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2e5aa23a123aeb4d7232af7534d4b6370fe984fb5806a90ece596fcd5c2986`  
		Last Modified: Sat, 29 Dec 2018 15:50:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f99872e636a9d14f4acfbdcd892163b2bffa888d1aeaed9e6791425f6a042`  
		Last Modified: Sat, 29 Dec 2018 15:50:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172fa54b1291ebdf8a0c37127e5fc1323a62713a28bff4592f7b2d97e613e6ec`  
		Last Modified: Sat, 29 Dec 2018 15:50:32 GMT  
		Size: 83.6 MB (83616719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a205ec427eb17c35f64c1bcbc7a7ad36df5347865f8a02904618d653b85a52c`  
		Last Modified: Wed, 09 Jan 2019 13:17:34 GMT  
		Size: 9.1 MB (9087962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8664672150f28174f76c604939e37258f73ff4bf6a89f8db37aff16a818be87`  
		Last Modified: Wed, 09 Jan 2019 13:17:33 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47173843d70b22d30a245a0e6f658ed0f068ac26a519bd9b021a21f19162b1a2`  
		Last Modified: Wed, 09 Jan 2019 13:17:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; 386

```console
$ docker pull maven@sha256:e709bf7baaf410c5f6aef6d4214842442cf4b2eb86455971425a30763e2b2ff8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.9 MB (235903614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea609dfd7d21f6c830856ac0f300d5f6d875ab5a1a9efab25b07697cc0d1183`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 29 Dec 2018 11:43:08 GMT
ADD file:adf73be380796d1d6e5cc54acbe9ed13483e492d18379f8f92b0ca4a3aa2d0c7 in / 
# Sat, 29 Dec 2018 11:43:08 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:47:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:47:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:51:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:58:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:58:56 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 20:58:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 20:58:57 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 20:58:58 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 20:58:58 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 20:58:58 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 21:02:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 05:18:43 GMT
ARG MAVEN_VERSION=3.6.0
# Sun, 30 Dec 2018 05:18:43 GMT
ARG USER_HOME_DIR=/root
# Sun, 30 Dec 2018 05:18:44 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sun, 30 Dec 2018 05:18:44 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sun, 30 Dec 2018 05:18:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sun, 30 Dec 2018 05:18:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sun, 30 Dec 2018 05:18:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sun, 30 Dec 2018 05:18:47 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Sun, 30 Dec 2018 05:18:47 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sun, 30 Dec 2018 05:18:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sun, 30 Dec 2018 05:18:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:328db1dfc8fd581487e81b7e2b308b614ea0ef326ebf067f940b5fcdd3cda762`  
		Last Modified: Sat, 29 Dec 2018 12:06:12 GMT  
		Size: 54.6 MB (54604272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a5086b16317513f803d1684cc7aa95daa8ee77fffa17db71c1ef7ab9f10a8f6`  
		Last Modified: Sat, 29 Dec 2018 13:24:40 GMT  
		Size: 19.8 MB (19846680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e714e73a5654b12210ec4f6d3f24d3fb9f8b1fb2f2bb27dc0d4a34e2cbb2892a`  
		Last Modified: Sat, 29 Dec 2018 13:25:07 GMT  
		Size: 44.0 MB (43952097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7012dbb9cecbc59d6edced49cefd6b15c5495753d2949ed2cb11e19659d5197`  
		Last Modified: Sat, 29 Dec 2018 21:24:17 GMT  
		Size: 831.3 KB (831263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9d5fa4b06eddc28ef5f65f16c6dab4fe47ef7c494896ab334ee96d565a465e`  
		Last Modified: Sat, 29 Dec 2018 21:24:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10e98a440c8207c605cd1b46fe46d67faf535d3c1fd623918d9125e9fbc8662`  
		Last Modified: Sat, 29 Dec 2018 21:24:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083cceac570cf5639175ad81c3d269fafc13f708fceb74ff823712594a921829`  
		Last Modified: Sat, 29 Dec 2018 21:24:32 GMT  
		Size: 107.6 MB (107579883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55bc595104d0d9010ad2d3f05d4f73417bff1df9a78bc8fa46518fa2cab6d52`  
		Last Modified: Sun, 30 Dec 2018 05:20:02 GMT  
		Size: 9.1 MB (9087930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467866c8cb8bedadde403577b778c3fa64a9fc7544cfa1d86161d78b2d5b7bf7`  
		Last Modified: Sun, 30 Dec 2018 05:20:02 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab138ad1cb035702954f4d5ff855d9b1af9c43b02d6c58fba3ecf544729d2e7b`  
		Last Modified: Sun, 30 Dec 2018 05:20:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

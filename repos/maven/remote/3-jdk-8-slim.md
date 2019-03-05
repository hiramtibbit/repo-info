## `maven:3-jdk-8-slim`

```console
$ docker pull maven@sha256:e043af013cc788d2c82174195bee6ae71be19588e68055ee658c4094be0bf14d
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

### `maven:3-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:1f9daf900514242136136c3147acd674978e25aa52316b447df8cbd2acfb7b55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103509504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0936e87627b0427417603b5ac5ff80bd5ab6adbfc7be0f28ff6f83bf5a0b3da`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:17 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:18 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:04:19 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:19 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:30:21 GMT
ARG MAVEN_VERSION=3.6.0
# Tue, 05 Mar 2019 14:30:22 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Mar 2019 14:30:22 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Tue, 05 Mar 2019 14:30:22 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Tue, 05 Mar 2019 14:30:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:30:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Mar 2019 14:30:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Mar 2019 14:30:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 05 Mar 2019 14:30:34 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 05 Mar 2019 14:30:34 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 05 Mar 2019 14:30:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 05 Mar 2019 14:30:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d40fc3cf34dee2b2a441314fdd5adc73396c783b33d34a1385953d753bb2fb`  
		Last Modified: Tue, 05 Mar 2019 04:24:41 GMT  
		Size: 454.9 KB (454887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235bdb95dc99038adcc0ea3e3d78e781356c9a1d133a19da70120af738ccaaa`  
		Last Modified: Tue, 05 Mar 2019 04:27:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9ecf5ba38f4bf4157f41b104010963118089027eef2062a1faa0b846b2c857`  
		Last Modified: Tue, 05 Mar 2019 04:27:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cf7535df66405ffc237795633b423682249444c5718b4b09a9a76a8dee0065`  
		Last Modified: Tue, 05 Mar 2019 04:27:20 GMT  
		Size: 67.5 MB (67507932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a695088ffce1881dcfceaff969e0e8cf0161cc9e653a0e3f72df94fae5686035`  
		Last Modified: Tue, 05 Mar 2019 14:31:53 GMT  
		Size: 4.0 MB (3961234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258fee27c00c564398147f7be111611616265b7aff3ec1ae13704c824c9b4354`  
		Last Modified: Tue, 05 Mar 2019 14:31:53 GMT  
		Size: 9.1 MB (9087924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb5071bda65ef9c2fe4259663cf2172042ef06b58a84e54604fa83dd706ab9f6`  
		Last Modified: Tue, 05 Mar 2019 14:31:52 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e77a66c0cecc1c4cc65c22741e8de34bf16692350765204a54a5ca4279ff609`  
		Last Modified: Tue, 05 Mar 2019 14:31:52 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:f51ac32dd61a05a5419028404a453d68c4f97fade00dfb7cf786a30f356edde5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90078365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964ed054bb252a6c6f67e999e0d34cd59233216a1d35e533445a39bf3749025b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:14:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:22:47 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:22:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:22:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:22:51 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 11:22:51 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 11:22:51 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 11:23:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 16:15:11 GMT
ARG MAVEN_VERSION=3.6.0
# Tue, 05 Mar 2019 16:15:12 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Mar 2019 16:15:12 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Tue, 05 Mar 2019 16:15:12 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Tue, 05 Mar 2019 16:15:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:15:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Mar 2019 16:15:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Mar 2019 16:15:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 05 Mar 2019 16:15:38 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 05 Mar 2019 16:15:39 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 05 Mar 2019 16:15:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 05 Mar 2019 16:15:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c5b53d864e73b66292b38bbea137ab84443437d4a8a51ea774f4af661bdfa126`  
		Last Modified: Tue, 05 Mar 2019 10:02:45 GMT  
		Size: 21.2 MB (21160548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f869b46eab286139f4fa4b83e8c6db80016c89228e72c955364ca31cabeae7`  
		Last Modified: Tue, 05 Mar 2019 11:38:20 GMT  
		Size: 447.8 KB (447761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e57c035ee45742ebdc446484629b8e05f62d7eb674625d49f489106e4dc9d1e`  
		Last Modified: Tue, 05 Mar 2019 11:41:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20859a20ce50308496c2a1f9b7b4baa6577b286a104cfbb610af793a2800f5e7`  
		Last Modified: Tue, 05 Mar 2019 11:41:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428bfb50cc3112583610e19ec3db6335e5c5cb5cc6c1535184967025ae74f486`  
		Last Modified: Tue, 05 Mar 2019 11:41:46 GMT  
		Size: 55.9 MB (55930578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6e471b462cf1e3042cd4e375afb3f57113aaa3f73299283659dac667839c36`  
		Last Modified: Tue, 05 Mar 2019 16:17:11 GMT  
		Size: 3.5 MB (3450048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f209b292fa32c9ad7900bb60bcc40c2474136bd98d8f1e702e9b7227da54909f`  
		Last Modified: Tue, 05 Mar 2019 16:17:12 GMT  
		Size: 9.1 MB (9087940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32380bef8f44dc96484644a93687035814a68198776fcab1fd7ccf382a5a18f0`  
		Last Modified: Tue, 05 Mar 2019 16:17:10 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e794d81b0d0b5f77346b049303bc6469cb3bbe897819279878a17c2c4ef436`  
		Last Modified: Tue, 05 Mar 2019 16:17:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:7e1bd7e285d837e432a6567f4ff228d846b89de7f68659e6d54c0a38a50328c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87390108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2cbf3db17713972ebc048f276ea505f1f636aadc4dc34bd0d1d8d4f1cc3cf3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:23:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:26:16 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:26:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:26:19 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:26:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 14:26:19 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 14:26:20 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 14:26:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 17:50:44 GMT
ARG MAVEN_VERSION=3.6.0
# Tue, 05 Mar 2019 17:50:44 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Mar 2019 17:50:45 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Tue, 05 Mar 2019 17:50:46 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Tue, 05 Mar 2019 17:50:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 17:51:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Mar 2019 17:51:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Mar 2019 17:51:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 05 Mar 2019 17:51:09 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 05 Mar 2019 17:51:10 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 05 Mar 2019 17:51:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 05 Mar 2019 17:51:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0521b55e58101891fe3bdcc6fd848218b3c82779e098759b9c6012d3c62c278`  
		Last Modified: Tue, 05 Mar 2019 14:41:11 GMT  
		Size: 430.6 KB (430609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c9564a7a9c1c176cdc06947f537ce24974acb1c56fe27189978b14a7798034`  
		Last Modified: Tue, 05 Mar 2019 14:41:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3891ad026bce160e4e740f9ababb510c98f74c77879772c67140b36910f3eff5`  
		Last Modified: Tue, 05 Mar 2019 14:41:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e9acd37651ae14635aab74823714f1f087752a38386e2e12e1417b76bd820a`  
		Last Modified: Tue, 05 Mar 2019 14:41:28 GMT  
		Size: 55.3 MB (55327457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fa5918694e0a6dce64d4359d3fe971acf74d6821165806f051e3e1dde9f73f`  
		Last Modified: Tue, 05 Mar 2019 17:52:14 GMT  
		Size: 3.3 MB (3260096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cfbb12e300f9845b8700f799f3b55c31bdd130fb9777b5e866675a72b57c8a`  
		Last Modified: Tue, 05 Mar 2019 17:52:15 GMT  
		Size: 9.1 MB (9087958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260e2a2bc95a4cca4eb868e4317d1aed9e8afe475cea319f90e5b73a08540c14`  
		Last Modified: Tue, 05 Mar 2019 17:52:13 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4f50ef4eff1c99cd78e6326590a2a93a295c785acf03d4621f45d52332225f`  
		Last Modified: Tue, 05 Mar 2019 17:52:14 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:a661ed6ccb944d091941a2f4d383003fea66608d049a5576f0423390795f9da3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90612404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d154560050ab8ac1ec81103b3309c5cef56b2ae581c07abf7ac6e21bed8731d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:18:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:18:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:18:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:18:39 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:18:40 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:18:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:20:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 06:48:00 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 06:48:01 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 06:48:02 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 06:48:03 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 06:48:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:48:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 06:48:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 06:48:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 06:48:47 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 06:48:48 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 06:48:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 06:48:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857c9abd17ad597c20509970fbf55c7260550d870bd68c188e4aef3de5e7e24`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 440.9 KB (440887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af475183dd776a3bc6f1848588e7bed68865d8ed0a3b9d7443228cabd1a92cf3`  
		Last Modified: Wed, 06 Feb 2019 12:41:53 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efcd9790a6dbfb5bc228474fdafa0870db0d257c606550c02ec06fee85650f2`  
		Last Modified: Wed, 06 Feb 2019 12:41:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe266144f6e27bd5f2c238c2345fa03258299af48b867b9b334328734f02f15`  
		Last Modified: Wed, 06 Feb 2019 12:42:20 GMT  
		Size: 57.3 MB (57347794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd57cd0780cd2a556f5b0d9166cfb3174223b9b271908ba4c57a459e279deb5`  
		Last Modified: Thu, 07 Feb 2019 06:52:18 GMT  
		Size: 3.4 MB (3384143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bfacd93898cb75137f51da964393de49133f0ff7ff664ddcc43378719a98f8`  
		Last Modified: Thu, 07 Feb 2019 06:52:19 GMT  
		Size: 9.1 MB (9087930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1092f9ed64c3decb5076dd895945d7bb76c41d1ec6379d8b397f38d12fb8b577`  
		Last Modified: Thu, 07 Feb 2019 06:52:15 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8335578f6647f1d2e05d00ca35381ae9a778debefba3cf4e4531852e52c052`  
		Last Modified: Thu, 07 Feb 2019 06:52:15 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; 386

```console
$ docker pull maven@sha256:520d8e7b5c04c091daa7520fbd6f65e7b1d3bf8c9648ffe1dc696cf9abde385e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103312947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:616bb64ca0e1945a7316b1967489b10750ef3c3325067c1d0fcff6c0b817ed72`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:16:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:20:22 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:20:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 13:20:25 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 13:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 13:21:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:56:02 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 07:56:02 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 07:56:02 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 07:56:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 07:56:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 07:56:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 07:56:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 07:56:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 07:56:12 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 07:56:12 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 07:56:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 07:56:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:fd883529ef37cccd489ccdd81e45760985451191b1dfe64c020b0d7a8325a679`  
		Last Modified: Wed, 06 Feb 2019 12:07:59 GMT  
		Size: 23.1 MB (23146972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708aa004e8e8a109b6c6d8294b4dcbf5c50576fb117f1e102a8631294a99214f`  
		Last Modified: Wed, 06 Feb 2019 13:38:42 GMT  
		Size: 463.5 KB (463543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8618e15556ce477fa6285b881cc9fc48a12885f10859576498803366bd157060`  
		Last Modified: Wed, 06 Feb 2019 13:42:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b2b6cbdddad219f75c5e6a41abe0ca28fdba63f254d491b72f81a7582e4151`  
		Last Modified: Wed, 06 Feb 2019 13:42:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02807f3ce2f62e6fc6bfe162ef13696a1acae722a3b6d3a56e5e7d2bf815c078`  
		Last Modified: Wed, 06 Feb 2019 13:42:34 GMT  
		Size: 66.7 MB (66730162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1590813d4eaf4729adedc8125f3d51c9e341b0baeae106c26ebc88b92fa4118c`  
		Last Modified: Thu, 07 Feb 2019 07:57:41 GMT  
		Size: 3.9 MB (3882862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b664266a1b33030c2f3b1f59d19f82ddbe9e23c38303d67351996263689e92f7`  
		Last Modified: Thu, 07 Feb 2019 07:57:41 GMT  
		Size: 9.1 MB (9087921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9909329fc383145d0d9bbe99fef73f623588749efec84ac93cae7f65336f708`  
		Last Modified: Thu, 07 Feb 2019 07:57:40 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8402a94612c9633c73665735b4d40b569bacb592be41df92ab3f03cce6a522b`  
		Last Modified: Thu, 07 Feb 2019 07:57:40 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:e15372eb63b197a94625466f5abe5a4b49e7a17cc085b668f84e40c87fef8169
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93815060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b681306756ec20f0fd985fc4dd257c2a7d5cd3b5cde94fab5578f50f52d04c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:22:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:28:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:28:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:28:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 11:28:38 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 11:28:40 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 11:28:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 11:30:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 01:58:51 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 01:58:53 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 01:58:54 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 01:58:55 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 01:59:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:59:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 01:59:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 01:59:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 01:59:33 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 01:59:34 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 01:59:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 01:59:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dc20b3ce8c37688658ff595852548d704112b0ebb0d3af8f062192264d7928`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 449.8 KB (449778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df626ed30eb0652e5b003b710a3985d4da8fab9380d73d6a527844dd558869f3`  
		Last Modified: Wed, 06 Feb 2019 11:40:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54567a4b75a7a615e048f4a48fd5d655f74096e529371baffad947f1bcb99d8`  
		Last Modified: Wed, 06 Feb 2019 11:40:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5358ac0cd926cef22bc89f7283c7db568f6a01da85156170540235fa5cfbffdc`  
		Last Modified: Wed, 06 Feb 2019 11:40:14 GMT  
		Size: 57.9 MB (57865224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63dd95f51ed8c2c9938c1c1da277b9f6b0b24fb165d976bd2e5cc941fe372de7`  
		Last Modified: Thu, 07 Feb 2019 02:02:22 GMT  
		Size: 3.7 MB (3655227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0148ae1569a1804d1c83c6275187ae0a485971530bc50cf06143a63d38bc7e`  
		Last Modified: Thu, 07 Feb 2019 02:02:22 GMT  
		Size: 9.1 MB (9087943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bf6183e76a514e63d6ef3c98dcaac974afb6670425fd71707278e62acd71b5`  
		Last Modified: Thu, 07 Feb 2019 02:02:21 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6c2f4c1b78ed269e4a64cb2977ba0b96fc0d1516ea549c78e9ce2e51ef1029`  
		Last Modified: Thu, 07 Feb 2019 02:02:21 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; s390x

```console
$ docker pull maven@sha256:e7cd4baff61348916ac3979a14ea577f26b380ba41b56166b3c8bd9f1b9a51c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92688301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c254a92ea4523e165376549b886af3b4f855b544d2a7b3ad49e60d408ef9e6b8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:12:40 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:12:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:12:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:12:42 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 15:12:42 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 15:12:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 15:13:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 16:25:05 GMT
ARG MAVEN_VERSION=3.6.0
# Tue, 05 Mar 2019 16:25:06 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Mar 2019 16:25:06 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Tue, 05 Mar 2019 16:25:06 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Tue, 05 Mar 2019 16:25:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:25:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Mar 2019 16:25:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Mar 2019 16:25:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 05 Mar 2019 16:25:23 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 05 Mar 2019 16:25:24 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 05 Mar 2019 16:25:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 05 Mar 2019 16:25:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2c9e1401ee6b0131741b02fed745b7f1d34bf29b0bc59f41e08dc969a710fc58`  
		Last Modified: Tue, 05 Mar 2019 12:45:42 GMT  
		Size: 22.3 MB (22345383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ad982d3f3e8abbcfc4926155f885f71dc9bc0f7e689758a9f0dc24355977d7`  
		Last Modified: Tue, 05 Mar 2019 15:16:05 GMT  
		Size: 465.8 KB (465761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390dae1b7c867b3f2cc1eb5744c4901e1ae59acab5c1131401bdc6133b3c42d1`  
		Last Modified: Tue, 05 Mar 2019 15:18:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:352389490458e29e40cf2e51877448d59211189e1c76d40a949d09c8cdd28ad1`  
		Last Modified: Tue, 05 Mar 2019 15:18:02 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d016062981899a812a71b098583bb2427d1380ab56498300ce93842d9e72cdb`  
		Last Modified: Tue, 05 Mar 2019 15:18:11 GMT  
		Size: 57.0 MB (57028560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9763f841a901daeed3cd80a9f4daafb8e5a06239bbb07fe848b627f17ed8b3`  
		Last Modified: Tue, 05 Mar 2019 16:26:55 GMT  
		Size: 3.8 MB (3759171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2329f29a45772a40e5a6bbc30755008005cf354de86a1c5f25d6edd6a16143e2`  
		Last Modified: Tue, 05 Mar 2019 16:26:55 GMT  
		Size: 9.1 MB (9087934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3cec3b9eeb6096c26bfebc96340b613ce9f598d2a6709001eaf87ccb254b19`  
		Last Modified: Tue, 05 Mar 2019 16:26:54 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc56a5eba1661f6a0c9c183e1978deeb25cf6d920afe44ff11955a741ca784ac`  
		Last Modified: Tue, 05 Mar 2019 16:26:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

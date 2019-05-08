## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:72e0ba3f4ef8813fd8afe3b6fafb7a4152b75bde9b4c0f0ef95b50e6e913c83d
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

### `maven:3-jdk-8` - linux; amd64

```console
$ docker pull maven@sha256:5ae723326106f9463585d54d56e46ac3642bd15b0a6de0865f639620dfd0bdb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255796032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83e4faf0cd7cec2dc61ba97a1f00928d1fd615bcb2656ea23260adc74bc8590`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:02:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:06:59 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:07:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:07:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:07:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:07:01 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:07:01 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:07:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:52:30 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 08 May 2019 13:52:30 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 May 2019 13:52:31 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 08 May 2019 13:52:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 08 May 2019 13:52:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 May 2019 13:52:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 May 2019 13:52:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 May 2019 13:52:34 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 May 2019 13:52:34 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 08 May 2019 13:52:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 May 2019 13:52:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eadaf4c0dff038c7597047e84133eb098bc3c6e6eabae1dea15d225a39d28e3`  
		Last Modified: Wed, 08 May 2019 05:26:41 GMT  
		Size: 892.7 KB (892652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1388ac89fe3b0cbf2648fe26c6f949a1f94c834480cb90a8027e131636c5b3`  
		Last Modified: Wed, 08 May 2019 05:29:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73713755b9cb5b8b5a8955c6d458d436a00fdb4ac9b101b5bf3b2529c6ba6537`  
		Last Modified: Wed, 08 May 2019 05:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5784ff1c03721cf20203b9770594c22edb973ee6a5fb9721c0dacadea4cdbbf4`  
		Last Modified: Wed, 08 May 2019 05:29:29 GMT  
		Size: 135.2 MB (135209246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da25caa88bbbd9cc67c7b35814817ddffc3ef2602a5cb083853c12667b7d2b2`  
		Last Modified: Wed, 08 May 2019 13:54:05 GMT  
		Size: 9.2 MB (9161870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e7ce4230fa3af70c1b4940f73ca75796bdd1141683eabb9cacdb2649cdff63`  
		Last Modified: Wed, 08 May 2019 13:54:05 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d68234e2f0e32bcd9385fe5d6320a98870d8f7918ead7308c5e8dedae5e6d33`  
		Last Modified: Wed, 08 May 2019 13:54:08 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8` - linux; arm variant v5

```console
$ docker pull maven@sha256:0871ba0a3711067ef62aa194ef13287f0e945738f504c27a0ee5be78db9534c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237822949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764c7649970f767a3904bcca392f207ff0f702f0613534b4e222d1bd0ea4dbff`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 May 2019 08:53:17 GMT
ADD file:5dfe3b771bd67a2856913544993e219cb8c7933c33523cc56fe13a3a0e76ce9b in / 
# Wed, 08 May 2019 08:53:18 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:01:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:01:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:22:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:33:12 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:33:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:33:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:33:14 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 11:33:15 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 11:33:15 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 11:34:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 16:30:37 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 08 May 2019 16:30:37 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 May 2019 16:30:38 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 08 May 2019 16:30:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 08 May 2019 16:30:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 May 2019 16:30:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 May 2019 16:30:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 May 2019 16:30:46 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 May 2019 16:30:47 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 08 May 2019 16:30:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 May 2019 16:30:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ca892ced475bf1c51c1f13b76a64549cfc5d1a0b55d33d8b9418efbb47887bf8`  
		Last Modified: Wed, 08 May 2019 08:59:09 GMT  
		Size: 44.0 MB (44045778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7b30b379469b50f6ada866964876f5c4ba164c22896bf3a08aabab61869e51`  
		Last Modified: Wed, 08 May 2019 10:09:26 GMT  
		Size: 9.9 MB (9854225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e257762b4747840fc09dce269e7f68146ac9864b8bf218e57475b4af367a74`  
		Last Modified: Wed, 08 May 2019 10:09:24 GMT  
		Size: 4.2 MB (4159009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d4213268efa4d0a6f48cbe22d41880c44ded3c92c84ae62354c147e273c61d`  
		Last Modified: Wed, 08 May 2019 10:09:52 GMT  
		Size: 48.3 MB (48281807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2410be54669de13a975df6a88bf9d9c1963f8070e2a754ad9fbf00a576971420`  
		Last Modified: Wed, 08 May 2019 11:48:25 GMT  
		Size: 884.9 KB (884889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2420250d49cc4e8916e2536658db2df7a8032692159605b8ca8f8fffb67541`  
		Last Modified: Wed, 08 May 2019 11:51:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f026efd21860ae78623ac8235802d308f323fc38d2b8536682d44267df4dee`  
		Last Modified: Wed, 08 May 2019 11:51:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8b61d1f1edd58191d9f79ccfefa6f6cb43b12695a4fbb5180de313d98010cb`  
		Last Modified: Wed, 08 May 2019 11:52:09 GMT  
		Size: 121.4 MB (121433732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f8faa464f8f0fe5deb42300d2d8e23010b508c8d5f068b8da436a55cf841d7`  
		Last Modified: Wed, 08 May 2019 16:32:35 GMT  
		Size: 9.2 MB (9161912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e372850f941875772eb5a3c7fa4ac3bcb69ded3593d809b88a4a9b2928ded5ee`  
		Last Modified: Wed, 08 May 2019 16:32:33 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75efc9d5c558b30f9b4b7502bccd87b2adf961bb63f977e69c087b5a698e6de8`  
		Last Modified: Wed, 08 May 2019 16:32:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8` - linux; arm variant v7

```console
$ docker pull maven@sha256:296f48011808f9ab0d186f37da7358d60b9584070b51e2e25904ae558158044a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232799629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a94e0342cea6b2e4695801932441fd1e605538f9e4b4e5c55a763c472d6c8df1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:06:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:12:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:12:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:12:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:12:42 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 14:12:43 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 14:12:43 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 14:13:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 17:14:09 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 08 May 2019 17:14:10 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 May 2019 17:14:10 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 08 May 2019 17:14:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 08 May 2019 17:14:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 May 2019 17:14:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 May 2019 17:14:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 May 2019 17:14:18 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 May 2019 17:14:19 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 08 May 2019 17:14:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 May 2019 17:14:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e71e70e8f61885caa2a04cc9ce0d37e765aee972e4eb91039016d8757e9ef1b`  
		Last Modified: Wed, 08 May 2019 14:29:04 GMT  
		Size: 868.0 KB (868033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9954864699b20b0c81eae542e140aeffef4b5b0558e5f8bcf0b60e4165b4ef3`  
		Last Modified: Wed, 08 May 2019 14:32:25 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16ae1064c391d1f47920fbdf148f3929f1a1d9ad561dacab954eb05d8fcb87c`  
		Last Modified: Wed, 08 May 2019 14:32:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c98ff2719264b6b5a9981c59ca21a00709698341bf40bb62847701e4cca9f8d`  
		Last Modified: Wed, 08 May 2019 14:33:00 GMT  
		Size: 120.9 MB (120893881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23469712469e8e6057acb9d245bc1006b2f7ec5a457804baa6d132b5952b12c`  
		Last Modified: Wed, 08 May 2019 17:16:00 GMT  
		Size: 9.2 MB (9161905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3fd25eb524ef6546393fe77ce812989affa79c9cdffcffc0facd8d5eed80d6`  
		Last Modified: Wed, 08 May 2019 17:15:58 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c3a8c840bf3a34950eb6da5d8b238a25164d093d60c0c533b5f9036957a193`  
		Last Modified: Wed, 08 May 2019 17:15:58 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:526045c8f626a5bdac1d931e70fc8b1a53ccb59fb63a48bdb55ad0bf546f14da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240668684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6156f650a87177d96198ab9287f99a020744a66941cc574a43fc9bf7420dfa`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:35:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:35:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:35:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 03:52:50 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 03:52:51 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 03:58:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 17 Apr 2019 08:47:14 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 08:47:14 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 08:47:15 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 08:47:16 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 08:47:22 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 08:47:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 08:47:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 08:47:24 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 08:47:25 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 08:47:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 08:47:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918968c658e5fccf315dfefd0fa9aa78bcd41675036298167da2bec4b1406dd`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a7832bf03e4b7c54b24f367d9c8050d34ab96a51a57b117b1af07b4887c169`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82425005e04069a0ce309c9fc34f7c774e8c48774ed976b38da4c2f4a98ba027`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a213aa49f4e98511aa253590cf547c6f407c48d49a2d2712144feb9ce9e3d8`  
		Last Modified: Thu, 28 Mar 2019 04:11:40 GMT  
		Size: 125.7 MB (125663506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076febbe9ee766f0829f645fcfaa22c3fce5a6509c53eb6ac954c4114d386d58`  
		Last Modified: Wed, 17 Apr 2019 08:49:39 GMT  
		Size: 9.2 MB (9161864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1319647f3b704a3297cba968071b5be9a98faa051d65b739e30763a38cdde81`  
		Last Modified: Wed, 17 Apr 2019 08:49:37 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4dee55f593e05c5c0c07bde3dfa74181a3998b06d96d9f03299563983ef39`  
		Last Modified: Wed, 17 Apr 2019 08:49:37 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8` - linux; 386

```console
$ docker pull maven@sha256:3203af1ab2122462f31e54df38ac54040001301bdeb18bfcfbefcda97feef388
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.2 MB (258173298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42fdce1b5cd056c2a584a4ecd3dcd498abb213bfd24a24b9e40293e10941a9de`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:50:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:56:19 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:56:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:56:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:56:21 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 00:57:40 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 00:57:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 00:58:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 17 Apr 2019 10:47:48 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 10:47:48 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 10:47:49 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 10:47:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 10:47:50 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 10:47:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 10:47:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 10:47:51 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 10:47:51 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 10:47:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 10:47:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce73586e8439b4de724327a1eee39ded998089032ddd044195b2f93ab369b89`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 900.0 KB (899966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aff93458b2651eb1b3e8661218fba1cea6bf5b0dd1c3b1409a68f5a3a3ff3a`  
		Last Modified: Thu, 28 Mar 2019 01:16:19 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509018cc3ba60b960d4b8de6cf3966143e4f4708c0df4815b7b0f99f1ad4ec0b`  
		Last Modified: Thu, 28 Mar 2019 01:16:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbc46dff6475c95109a36c7b6addd6b50203c8a67ef0b5ee99da5218249659`  
		Last Modified: Thu, 28 Mar 2019 01:16:53 GMT  
		Size: 135.1 MB (135096567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e1e0ec9e771e63bbb41d1073d4653508a7c0dd5104b129918cf6a8ee68f964`  
		Last Modified: Wed, 17 Apr 2019 10:51:13 GMT  
		Size: 9.2 MB (9161867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f674b134b35cb0df36c6a6bc8428c047d0290982ad7364e60152d90687ea95`  
		Last Modified: Wed, 17 Apr 2019 10:51:12 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f52484ad070ef884a6134632b3fcad7c15298e8e8d13c481fb26cd9210e62`  
		Last Modified: Wed, 17 Apr 2019 10:51:12 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8` - linux; ppc64le

```console
$ docker pull maven@sha256:45b3d1a83bb69c88642b1662e50c9938d808ae073a93e7f0f867bcb46a0ac4b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.2 MB (245154273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7438a56a7676b9f71dfb7b2570a6b841546636039b769a07c4b2c29e94eb4065`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 17 Apr 2019 08:32:05 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 08:32:09 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 08:32:12 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 08:32:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 08:32:21 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 08:32:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 08:32:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 08:32:27 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 08:32:28 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 08:32:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 08:32:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd08ac1a1fe126b9dc944ad8ea3b3f7e8825b8c38c27d1e5bdbc2f42c308530`  
		Last Modified: Wed, 17 Apr 2019 08:36:58 GMT  
		Size: 9.2 MB (9161898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd47ce8da76d9d9ea4636a263aca49d13b71f057252f7cc8156dc36a5d135998`  
		Last Modified: Wed, 17 Apr 2019 08:36:56 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed655a33dcf528537703b6a071cadbaa882ce4fb8779c85771cec027e6d25f7`  
		Last Modified: Wed, 17 Apr 2019 08:36:56 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8` - linux; s390x

```console
$ docker pull maven@sha256:709c829e656b6c5dbbfc6fdefde28e24fff4344c2f3b7f734bcaf38be1c74dd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244555227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02758ddbd1db227f124d5d28c41de7719620b63fa38d3d3dacd16b1f0ec28e7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:21:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:26:54 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:26:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:26:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:26:57 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 11:45:17 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 11:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 11:46:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 17 Apr 2019 11:55:17 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 11:55:18 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 11:55:18 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 11:55:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 11:55:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 11:55:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 11:55:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 11:55:27 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 11:55:28 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 11:55:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 11:55:29 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f50fa64721b4d7472d239522c3d09135e05c18192031e6ad31c69195394f7`  
		Last Modified: Wed, 27 Mar 2019 15:29:52 GMT  
		Size: 903.5 KB (903472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589a2dd36c2006cff2d5d4c8979388493bf85f6da62e5cc9152a0de2875ff9c`  
		Last Modified: Thu, 28 Mar 2019 11:51:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fab49f2691b215b7f875a5e0620502e8b99bd02d3a9928d1f806ca33868392`  
		Last Modified: Thu, 28 Mar 2019 11:51:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c06e3673ab9390a8967b9e59e05bc31710c3e4689fb73cfdbc612d2ab09bc59`  
		Last Modified: Thu, 28 Mar 2019 11:51:54 GMT  
		Size: 124.1 MB (124111892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a6b79710fd37f0d4e9b979ebcd5c21ca3f6f9c13f88f34a3a354810919df53`  
		Last Modified: Wed, 17 Apr 2019 11:58:01 GMT  
		Size: 9.2 MB (9161879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af79c6475d7feaab9cff27d93291e06fe428e6b7c3748b2292b439b25cc1884`  
		Last Modified: Wed, 17 Apr 2019 11:57:59 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ec4d9f9c9e837ff83d2830ed9c751dfb1f55289cb013f3105d63cabb29ae8`  
		Last Modified: Wed, 17 Apr 2019 11:57:59 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

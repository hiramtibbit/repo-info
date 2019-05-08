## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:02e6901fb7f1fdd45c5ecde06832d7461fc03e1a1cfc37e86f1de75506ec3fc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `maven:3-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:25864274d765e01d34ad3982c61d85db08c3916d85b1c02f7d19d2282569dcd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.3 MB (126329212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e5e579a360b4e8cf4724d0051e3e77445933e05a8de0a37fe098fbb3c2b866`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 May 2019 00:30:43 GMT
ADD file:2a97e6ac5eb5fead96f0d2bf3dc1f8732ff2a912450eb7d01a5f81731f66c2b6 in / 
# Wed, 08 May 2019 00:30:43 GMT
CMD ["bash"]
# Wed, 08 May 2019 05:16:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:16:18 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:16:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:16:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:16:20 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:16:20 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 05:16:20 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 05:18:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:49:40 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 08 May 2019 13:49:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 May 2019 13:49:41 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 08 May 2019 13:49:41 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 08 May 2019 13:51:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:51:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 May 2019 13:51:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 May 2019 13:51:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 May 2019 13:51:47 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 May 2019 13:51:48 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 08 May 2019 13:51:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 May 2019 13:51:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:80e253c906dee8d7b26d7dafa4166149c57cb763d43ba6d483710370c32da5cd`  
		Last Modified: Wed, 08 May 2019 00:36:18 GMT  
		Size: 30.2 MB (30154060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359b1e5bffc36ffeb13a6993169cc333fa6661a6c4eed575d232ce4946cde837`  
		Last Modified: Wed, 08 May 2019 05:31:10 GMT  
		Size: 463.8 KB (463820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f816a1ef6133e8f97fa4b0edb9b7e83432b998f2d5018b90bb97231273f6821`  
		Last Modified: Wed, 08 May 2019 05:31:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e0fb57abef91b68244295d0ba40eff5bd83f23133d267124b13df7c99f3fd0`  
		Last Modified: Wed, 08 May 2019 05:31:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057954033f3f919d53b03cab6fc7b5d03e5e9e769efd56da714cbcbea79c22f5`  
		Last Modified: Wed, 08 May 2019 05:31:21 GMT  
		Size: 85.3 MB (85289084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204fd08863f86b10c2017e8ea056948737e851b26e5fa52a55b6179814587e84`  
		Last Modified: Wed, 08 May 2019 13:53:45 GMT  
		Size: 1.3 MB (1258779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6d20005855d7d2ef1fb926d7c3e4413306505211c70d1a30eca2202523c855`  
		Last Modified: Wed, 08 May 2019 13:53:45 GMT  
		Size: 9.2 MB (9161874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e73ece45e02e21f3fca38e3f3810b265e4391dc1bab4e828e61f01951b369e6`  
		Last Modified: Wed, 08 May 2019 13:53:44 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814f5fcae672996cdb660b364727a11f2bff959199a0cb562d6ef482d770f314`  
		Last Modified: Wed, 08 May 2019 13:53:44 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:82a477485f76d7ba9adba6470308dce048332b6a60e9a9df1300179bd4b5898b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111542561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ea01da8071d9a4bcc8e5b3d6dd16a8b0c5b273d20fb8256eb879ce1f7c1e7d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 May 2019 08:50:21 GMT
ADD file:324956f1f259bd99cf6108fbdb8fc733ce537d0b89ba31739395b1328bfb819f in / 
# Wed, 08 May 2019 08:50:22 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:41:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:41:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:41:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 11:41:26 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 11:41:26 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 11:43:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 16:28:24 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 08 May 2019 16:28:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 May 2019 16:28:25 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 08 May 2019 16:28:25 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 08 May 2019 16:29:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:29:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 May 2019 16:29:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 May 2019 16:29:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 May 2019 16:29:35 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 May 2019 16:29:35 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 08 May 2019 16:29:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 May 2019 16:29:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1c07eeafb49b1794eef3297c027b386341a5b14d957a4e321aaa6d4ad6f42ea0`  
		Last Modified: Wed, 08 May 2019 08:57:05 GMT  
		Size: 28.5 MB (28459029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8228762bdec103beaeb65f3455093cfc85e41b2d89a2e5ff52a6ac14a9d2aa11`  
		Last Modified: Wed, 08 May 2019 11:54:15 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a665f82611f1ea20211f63de2856d67df20f44f10f43f02976a13bc2df2b3cc2`  
		Last Modified: Wed, 08 May 2019 11:54:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d7f236471d69f54dd2ed55d4071f993075eed9b525bb939b78503237aad64e`  
		Last Modified: Wed, 08 May 2019 11:54:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a252643ef5298af0fb5642cb9f0506a9efe55243cc50f6d3e65228f36b8330ad`  
		Last Modified: Wed, 08 May 2019 11:54:31 GMT  
		Size: 72.3 MB (72266320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d284c92f13ce5db1153b56874d4e4272929ceae98e1513bed6127072383dfa`  
		Last Modified: Wed, 08 May 2019 16:32:02 GMT  
		Size: 1.2 MB (1197185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356ff9d35f1d2cf0c3e973816aa5dcf3a05fd666ec32ee1ed23924c75bcfd44a`  
		Last Modified: Wed, 08 May 2019 16:32:03 GMT  
		Size: 9.2 MB (9161908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bd2cd1fc49ba78ac244f7bbd36de7beb9a4c62ea5e716394c23fddcb4758dc`  
		Last Modified: Wed, 08 May 2019 16:32:02 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197818a141633f7bf65839ef3dfdaecb0486ca6c9537caefd0f19a50a59ea548`  
		Last Modified: Wed, 08 May 2019 16:32:02 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:ed71e62201da956f275868c931e9fc1e31d6a1a2622e97f63aadc9f0c5016831
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107651327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27dd799191c72f0588428f8039375570772a748d88baebe4911cce7ae5855d04`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 May 2019 12:00:01 GMT
ADD file:bb152e954677aa990a56cf43a95243715ae81fc63067d4c1dd692e140bc80d36 in / 
# Wed, 08 May 2019 12:00:04 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:21:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:21:05 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:21:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:21:08 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:21:08 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 14:21:09 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 14:21:09 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 14:22:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 17:11:51 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 08 May 2019 17:11:52 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 May 2019 17:11:52 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 08 May 2019 17:11:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 08 May 2019 17:12:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 17:13:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 May 2019 17:13:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 May 2019 17:13:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 May 2019 17:13:04 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 May 2019 17:13:05 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 08 May 2019 17:13:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 May 2019 17:13:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e087398f59c8258df1419a1dab97ac7f54b57bb151a24b88dc99be00bc7546bf`  
		Last Modified: Wed, 08 May 2019 12:07:40 GMT  
		Size: 26.3 MB (26308224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efe4a7ebf76e8a3f2d4742cd8502a63033c71a56cfaea279451f52304eebe85`  
		Last Modified: Wed, 08 May 2019 14:35:15 GMT  
		Size: 432.4 KB (432396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699be4fc2145cba7ae971d162a5631dcef0a166e9ab31f18868f81e6bcfc32e3`  
		Last Modified: Wed, 08 May 2019 14:35:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62e9aa1e5a626a6a010f06a4167cadb37dcccf2a7af44145bf3677116542535`  
		Last Modified: Wed, 08 May 2019 14:35:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fada09c4ca0ddee6a9d75f2b48ceac1dc7062ad65702284dfc2c81be0ce83892`  
		Last Modified: Wed, 08 May 2019 14:35:28 GMT  
		Size: 70.6 MB (70610637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5efb35862b9bda8dff91ae2212e0ebb6643a4622b94e219807c9f12171728c81`  
		Last Modified: Wed, 08 May 2019 17:15:27 GMT  
		Size: 1.1 MB (1136562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2e5bebaf2c7f390c5f98cb5b173fc95053be36e01e6a2562c67fe1487959f4`  
		Last Modified: Wed, 08 May 2019 17:15:28 GMT  
		Size: 9.2 MB (9161908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca9d825d6ae643b95ded0d726fb98ead6494c7f0c575a705a2e8d3ec33ded24`  
		Last Modified: Wed, 08 May 2019 17:15:27 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05ae15eeb32b30e7c2f523b2bc7d4011c7b3dd5d8803b80f166858af5c08a64`  
		Last Modified: Wed, 08 May 2019 17:15:26 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; 386

```console
$ docker pull maven@sha256:bd1b3e8196edd34979a279ea59db1487c019675a294b0caccf2039398cc5b660
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138493266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06418e8b0a275db950c7bfbee809f3b043a1c98481ce33d858a4ee95abb40e3d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Mar 2019 10:40:26 GMT
ADD file:e89fbfe1dacb99a1410da8591a637f15be7ea427f1b62531b1b65d120a51065f in / 
# Wed, 27 Mar 2019 10:40:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:08:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:08:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 18:08:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 18:08:36 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 18:08:36 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 01:05:05 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 01:05:05 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 01:08:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 17 Apr 2019 10:44:23 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 10:44:23 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 10:44:23 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 10:44:23 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 10:47:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 17 Apr 2019 10:47:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 10:47:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 10:47:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 10:47:18 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 10:47:18 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 10:47:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 10:47:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6f2bc3c048dc6c822ca9857e6126bb9093bbe3b765c2ead20413c77e88de8d5f`  
		Last Modified: Wed, 27 Mar 2019 10:47:04 GMT  
		Size: 30.3 MB (30299096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92d2f4ae52e29c69dd9da73fbd1768c5243dbab97a922ba6bdacf44f1406329`  
		Last Modified: Thu, 28 Mar 2019 01:19:32 GMT  
		Size: 466.4 KB (466365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c445d893ead75ca6130534fe7530bb3147b9bb56808f3c732d2bb9884683948`  
		Last Modified: Thu, 28 Mar 2019 01:19:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce4f857e3494421920f34c5ef8c69354b568419fff5025026c0327e49d39880`  
		Last Modified: Thu, 28 Mar 2019 01:19:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee6b241f72c61f100f53242e084be959a90c7cf7a72b92072261e74e5c88390`  
		Last Modified: Thu, 28 Mar 2019 01:19:51 GMT  
		Size: 97.2 MB (97242697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e633bc478a8cf0f50839679fa8ca8bbf6ae5f6cfb73fcb0768654ab8b65dfcc`  
		Last Modified: Wed, 17 Apr 2019 10:50:45 GMT  
		Size: 1.3 MB (1321638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce15001c08c757999f8fecde6b4679026811deddbb281f4058eb19e1c9309c3`  
		Last Modified: Wed, 17 Apr 2019 10:50:45 GMT  
		Size: 9.2 MB (9161869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e91c4fff3b27f484fa9bbcc4d7f9688cb6d3a1a7743302a977bd8871f20906e`  
		Last Modified: Wed, 17 Apr 2019 10:50:45 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95220d2a485d73e4d8b393ff294b1880d889a30e30190cca18887090dbcc029c`  
		Last Modified: Wed, 17 Apr 2019 10:50:45 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:0d085d2eadcb2556ad3573f3393080929c471f09520db27a43a1e5bfa3224cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `maven:3-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:ea0a3b3a32eef47a6626f7aef26c527fdfe31007b4201667970b5a578adb01f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126199461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2834729dbbc1c66710dc5b1969b5c73ccea1ef3f1ade6c3dfb37b0c88823c6da`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 22 Jan 2019 19:24:52 GMT
ADD file:e1259aaf5127eb984e8800180bcdf23aae11a476ace06567c5e0571cba94552d in / 
# Tue, 22 Jan 2019 19:24:52 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:26:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:26:47 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:26:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:26:49 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:26:49 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:26:50 GMT
ENV JAVA_VERSION=7u181
# Tue, 22 Jan 2019 21:26:50 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Tue, 22 Jan 2019 21:29:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 06:47:04 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 06:47:04 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 06:47:04 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 06:47:04 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 06:49:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 06:49:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 06:49:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 06:49:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 06:49:13 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 06:49:13 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 06:49:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 06:49:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a82c8be864555402cbecf293fa92a8b392e48065b42c509fc1bfbb79a2e0d951`  
		Last Modified: Tue, 22 Jan 2019 19:34:49 GMT  
		Size: 30.2 MB (30152186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2a842500aa98eb09fa7bdcbcf935e84151aadb2696605f1a0675c73cc92d0d`  
		Last Modified: Tue, 22 Jan 2019 21:44:11 GMT  
		Size: 463.8 KB (463803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c661eb0136918cabd559d95e10ea28f432c641a57b3df6cabf771a7cccbbfb73`  
		Last Modified: Tue, 22 Jan 2019 21:44:11 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1e3aee7f84190f45eafedd7808f317ae5a3f504087822db6aa44a29cee6794`  
		Last Modified: Tue, 22 Jan 2019 21:44:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26febb5c4a6af0ff45e25389d28fac54bb0bf93b5a2e0f1d6faaee2e3a4e747f`  
		Last Modified: Tue, 22 Jan 2019 21:44:27 GMT  
		Size: 85.2 MB (85236305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332c37d2ede797e8de1399f7a7817536b19eeb8616df26a1ddc7ec09f4cc79fb`  
		Last Modified: Wed, 23 Jan 2019 06:50:59 GMT  
		Size: 1.3 MB (1257756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a11207ad3e888b838d76b37ecf6e020d6144d2ce08b2338675b705ca68a6a2`  
		Last Modified: Wed, 23 Jan 2019 06:51:00 GMT  
		Size: 9.1 MB (9087923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e87a150b8729cf75b38d8bdff2ba2e243d2dc5c7442f58f8f5d8c2093e5845`  
		Last Modified: Wed, 23 Jan 2019 06:50:59 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4056dfe5fcdb2faa7a408ed73c06bb76b4d63ac02941b33854a3f9dcbbfca6`  
		Last Modified: Wed, 23 Jan 2019 06:50:59 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:3a00a7619b02fd910ac282fb386f066cb25c08c6f45fa48e094d9f1adc9e6618
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111412797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5017d6fd4f6c6d7a7da9795791ee5e084ce988bd1fda07fdf0878c8c4c34fb0f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:57:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:57:50 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:57:55 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:57:56 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 12:57:57 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 12:59:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 16:37:02 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 16:37:03 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 16:37:03 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 16:37:04 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 16:38:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:38:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 16:38:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 16:38:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 16:38:21 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 16:38:21 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 16:38:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 16:38:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3763d98ea03ee233f604940ead709a70e0bc8a3dabe82c963d4cf3736f42e7`  
		Last Modified: Wed, 23 Jan 2019 13:12:26 GMT  
		Size: 456.5 KB (456522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83436a113941dd48780aff3dd0570f3a52e62cabd10f7dfcc7abb6f531fd4504`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9b39f7f31bf1d27cf03a6c8c8064f2aa83d493e3e99f894051099f04a62060`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137b656dde53360807ed41417977bfea38543dc529c7fc65910bae090d9caedd`  
		Last Modified: Wed, 23 Jan 2019 13:12:39 GMT  
		Size: 72.2 MB (72211580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c3c0434c4620bb8bdf3ddbdb7a1c718bfb275ffa769819aa334131fac0bdde`  
		Last Modified: Wed, 23 Jan 2019 16:40:32 GMT  
		Size: 1.2 MB (1195950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207ac1b27127b561c6341519753214474edc8d1fa40e6a1cd184228375eebb5b`  
		Last Modified: Wed, 23 Jan 2019 16:40:33 GMT  
		Size: 9.1 MB (9087964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ff963b26a959367739f0361a79e2b93266586454bd2f0cc2b463304cecb88a`  
		Last Modified: Wed, 23 Jan 2019 16:40:32 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d467b4c1d728e28889db1bda6e4280b94aae3665685e69572f55ff05f20f7d1c`  
		Last Modified: Wed, 23 Jan 2019 16:40:32 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:b789d91285d6fb887d6f88884552950f021c60dfefd9c9e4f958049360f5ae4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.5 MB (107510555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e37c4eeacf94fa200463aee3c854420b39f5fe1b24f48b59b0992c1d8d5a392`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:55 GMT
ADD file:19631047950a3f9967d7d8cbea3b84a0cddf79ddd9f60830bfc47d72d64cc7f9 in / 
# Wed, 23 Jan 2019 12:59:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:56:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:56:17 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:56:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:56:20 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:56:20 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 14:56:22 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 14:56:22 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 14:58:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 19:07:06 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 19:07:06 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 19:07:07 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 19:07:08 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 19:08:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:08:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 19:08:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 19:08:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 19:08:16 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 19:08:17 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 19:08:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 19:08:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:885c59d73b75e3d8332a6700e65477f75827110d7f375fa1fc28b4d7a4d59d8c`  
		Last Modified: Wed, 23 Jan 2019 13:09:36 GMT  
		Size: 26.3 MB (26304841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9320cb2a494bcd30a4da6384309ddc8849a542a19d38849ceb94ccdcc493f392`  
		Last Modified: Wed, 23 Jan 2019 15:08:46 GMT  
		Size: 432.4 KB (432391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bce4a964da349309f930489c9c4d010256c71763b089025fb92983d34b68cc0`  
		Last Modified: Wed, 23 Jan 2019 15:08:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ea0c13ba346f87a98ab39b9e890e58640a84bf81ff659777950ba92676f3b`  
		Last Modified: Wed, 23 Jan 2019 15:08:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466e6d4caac2ab180dea29d2f805082c480d47fc6602e67fdceb70a8566bb296`  
		Last Modified: Wed, 23 Jan 2019 15:08:57 GMT  
		Size: 70.5 MB (70548628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc50f101c479dfd9da0e442853c41d5e27528e341a64dcad98b750e22874f04`  
		Last Modified: Wed, 23 Jan 2019 19:10:43 GMT  
		Size: 1.1 MB (1135246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de26848e8d0349635e5d433e48576fb7289e0b45e675dd63cde93507458b070b`  
		Last Modified: Wed, 23 Jan 2019 19:10:44 GMT  
		Size: 9.1 MB (9087957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a14d63084c7d30a91c5ff5ef9c9b5d1a5ecb68c17e129ecefdfc98650801d3`  
		Last Modified: Wed, 23 Jan 2019 19:10:42 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337bb7408fe2bf8c40b06fd4ffc6e1e900c65b4577cb79769595328180e237bf`  
		Last Modified: Wed, 23 Jan 2019 19:10:42 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7-slim` - linux; 386

```console
$ docker pull maven@sha256:00b59c7c80af89659bbdd7789f0eaacc2fdcd587a94b4092dd7d85f3e02b9b2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138349064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349640c4c00f75eb4d955e7c6f29ca6999494e7cb920a1ef623cc3c69031fb3b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 18:09:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:09:41 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 18:09:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 18:09:42 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 18:09:43 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 18:09:43 GMT
ENV JAVA_VERSION=7u181
# Wed, 23 Jan 2019 18:09:43 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 23 Jan 2019 18:13:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 24 Jan 2019 01:49:42 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 24 Jan 2019 01:49:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 24 Jan 2019 01:49:43 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 24 Jan 2019 01:49:43 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 24 Jan 2019 01:52:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 01:52:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 24 Jan 2019 01:52:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 24 Jan 2019 01:52:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 24 Jan 2019 01:52:37 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 24 Jan 2019 01:52:37 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 24 Jan 2019 01:52:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 24 Jan 2019 01:52:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f9698131fca3a4da17ac6ac85a85d0adc9b550cf75ab00b431bcfc798c19a5`  
		Last Modified: Wed, 23 Jan 2019 18:29:18 GMT  
		Size: 466.4 KB (466367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a442aec55b4c34a011632f9300d20e199461bafcffa6edff0cf1fa2f720b91`  
		Last Modified: Wed, 23 Jan 2019 18:29:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4040f1caca0fafd01890d8bb92d18f2dd284a6d207e5afe30082dbc65c6ac9`  
		Last Modified: Wed, 23 Jan 2019 18:29:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ff58dd27b4ee1a1ee59b165eaa621cad03f9633b1cee6a8e6480c82be62d83`  
		Last Modified: Wed, 23 Jan 2019 18:29:32 GMT  
		Size: 97.2 MB (97179374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84ba7ea96e6090bc7133618d5c9b21b509ba03c6713e04d7d86fec75cfe7ed5`  
		Last Modified: Thu, 24 Jan 2019 01:54:18 GMT  
		Size: 1.3 MB (1320290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59e92044d977b9d27464eafbc3b19e6c97f191f61579406cce36ab6f8f6cecc`  
		Last Modified: Thu, 24 Jan 2019 01:54:19 GMT  
		Size: 9.1 MB (9087932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60f848ebc49017302897ed07a9a198740f901b28dc7c1b6a8026009c1a13105`  
		Last Modified: Thu, 24 Jan 2019 01:54:18 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4245b1d9bb5b7b6f24b9257d0a300125287e910c1cc142459f4add9d321c675`  
		Last Modified: Thu, 24 Jan 2019 01:54:18 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

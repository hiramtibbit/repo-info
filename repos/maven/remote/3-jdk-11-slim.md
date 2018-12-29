## `maven:3-jdk-11-slim`

```console
$ docker pull maven@sha256:9c503c8f0798b41c4715a4e33bfca775e9802269482f304b8af2cbc34d37d34a
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

### `maven:3-jdk-11-slim` - linux; amd64

```console
$ docker pull maven@sha256:be783a59bdb684b7bce2da11b6b5ded102a911e4b6ba48a3e6ea711e6d068ff9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307566906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09934cdf1dc63e9421834e3d0bff6435fd9745b0e014fbb2f2768c9260941c85`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:54:21 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 02:54:21 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:54:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 02:54:24 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 02:55:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 02:55:12 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 09:11:27 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 29 Dec 2018 09:11:27 GMT
ARG USER_HOME_DIR=/root
# Sat, 29 Dec 2018 09:11:28 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 29 Dec 2018 09:11:28 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 29 Dec 2018 09:11:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:11:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Sat, 29 Dec 2018 09:11:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 29 Dec 2018 09:11:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 29 Dec 2018 09:11:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 29 Dec 2018 09:11:38 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 29 Dec 2018 09:11:38 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 29 Dec 2018 09:11:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 29 Dec 2018 09:11:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762c9dfbe1b522fbb875c7c59c8952d87108fc60057e726c938bd76ffd15e861`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 454.8 KB (454826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3e7cdb7598b8fa0a59f7e3a30e4b0004d9e66fe8d3e2f43a5eecfa646b842`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0b10575b21db56a473d5c1a3633bd1f411b74536bb6aec22f0ea04889b1c61`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e429842a7076cd1d06b9b635993971d64b7a9b08f5cfc1f1ef5fba4ff2653f`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87db85bb6be6051a47734f67014e7c7ed425a55afbec761010d91bf70bb2250`  
		Last Modified: Sat, 29 Dec 2018 03:22:53 GMT  
		Size: 271.6 MB (271568870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9eded64d837dd94fd7b2d9442d7f5d9d7cba3941efb6e5b81c0c682bc86561`  
		Last Modified: Sat, 29 Dec 2018 09:15:17 GMT  
		Size: 4.0 MB (3960419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bb9d9e170a9fa17a4a792d9cbddb0a31f1febf70eeb4ff2e8b7e8909ef07ab`  
		Last Modified: Sat, 29 Dec 2018 09:15:16 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8711d3ed2fc493c3c5e812b191a586f50fe3342580e288b8c9b87cce6de864d3`  
		Last Modified: Sat, 29 Dec 2018 09:15:17 GMT  
		Size: 9.1 MB (9087932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7b3bd2993dfa3b29625ff798f4cc4ce9cd459ab89294c3365777e8292175230`  
		Last Modified: Sat, 29 Dec 2018 09:15:16 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54bec790f1b7a771de47cb87701fee593e1a40347acd99eb13941df309682ce`  
		Last Modified: Sat, 29 Dec 2018 09:15:16 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:6b67e1297d11fae347203dd129226eff5d519067fbccec0ad4f2bd52a222d5be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243211742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5f292bad33196089c5f9f31923b6562c586e9aed651b641e32d530fc8acdc58`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:26:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:26:06 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 10:26:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 10:26:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 10:26:10 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 10:26:11 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 10:26:11 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 10:26:11 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 10:28:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:42 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 14:18:09 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 29 Dec 2018 14:18:10 GMT
ARG USER_HOME_DIR=/root
# Sat, 29 Dec 2018 14:18:10 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 29 Dec 2018 14:18:10 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 29 Dec 2018 14:18:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:18:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Sat, 29 Dec 2018 14:18:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 29 Dec 2018 14:18:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 29 Dec 2018 14:18:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 29 Dec 2018 14:18:37 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 29 Dec 2018 14:18:38 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 29 Dec 2018 14:18:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 29 Dec 2018 14:18:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9768e4aef55fd8f8acae49249f3df25d2a0db51e026bdaeb0bcd7ac260f10511`  
		Last Modified: Sat, 29 Dec 2018 10:41:45 GMT  
		Size: 447.7 KB (447680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b405e3799a331a7e9f189faae67f494dcaa058b62b90890a89eecb23810209b`  
		Last Modified: Sat, 29 Dec 2018 10:41:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c94c474287cf8161b3f49d49b4e9e6c326951c94d454e29f9d94d3363a1eab`  
		Last Modified: Sat, 29 Dec 2018 10:41:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c392337d850194b18a8016c0ce76f38c856c354db5b169b605f910683c97e7e5`  
		Last Modified: Sat, 29 Dec 2018 10:41:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadae85f3c1f11f109f55e5d3f9ca264ef9477d3dfd1740168ba53981c9bc457`  
		Last Modified: Sat, 29 Dec 2018 10:42:21 GMT  
		Size: 209.1 MB (209057257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b794fd1fbec7020bfab083a49c2b87421be31f48b05e2692b853ec8d124cbe`  
		Last Modified: Sat, 29 Dec 2018 14:21:34 GMT  
		Size: 3.4 MB (3449144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa3a36d4e91450ad3b0401a8b9a14c1ca0845f4a36fb5e2167141925f0f101b`  
		Last Modified: Sat, 29 Dec 2018 14:21:33 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa6dcccf106b92f39991be99cbe1677c9d96d7c4222964f66868021d31766ff`  
		Last Modified: Sat, 29 Dec 2018 14:21:34 GMT  
		Size: 9.1 MB (9087943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d977abb7b648e922705b5e595987d11c303030d356a9324fd276f8a5a7808ba`  
		Last Modified: Sat, 29 Dec 2018 14:21:33 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2020ef280bfc04b5e7382f4c2bdd2440489831d7f89f7d3131f623273cbc73be`  
		Last Modified: Sat, 29 Dec 2018 14:21:33 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:d62bbbbfa51417e152f07aed7d9aa34780f3a80a2af8c414d1455e36bffa6ef8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260431321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:095f15ad35216553dad5d1dac4ba0df5b6d4c24f2f3520493c8592d44ea34439`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 15:01:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 13:07:10 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 13:07:10 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 13:07:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 13:07:13 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 13:07:14 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 13:07:14 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 13:07:15 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 13:01:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 13:01:21 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 13:33:51 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 28 Dec 2018 13:33:51 GMT
ARG USER_HOME_DIR=/root
# Fri, 28 Dec 2018 13:33:51 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 28 Dec 2018 13:33:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 28 Dec 2018 13:34:05 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 13:34:06 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 28 Dec 2018 13:34:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 28 Dec 2018 13:34:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 28 Dec 2018 13:34:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 28 Dec 2018 13:34:17 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 28 Dec 2018 13:34:18 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 28 Dec 2018 13:34:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 28 Dec 2018 13:34:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900b7f980d02b18fd554d5a5409355f8f3dcf17d873c9b6c50864ae9348b2fd3`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 430.6 KB (430585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476b041cd72a707f94d9ccee494ab21c2bb259e94f61c0209733f267c0f1535f`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2f51b9d669394d576afa25b79f8b21d40a10f97cec48c59e7100fcfc79306b`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a79fe6b3ae7f7915662a0b94e1ecea77fa5546a444cec260667337730ea4b27`  
		Last Modified: Wed, 26 Dec 2018 13:21:01 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c3df71744bcfc968ceec6ed2f03fd96765cf80c7c0345624e7ecd89f0c40e9`  
		Last Modified: Fri, 28 Dec 2018 13:14:28 GMT  
		Size: 228.4 MB (228381812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7fb6a07123c4ac15ca21f0ee0484b5cb7b58accfdca0352905c521bc9c95a9`  
		Last Modified: Fri, 28 Dec 2018 13:35:16 GMT  
		Size: 3.3 MB (3258963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76736af6b702d6d7e4bae31e61ce221718d6cd13315865870d47710f99e09c99`  
		Last Modified: Fri, 28 Dec 2018 13:35:15 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1648a30e728eda2b38ad8a63568df6192d193aa5926de569cbdf3537302c74d1`  
		Last Modified: Fri, 28 Dec 2018 13:35:16 GMT  
		Size: 9.1 MB (9087956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69965a25b7c306d03170bc12e52d1972d8d898a7dfaae48d8e88d9f2c4f6dc53`  
		Last Modified: Fri, 28 Dec 2018 13:35:15 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df1eb944a3039b4ebde10acb4d156f99a1459296289cdea1a5233938f98746d`  
		Last Modified: Fri, 28 Dec 2018 13:35:15 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ba262687140a3c2468a446f1fffb8897953f9b6e0b04f34ea24d1e61d419b560
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281896627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f8d0a473f52d77050db0c498289fa6731371cf4d216ea029a7cdac7b25e1ce`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:01:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:55:02 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 09:55:03 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 09:55:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 09:55:09 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 09:55:09 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 09:55:10 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 09:55:11 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 09:54:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 09:54:47 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 11:47:03 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 28 Dec 2018 11:47:04 GMT
ARG USER_HOME_DIR=/root
# Fri, 28 Dec 2018 11:47:05 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 28 Dec 2018 11:47:05 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 28 Dec 2018 11:47:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 11:47:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 28 Dec 2018 11:47:46 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 28 Dec 2018 11:47:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 28 Dec 2018 11:47:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 28 Dec 2018 11:47:49 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 28 Dec 2018 11:47:49 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 28 Dec 2018 11:47:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 28 Dec 2018 11:47:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d594caf9c11b4dd5588375b02cdab683c1f3ff4e66526d98aa006e849a8dea`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 440.9 KB (440857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ceae6d030cc01625eb8d6e7669a42e3416a2eb26b87ea4ebc3ab18741840f3`  
		Last Modified: Wed, 26 Dec 2018 10:24:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4f72fa75e7c380c29379ea5a108155f20935f0378e9394a20e2049d7fe81d1`  
		Last Modified: Wed, 26 Dec 2018 10:24:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4db83c7f04ee2f516c0244814c0f273a9b67b7ab50da20a8199b5462a2a16f`  
		Last Modified: Wed, 26 Dec 2018 10:24:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a18bf25bbb1e65a630f05297147142a61d4cab6f7b9d07bed635a30e307761`  
		Last Modified: Fri, 28 Dec 2018 10:07:14 GMT  
		Size: 248.6 MB (248649843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff20a1445538e95c1d1c8234d47f528731a224287c98439445e3111302ddf2a2`  
		Last Modified: Fri, 28 Dec 2018 11:49:16 GMT  
		Size: 3.4 MB (3384742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec19e5955c7b1b9332b7f3a5d4b923b414c43c8261027094b0003b9a717e40f`  
		Last Modified: Fri, 28 Dec 2018 11:49:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89ca4fe5eadd1e536b52fbbb1a8afd9f498c035603cf2b47bb22cc1089efd68`  
		Last Modified: Fri, 28 Dec 2018 11:49:16 GMT  
		Size: 9.1 MB (9087923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9382e32c1882142885858e8072e53b2c9ae852630a395eec95860de011239bc1`  
		Last Modified: Fri, 28 Dec 2018 11:49:14 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b75b4f5c7372e7ea50c5350685648e3a1073acf1cc51b3d4b36bc9e5e014f9`  
		Last Modified: Fri, 28 Dec 2018 11:49:14 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; 386

```console
$ docker pull maven@sha256:fe5712e20a9391d8910cdca49338de681e22c8de2d1b531dd31767afdbfe72d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.0 MB (370039825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f034f352f1c153619f7c8f32ae5ba3785206ca302efd683951e294c0354c068`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 14:03:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 12:10:01 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 26 Dec 2018 12:10:01 GMT
ENV LANG=C.UTF-8
# Wed, 26 Dec 2018 12:10:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 26 Dec 2018 12:10:02 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 26 Dec 2018 12:10:03 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Dec 2018 12:10:03 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 26 Dec 2018 12:10:03 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 28 Dec 2018 11:40:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Dec 2018 11:40:56 GMT
CMD ["jshell"]
# Fri, 28 Dec 2018 13:42:47 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 28 Dec 2018 13:42:47 GMT
ARG USER_HOME_DIR=/root
# Fri, 28 Dec 2018 13:42:47 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 28 Dec 2018 13:42:47 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 28 Dec 2018 13:42:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 13:42:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 28 Dec 2018 13:42:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 28 Dec 2018 13:42:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 28 Dec 2018 13:42:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 28 Dec 2018 13:42:58 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 28 Dec 2018 13:42:58 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 28 Dec 2018 13:42:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 28 Dec 2018 13:42:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d03dee212f9be81a5e3d859461fb2bb45b3e94124fc8ff506a0cc3ad8828de`  
		Last Modified: Sat, 17 Nov 2018 14:49:17 GMT  
		Size: 463.5 KB (463502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac8302da9a3c395d39895e696589ca5ef94c964ffec011686a3c0c01f74ac07`  
		Last Modified: Wed, 26 Dec 2018 12:17:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8f3df12f603f01cbaf89dafe5877a0d53cf9e601d577e494db82287258e12c`  
		Last Modified: Wed, 26 Dec 2018 12:17:05 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db633c3217f720b875526678c1e412c6358fff0284d03961abdbcd9f986c71`  
		Last Modified: Wed, 26 Dec 2018 12:17:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bd8d26d851e4c6ef8a7867425404903630efefdf03962de17c9c437c11179c`  
		Last Modified: Fri, 28 Dec 2018 11:45:26 GMT  
		Size: 333.5 MB (333476488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959aa9ab664cc4350f4e3fe955ac11bc7e0f9a00cdfb3f21aa7cb994ca216487`  
		Last Modified: Fri, 28 Dec 2018 13:43:44 GMT  
		Size: 3.9 MB (3883188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798137d0681414cee32d08e7cc9c9e198e0ec977ffdae9f231ff9e294d31fae2`  
		Last Modified: Fri, 28 Dec 2018 13:43:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb1c14bb1a9bad218ae336df6b0f86d631893e0bc21cb39a5abc7db2d2c20e2`  
		Last Modified: Fri, 28 Dec 2018 13:43:44 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a885dafe51493213a79b5d6e9e5faf4eabe4ebcfe9bef75c5876d1d5b7b890b`  
		Last Modified: Fri, 28 Dec 2018 13:43:44 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1956f37660deafb132010fed77b63cc413b88ad96450ed663c1a04c87cc7ff3b`  
		Last Modified: Fri, 28 Dec 2018 13:43:43 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:972ab303f25a5462e5d9b2d693d104e615214eeb99b4914cebfb5222400ed1cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274853449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df251266d23b437fbe45215d350bc057b3f4c89632e55496edaa6feb65532691`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:24:22 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 12:24:23 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:24:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 12:24:32 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 12:24:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 12:24:36 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 12:24:39 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 12:26:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 12:26:32 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 15:21:47 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 29 Dec 2018 15:21:49 GMT
ARG USER_HOME_DIR=/root
# Sat, 29 Dec 2018 15:21:52 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 29 Dec 2018 15:21:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 29 Dec 2018 15:22:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:22:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Sat, 29 Dec 2018 15:22:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 29 Dec 2018 15:22:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 29 Dec 2018 15:22:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 29 Dec 2018 15:22:45 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 29 Dec 2018 15:22:48 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 29 Dec 2018 15:22:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 29 Dec 2018 15:22:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0743698166d52740a3c2edd0e18b2c3f9d3e0fb6f70baef9db97b0a46804e02c`  
		Last Modified: Sat, 29 Dec 2018 12:55:09 GMT  
		Size: 449.8 KB (449826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c8611c9028346cf8686642cf26a227b59583cf3fa170f637fc0bb37838c1b1`  
		Last Modified: Sat, 29 Dec 2018 12:55:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c41e61a63c9fc3712b4e06f68fdc1e3a31aa0ce9564a4ab9faba5fd7b472d5`  
		Last Modified: Sat, 29 Dec 2018 12:55:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54b9fbb40727b54869e365beecde23eee8a3c68b65ef1e248f9f3d5bed4cd9d`  
		Last Modified: Sat, 29 Dec 2018 12:55:08 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2682a0c9f77333c42a69acc2a303d9dfa7cbcf595c3d4405a2a4ee6a54de5102`  
		Last Modified: Sat, 29 Dec 2018 12:55:44 GMT  
		Size: 238.9 MB (238911206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa6154f1a43774e4fcd29198e4584127b41900cd472780faa94ab3b63024548`  
		Last Modified: Sat, 29 Dec 2018 15:27:57 GMT  
		Size: 3.7 MB (3655680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9408c4322bfcc780cbdbdcb3afd2b0efdd3033960fefb2ca4e52c6741ff5820e`  
		Last Modified: Sat, 29 Dec 2018 15:27:58 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cde4e4b7a0ae693374d38f3449f0c02a3973632d280b9ceb3cce17eacbe58a2`  
		Last Modified: Sat, 29 Dec 2018 15:27:57 GMT  
		Size: 9.1 MB (9087964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4329d5cdb0c56f6a7298cfb6281098576eb29f3a31ebdcc78784e2f65314ba0d`  
		Last Modified: Sat, 29 Dec 2018 15:27:56 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e58ae7d505639c80d00a729435462c7f7adc6032b709ebb84be7722301eef9b`  
		Last Modified: Sat, 29 Dec 2018 15:27:56 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; s390x

```console
$ docker pull maven@sha256:696a7eda67a61a053a49a4d97c1163a07da3114bd6ca04311a300b6b370c31de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274794489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a617226ec53aba42c9dca26c6852a5729848f743a95ca9750742affee990a9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:52 GMT
ADD file:35c030887198a067338539b6bd96e04ff649537c38542febcb7e0ccd2a3d90c8 in / 
# Sat, 29 Dec 2018 12:43:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:25:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 14:25:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:25:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 14:25:09 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 14:25:09 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 14:25:09 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 14:25:10 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 14:25:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 14:25:54 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 17:12:30 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 29 Dec 2018 17:12:31 GMT
ARG USER_HOME_DIR=/root
# Sat, 29 Dec 2018 17:12:31 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 29 Dec 2018 17:12:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 29 Dec 2018 17:12:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:12:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Sat, 29 Dec 2018 17:12:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 29 Dec 2018 17:12:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 29 Dec 2018 17:12:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 29 Dec 2018 17:12:42 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 29 Dec 2018 17:12:42 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 29 Dec 2018 17:12:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 29 Dec 2018 17:12:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0e647eff4fda368965291c62c8bc90ae9cbcc84a50a5caed821af7f05ec653d4`  
		Last Modified: Sat, 29 Dec 2018 12:46:52 GMT  
		Size: 22.3 MB (22341416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b971102ba1e5fa0b494d2d0de3a851a4bdd60838081d58f636adafcaa749c6`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 465.7 KB (465718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d60b647a0242aa92a981504f447df67b0e26b1818ea99ad5835d045be228298`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b189769be120b8ff7821335238ca0ae9462b09b30eb2f8d98b2c0c99d539175a`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29225b33a7ddd86907cb5e6157a920530d85b715347f5c98c0d64e847a7fda1`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb336337e5fefb3c2bc1231a7e40e5d9ae2b642b68295f432db4ea23cc6a1015`  
		Last Modified: Sat, 29 Dec 2018 14:31:59 GMT  
		Size: 239.1 MB (239140102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f156294045ad8ccefb4c98e7e3973c2340e0b7f7cead4b2e9ad0d58b6e7bb2`  
		Last Modified: Sat, 29 Dec 2018 17:14:16 GMT  
		Size: 3.8 MB (3757383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0311b0d91ef5be5f542753184e0d0eeaae167897cd7c50ea910e1d8f7365b32`  
		Last Modified: Sat, 29 Dec 2018 17:14:15 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89c7e501282b6a6996d37b60e15494909d88cf925ab5d30cd5f2c32d652c021`  
		Last Modified: Sat, 29 Dec 2018 17:14:16 GMT  
		Size: 9.1 MB (9087930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889eaecb457f391ec54271e6ec49b10b2331f3599ca9f4d4ee4143f6322753d4`  
		Last Modified: Sat, 29 Dec 2018 17:14:18 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea97a176ebe4be0b021af7bf67b3737b11928c3134a5888dfc56aa5a22446546`  
		Last Modified: Sat, 29 Dec 2018 17:14:15 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

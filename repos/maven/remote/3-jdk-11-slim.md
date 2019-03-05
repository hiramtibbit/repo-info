## `maven:3-jdk-11-slim`

```console
$ docker pull maven@sha256:40c06eabbcc2ef86559b789babacd4a9b286e05b658e65c735aebd81025da44b
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
$ docker pull maven@sha256:b954fa567279eb555c0d50cf7103d573bc6543cc96abba410ee344425bbc1f57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.1 MB (307125566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84867e3c2b1a8398b65efe9bbe5532236ecf7c9ee4883883422468c7361e5b42`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:00:45 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 04:00:45 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:00:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:00:46 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:00:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:00:46 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 04:00:47 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 04:01:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 04:01:33 GMT
CMD ["jshell"]
# Tue, 05 Mar 2019 14:27:01 GMT
ARG MAVEN_VERSION=3.6.0
# Tue, 05 Mar 2019 14:27:01 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Mar 2019 14:27:02 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Tue, 05 Mar 2019 14:27:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Tue, 05 Mar 2019 14:27:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:27:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 05 Mar 2019 14:27:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Mar 2019 14:27:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Mar 2019 14:27:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 05 Mar 2019 14:27:25 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 05 Mar 2019 14:27:25 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 05 Mar 2019 14:27:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 05 Mar 2019 14:27:26 GMT
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
	-	`sha256:025ca652beaa800951a9ddf2d880551fd1989e83e464d2970b370c3f4170887e`  
		Last Modified: Tue, 05 Mar 2019 04:24:41 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63ad44e6a964e864412eaa375a6e9c289db3a94de1a3d17f37341eae245dd40`  
		Last Modified: Tue, 05 Mar 2019 04:24:41 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d6da2455d65b24abcc97fb1f707ae27ce25be8954d9e7ad46d8da15edbf350`  
		Last Modified: Tue, 05 Mar 2019 04:24:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0a95b5e0fba393b2954fcb159a26bc2d21007d6f09dc34dc60ef37525ecdcd`  
		Last Modified: Tue, 05 Mar 2019 04:25:06 GMT  
		Size: 271.1 MB (271122867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96bfd919b279f3b112e91ea219fa4f11ed94632047b73fe6a05f7264784de89c`  
		Last Modified: Tue, 05 Mar 2019 14:31:22 GMT  
		Size: 4.0 MB (3961915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93f050fc71a22a091c0145fa149221a486ac7dd8db2cfc5f721d303b770a350`  
		Last Modified: Tue, 05 Mar 2019 14:31:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef00df1258c1635c9c2400aa0ff98a483eaffdcaf7525c9d6f001c9148b49ef`  
		Last Modified: Tue, 05 Mar 2019 14:31:23 GMT  
		Size: 9.1 MB (9087922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074b0ce7762b0574fef188ffd6d8085b04817a6a95c7558987564a5e863990f5`  
		Last Modified: Tue, 05 Mar 2019 14:31:22 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd633a9131d4c8005dcc72ea687c1ecafbe825ad86221b69086a4994e22f6a9`  
		Last Modified: Tue, 05 Mar 2019 14:31:22 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:539ce2855ffc5e64ec03ee5182f833d3c4cdfe5376528c436042e67c48efebee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.3 MB (243318945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160ff839b69052de66e2579e5c3ec23f2232e2b838d075b648b391a0441844e5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 05 Mar 2019 09:55:08 GMT
ADD file:2526a4ee90bfd47bff3ab8ba2594e49465df9aa258daf8426e7d38166f4fecc2 in / 
# Tue, 05 Mar 2019 09:55:09 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:14:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:14:15 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 11:14:16 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:14:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:14:18 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:14:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 11:14:19 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 11:14:19 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 11:16:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 11:16:50 GMT
CMD ["jshell"]
# Tue, 05 Mar 2019 16:12:27 GMT
ARG MAVEN_VERSION=3.6.0
# Tue, 05 Mar 2019 16:12:27 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Mar 2019 16:12:28 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Tue, 05 Mar 2019 16:12:28 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Tue, 05 Mar 2019 16:12:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:12:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 05 Mar 2019 16:12:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Mar 2019 16:12:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Mar 2019 16:12:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 05 Mar 2019 16:12:57 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 05 Mar 2019 16:12:57 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 05 Mar 2019 16:12:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 05 Mar 2019 16:12:58 GMT
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
	-	`sha256:60c38ae404a1b130a1dadd7636f9ad0156ca57a0ae390f480c63bcd8c297cde9`  
		Last Modified: Tue, 05 Mar 2019 11:38:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cb6afd8c7205f76e27d05dba28ec529d68981de7564f591b21b2ac51b34eaa`  
		Last Modified: Tue, 05 Mar 2019 11:38:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59415cf92e721a75a31486bcba158407c0968ec2f9307c272cd03da7ca6efdc`  
		Last Modified: Tue, 05 Mar 2019 11:38:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba90ad219c9d8bdbb0e53a2cbf4e4a37b389839a9ae30b8b25a7d97c9a79b5b7`  
		Last Modified: Tue, 05 Mar 2019 11:38:59 GMT  
		Size: 209.2 MB (209170390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7fdfe255087c09cee3cb301e47d4923b9b32167b474a8e377594bea5389033`  
		Last Modified: Tue, 05 Mar 2019 16:16:21 GMT  
		Size: 3.5 MB (3450343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8ed1fe6e8bcc6933ad7eb6fb0269074379b25c99bc3ecc0db7a501812242d6`  
		Last Modified: Tue, 05 Mar 2019 16:16:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a852fae9d2472f0f76440fc27d8f145668ffbb597a62de50ccc97b4decb72f`  
		Last Modified: Tue, 05 Mar 2019 16:16:21 GMT  
		Size: 9.1 MB (9087958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c840bbcd1b809f6d7411411d35303496203810ad57091549d748f55d4f9fd56`  
		Last Modified: Tue, 05 Mar 2019 16:16:20 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e53c585fa72a7ef8381ecd7326ae883272fefabce1625f0eef9aa95458d315`  
		Last Modified: Tue, 05 Mar 2019 16:16:20 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:619e56d94ea4783b89510234db484cd5faa7817bf44e05163d1247dcda33ec6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 MB (260451672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d894ea7df4c21a2fcf640fda741c1030a5e5b05947fac8b6ee31fa1b29ddd3f1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:38:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:38:18 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 14:38:19 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:38:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:38:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:38:27 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 14:38:28 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 14:38:29 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 14:39:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 14:39:26 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 19:06:12 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 19:06:12 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 19:06:13 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 19:06:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 19:06:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:06:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Wed, 23 Jan 2019 19:06:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 19:06:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 19:06:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 19:06:36 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 19:06:37 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 19:06:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 19:06:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c7ddd72c1d6ab7cfac2d0836b5585cc06515862be46bdc9ea5a3d6cf9a2451`  
		Last Modified: Wed, 23 Jan 2019 15:05:43 GMT  
		Size: 430.6 KB (430613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efa67a94dc181684e6c68d84d7eb680128cc666dbd9779d8ff063c66a2c66ce`  
		Last Modified: Wed, 23 Jan 2019 15:05:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1eabf1a5f315975ccac5b1e42dbe7ec5343f042e7ff937bf5167725603b46d`  
		Last Modified: Wed, 23 Jan 2019 15:05:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b6e38d69f57e4bd1c42274960e14c985311f6fff50fc85550fbcbd262ccec`  
		Last Modified: Wed, 23 Jan 2019 15:05:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce923418064c0cc1f998527a5c8907f63a562bb8b1b9ab4907a81f1b18227bc0`  
		Last Modified: Wed, 23 Jan 2019 15:06:23 GMT  
		Size: 228.4 MB (228381839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a12d316e9fee2900de977ba48a2fbe3abd26b6dddbe67d73b051a125a9489db`  
		Last Modified: Wed, 23 Jan 2019 19:09:21 GMT  
		Size: 3.3 MB (3259021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df842dbd2d63069caf693bb6fd0a9c0f596a14e2b4ecfc6893b74a2407bd245`  
		Last Modified: Wed, 23 Jan 2019 19:09:19 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52a7bb5474ac7ad21619ffb9b02bef730f160785c463f8ed10f3c356c791f91`  
		Last Modified: Wed, 23 Jan 2019 19:09:21 GMT  
		Size: 9.1 MB (9087965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b39391a0d4898be3c0f882c561b9a2b22bbd1db12e9a5f3f087da7cf391b547`  
		Last Modified: Wed, 23 Jan 2019 19:09:19 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f2a7639165cb47b376d52c88efd92e82155e5766b770513af43331bf3ad5b3`  
		Last Modified: Wed, 23 Jan 2019 19:09:19 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:50ed87d47169c4427d78d18f165627f04684dfcaacb55cef2cb89e04c68fbdfd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282072867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1cb781aadafcaa7a105f2b63c4d38bc73488ef527623b80bead60573f6e50b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:59:55 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 11:59:56 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:59:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:00:00 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:00:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 12:00:02 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 12:00:03 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 12:02:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 12:02:09 GMT
CMD ["jshell"]
# Thu, 07 Feb 2019 06:44:59 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 06:45:00 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 06:45:01 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 06:45:02 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 06:45:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:45:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Thu, 07 Feb 2019 06:45:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 06:45:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 06:45:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 06:45:57 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 06:45:58 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 06:46:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 06:46:01 GMT
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
	-	`sha256:20fe57e2461f417a84f0c7e2947efdd70a8c4cb6160ef633e0a7339e7ffe4493`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5367174f3991bc5ec196a7b0f0c3e286312013447067b8bdabdf6a0065fae7db`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af31ad7097de4851a24eb3e01ad2178ccf7e4906fdd5b00c935ceb50ec99937`  
		Last Modified: Wed, 06 Feb 2019 12:37:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7b6368ed09518aaf8cb329a8a13ec9b495a8667ecf61c5d1682c6e6e4f3b2b`  
		Last Modified: Wed, 06 Feb 2019 12:37:55 GMT  
		Size: 248.8 MB (248807305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bd746639b23cd107f1e6aea7833ced975749ecdab3c994720a3e6b91f8c575`  
		Last Modified: Thu, 07 Feb 2019 06:50:28 GMT  
		Size: 3.4 MB (3384650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f18a8680e3a6dd44140266b337aff0ed432b2402ebee625ea27c068743de10`  
		Last Modified: Thu, 07 Feb 2019 06:50:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e4b0769dc9fc1ebdd00c24417c900751b4badde93e99f41d495443d1d69f81`  
		Last Modified: Thu, 07 Feb 2019 06:50:29 GMT  
		Size: 9.1 MB (9087922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b961c43d968811992e0e487e6bbdc9f2e27d4139109fb773c7d7e5d04a6866f`  
		Last Modified: Thu, 07 Feb 2019 06:50:25 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ffa039034eb436425bde966056284e73c03b4a1157b28a5b3b8e0ccaa1d289`  
		Last Modified: Thu, 07 Feb 2019 06:50:25 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; 386

```console
$ docker pull maven@sha256:fe5e513519595fa1703bdff3dfecc92568ff9dc63f9acc29c24b3b3e8c3f2a70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.0 MB (369980062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2658ecae7ce280b283dc8cf9728225fb5fbb9376d7fcdad2933ec12581cddac`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:21 GMT
ADD file:dc62e26c5e1fadea4cfe8bf1352ae3efb1fbb25f51c6499761d1dba06b3f436e in / 
# Wed, 06 Feb 2019 12:01:22 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:16:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:16:38 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 13:16:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:16:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:16:41 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:16:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 13:16:41 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 13:16:42 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 13:18:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 13:18:01 GMT
CMD ["jshell"]
# Thu, 07 Feb 2019 07:51:51 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 07:51:52 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 07:51:52 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 07:51:52 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 07:52:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 07:52:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Thu, 07 Feb 2019 07:52:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 07:52:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 07:52:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 07:52:07 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 07:52:07 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 07:52:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 07:52:08 GMT
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
	-	`sha256:b6207b113fc820e3d0bc7061d7fef6879277c1edd1450a2b0cb036d0071d8830`  
		Last Modified: Wed, 06 Feb 2019 13:38:42 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41790b91d08649bde073b7cddbd61bbce6793c1346d8fc3ab2e802406cda4a53`  
		Last Modified: Wed, 06 Feb 2019 13:38:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad497dcd14a08f52865d834e4d33ca49d3ec413dcd56cb6c360505c63292eb2`  
		Last Modified: Wed, 06 Feb 2019 13:38:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441ba679dee16733033f5d9d98bb82f26a7d86e553bbbdfd808be35c917d752e`  
		Last Modified: Wed, 06 Feb 2019 13:39:55 GMT  
		Size: 333.4 MB (333396208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5f08cf5e44258a345af146fdbdb97e62a075db37574ba832262d088fa45125`  
		Last Modified: Thu, 07 Feb 2019 07:56:43 GMT  
		Size: 3.9 MB (3883473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab413f31103efb394d070afbad7e5f99ee3098ee040aa414023583bf21b6d43`  
		Last Modified: Thu, 07 Feb 2019 07:56:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e63e90efada7f3674df7c2b1398516a887c97b50c34d48c5f3c50281a9e662`  
		Last Modified: Thu, 07 Feb 2019 07:56:43 GMT  
		Size: 9.1 MB (9087932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921714255c259d205e6547215e65edd641f366fba269716bc2385b7afc98c895`  
		Last Modified: Thu, 07 Feb 2019 07:56:38 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73d60e8fac116b3605794ce2794de396978aeee4e63aebe7b8b80c79c13cb07`  
		Last Modified: Thu, 07 Feb 2019 07:56:38 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:a6e145ef6d55110f575817e5a15d4d7cecb19ed23d3547b3dad9033d9e2b1b02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275020452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83112535b3cd3a0711bf84c377022cee66055e6339bfc58e330dc1f1b783e697`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:22:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:23:04 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 11:23:05 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:23:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:23:12 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 11:23:13 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 11:23:15 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 11:23:17 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 11:24:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 11:24:30 GMT
CMD ["jshell"]
# Thu, 07 Feb 2019 01:56:49 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 07 Feb 2019 01:56:51 GMT
ARG USER_HOME_DIR=/root
# Thu, 07 Feb 2019 01:56:52 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 07 Feb 2019 01:56:54 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 07 Feb 2019 01:57:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:57:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Thu, 07 Feb 2019 01:57:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 07 Feb 2019 01:57:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 07 Feb 2019 01:57:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 07 Feb 2019 01:57:30 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 07 Feb 2019 01:57:31 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 07 Feb 2019 01:57:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 07 Feb 2019 01:57:34 GMT
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
	-	`sha256:5736af875eb3850d160e7d2c24ea14c08fb1e3b06dde71026d8ac8e54a89f012`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd18ada0624ffb7ed06521f45402c317d320dd620a0666a63439dec7e19a588`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b18bcfcf1e2b8c8c8af44316bfa0362952cccc0478d88a28bf29c604c775b3`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e43f348a81f7e3f7a2a7ba5289c1e165eb5599b1b101a6e4520a0c90422c6f`  
		Last Modified: Wed, 06 Feb 2019 11:37:25 GMT  
		Size: 239.1 MB (239069783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e2cd01ca4ee63789d9db543fda0b33e024b43e950ea7d5c3ec825a3030faf2`  
		Last Modified: Thu, 07 Feb 2019 02:00:30 GMT  
		Size: 3.7 MB (3655602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:677586d2a8f5350d263b0d45b0bd0a0cdb1c4212537a7089548af3008604d705`  
		Last Modified: Thu, 07 Feb 2019 02:00:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b0727ed689b2629033c14f05442330b54c8fee71146bda0a28c6e8d2143eaf`  
		Last Modified: Thu, 07 Feb 2019 02:00:30 GMT  
		Size: 9.1 MB (9087953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3177ad4837c853686fce2f007d6f25db8ad9032c478483e4f5176bb6eb7756`  
		Last Modified: Thu, 07 Feb 2019 02:00:29 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6aab8fd0d1eab4b7c4dc3ff8579ec6219dfebcbb1eeac37955f6f26d2d5b635`  
		Last Modified: Thu, 07 Feb 2019 02:00:29 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-11-slim` - linux; s390x

```console
$ docker pull maven@sha256:97d29b798f97c36835eb88228b6d85e99bb3ae414a648d9688fac3c8e3c6e45f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (274950009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a34581f569fd35e42786f3e04c4cd8a50453190b183c4ae7649f2cd2279690`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 05 Mar 2019 12:43:10 GMT
ADD file:977b2abfb4bb6e881775d945b4d82d3f3e492b498a78ce0a9c877d9c8b82e3a9 in / 
# Tue, 05 Mar 2019 12:43:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:09:25 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 05 Mar 2019 15:09:26 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:09:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 15:09:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 15:09:27 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 15:09:28 GMT
ENV JAVA_VERSION=11.0.2
# Tue, 05 Mar 2019 15:09:28 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Tue, 05 Mar 2019 15:10:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 15:10:14 GMT
CMD ["jshell"]
# Tue, 05 Mar 2019 16:24:18 GMT
ARG MAVEN_VERSION=3.6.0
# Tue, 05 Mar 2019 16:24:18 GMT
ARG USER_HOME_DIR=/root
# Tue, 05 Mar 2019 16:24:19 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Tue, 05 Mar 2019 16:24:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Tue, 05 Mar 2019 16:24:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 16:24:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Tue, 05 Mar 2019 16:24:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 05 Mar 2019 16:24:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 05 Mar 2019 16:24:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 05 Mar 2019 16:24:34 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 05 Mar 2019 16:24:35 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 05 Mar 2019 16:24:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 05 Mar 2019 16:24:35 GMT
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
	-	`sha256:2d5bbdecbb06ad9f9a0c4a3f267eecffd7ed259e0f4406e9c113432225ee5227`  
		Last Modified: Tue, 05 Mar 2019 15:16:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccc1f730c3170f297cbf7a72424e9903dbc41a4ab56af42bcf6958259c6ec62`  
		Last Modified: Tue, 05 Mar 2019 15:16:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a0756b8888c9bdc440bcff22c2e820b4c0a8a124b21ecea387cbe482dfb1fe`  
		Last Modified: Tue, 05 Mar 2019 15:16:05 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b996698a0bd644a7da15760758618e2cef3d19fbe6d283840c9d599943102e34`  
		Last Modified: Tue, 05 Mar 2019 15:16:25 GMT  
		Size: 239.3 MB (239289211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f992bd52a5085276a7c580e9bdee5a8a014e32c27c699a3e507ae19a181090`  
		Last Modified: Tue, 05 Mar 2019 16:26:30 GMT  
		Size: 3.8 MB (3759787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28094166b05fb06cf13bbc30e273203857abeff3abb7d971b08a57a05bf657ea`  
		Last Modified: Tue, 05 Mar 2019 16:26:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aecda8d5a89c18e69b515bc5f9f0e91393efe35f6eb7e704e746e76cc6607d2`  
		Last Modified: Tue, 05 Mar 2019 16:26:30 GMT  
		Size: 9.1 MB (9087925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930ec575ce080e7931d4c5c26d84643fe59368a9babd7951ae80ec7f3968e19f`  
		Last Modified: Tue, 05 Mar 2019 16:26:29 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603ddd89f102e59a31cc076b5302a12504adc1dd1d3789cfc90f0de2ee8a4750`  
		Last Modified: Tue, 05 Mar 2019 16:26:28 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

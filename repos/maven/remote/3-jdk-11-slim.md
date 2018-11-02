## `maven:3-jdk-11-slim`

```console
$ docker pull maven@sha256:c14615cc099ac1107a45b46cc2ab00153e7261abfa3457f40a4ed1cad02a6617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-11-slim` - linux; amd64

```console
$ docker pull maven@sha256:53ceaf3eddb0c7f21be3e8ba1417813f93f17996f09af0dd98c022befda60ebc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333991882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6d5735f3bdc8148f094748d801f95be330be848df42b7be6d7136dcf753958`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:23:12 GMT
ADD file:8934168eda55976e44a0e80932dc79e1433f1c2ee5a90ed28ba2b8b55b60b7db in / 
# Mon, 15 Oct 2018 23:23:12 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:17:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:17:31 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:17:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:17:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:17:33 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Oct 2018 00:00:43 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 19 Oct 2018 00:00:43 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2
# Fri, 19 Oct 2018 00:01:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 19 Oct 2018 00:01:26 GMT
CMD ["jshell"]
# Fri, 02 Nov 2018 22:23:03 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:23:03 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:23:03 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:23:03 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:23:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:23:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 02 Nov 2018 22:23:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:23:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:23:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:23:22 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:23:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:23:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:23:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cca8b8cf2f157d13678401181406e5baf05ab424a04fb8190f9e3816c5db1e29`  
		Last Modified: Mon, 15 Oct 2018 23:32:22 GMT  
		Size: 26.3 MB (26284346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cf705e89452ccf724ae251641ad26bc6e8162141b3a88b688c959d8872f905`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 460.6 KB (460644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f6961c9eb5dddcc3a449439adc5c4a03e716794daec2a41900f7fda4fb492a`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805a6a4d0333bf4fa32e15672a04b71ef96caa25e163e085b4bd72831d2792b0`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe824bb10542643a9f3e71319e68e39d64172fe0b8c4d6167c5ec005372c1d68`  
		Last Modified: Fri, 19 Oct 2018 00:12:49 GMT  
		Size: 296.0 MB (295979758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c550156b0fa3c5a454250b3c07fddf55da3b755b74659489d37023bbb8b38259`  
		Last Modified: Fri, 02 Nov 2018 22:30:51 GMT  
		Size: 2.2 MB (2177506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985dbee95e65dfa93448e55509829ebd0b6d6eb97f091840434b4e5d83fcbfd1`  
		Last Modified: Fri, 02 Nov 2018 22:30:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4bc3a09bdea1cdad7fc9862a8d41ebbdd11ee278995c7179eef821def86dbf`  
		Last Modified: Fri, 02 Nov 2018 22:30:53 GMT  
		Size: 9.1 MB (9087926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6627339deefb5a915bf9cfc6ab306c6655715b9e2ccba1af515804bf3184f4`  
		Last Modified: Fri, 02 Nov 2018 22:30:50 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7cf47eb794e10778f6453f50d939ec120e3f11d1ccddaf1195b08d3629613`  
		Last Modified: Fri, 02 Nov 2018 22:30:50 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

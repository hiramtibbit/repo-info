## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:2e8783e073c63b3a9e2a056a5e909d4e08538a4d099c4ab2a50723c2e275b487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-slim` - linux; amd64

```console
$ docker pull maven@sha256:313b0ab79a637f58a7e621f56f11de372e8d78e7876d7e56304b35f344091248
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (159045707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cae438b7c37ce981e13a680564b05d1ece7a63b74422d8933982cc11b284a59`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:20:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:20:04 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:28:36 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:28:36 GMT
ENV JAVA_VERSION=7u151
# Thu, 15 Feb 2018 11:28:37 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Thu, 15 Feb 2018 11:29:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 09 Mar 2018 19:02:48 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 09 Mar 2018 19:02:48 GMT
ARG USER_HOME_DIR=/root
# Fri, 09 Mar 2018 19:02:48 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 09 Mar 2018 19:02:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 09 Mar 2018 19:03:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Mar 2018 19:03:14 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 09 Mar 2018 19:03:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 09 Mar 2018 19:03:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 09 Mar 2018 19:03:15 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 09 Mar 2018 19:03:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 09 Mar 2018 19:03:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 09 Mar 2018 19:03:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fec0543fd17fcc06dc7f9580e91161d0e8c8f0b7271bf7cd18cf215b48546c`  
		Last Modified: Thu, 15 Feb 2018 13:52:24 GMT  
		Size: 463.7 KB (463719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155279dc81606a38fc5cd90dfe3c57797ad50ba297323a1d6acdab7ba880f169`  
		Last Modified: Thu, 15 Feb 2018 13:52:24 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46e519e04f821ad35cb0e6bc50d82435ee2cb78842f0cd8caa1ab028a7af46a`  
		Last Modified: Thu, 15 Feb 2018 13:52:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969e4d3a2fc80b37bab8d5d6118ada4b5abf455cad05a55a70105b9e55c688fe`  
		Last Modified: Thu, 15 Feb 2018 13:54:32 GMT  
		Size: 118.2 MB (118207442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5c05c15e59753066c8beebc88987559873c92a6b03c8049d49e32b9c00ecda`  
		Last Modified: Fri, 09 Mar 2018 19:10:05 GMT  
		Size: 1.3 MB (1304758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68312880f7108f1ec3d01ad9ddfeaf8f395dda853cf453923d076edf3497abce`  
		Last Modified: Fri, 09 Mar 2018 19:10:04 GMT  
		Size: 8.9 MB (8945919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6f52f3e4ce401909207cc8ae57d170b094538eca3c6c522e4b6954ae454afd`  
		Last Modified: Fri, 09 Mar 2018 19:10:03 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab4e2266bb78b193a2d6cb2863876cf07539e68b6eca143d3ed5920234d8c5`  
		Last Modified: Fri, 09 Mar 2018 19:10:03 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

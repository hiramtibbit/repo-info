## `maven:3-jdk-12-alpine`

```console
$ docker pull maven@sha256:7bff865adcd7cfe410c768b3fde896732cf4eb274aaa94f64ac492950a6d6253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-12-alpine` - linux; amd64

```console
$ docker pull maven@sha256:760c342780affbe4866b2ce044c1a05ca9f01875a81d37533de1b75fc2aeb79c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.2 MB (210150175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0359201c4b458707daa1f8390ca6fa4f50f8532cc13d68eba344de4258407241`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 02 Oct 2018 17:36:08 GMT
ENV JAVA_HOME=/opt/openjdk-12
# Tue, 02 Oct 2018 17:36:08 GMT
ENV PATH=/opt/openjdk-12/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Nov 2018 00:49:00 GMT
ENV JAVA_VERSION=12-ea+20
# Wed, 21 Nov 2018 00:49:00 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/20/binaries/openjdk-12-ea+20_linux-x64-musl_bin.tar.gz
# Wed, 21 Nov 2018 00:49:00 GMT
ENV JAVA_SHA256=125162b84369be592f8355624075f579795343a835706f0cbde065882d9404a1
# Wed, 21 Nov 2018 00:49:51 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 21 Nov 2018 00:49:51 GMT
CMD ["jshell"]
# Wed, 21 Nov 2018 01:48:16 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 21 Nov 2018 01:48:16 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 21 Nov 2018 01:48:16 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Nov 2018 01:48:17 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 21 Nov 2018 01:48:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 21 Nov 2018 01:48:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 21 Nov 2018 01:48:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Nov 2018 01:48:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Nov 2018 01:48:34 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 21 Nov 2018 01:48:49 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 21 Nov 2018 01:48:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Nov 2018 01:48:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44ff00078c4fdf8b8e4b12f58c23f2b85af90e6a5138359f8e0b315c64a1153`  
		Last Modified: Wed, 21 Nov 2018 00:57:36 GMT  
		Size: 196.4 MB (196417323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150c30f60d80e0075242f6931603ce876a4d9a0c2d94da29b8a4f8477c5b149c`  
		Last Modified: Wed, 21 Nov 2018 01:50:34 GMT  
		Size: 2.4 MB (2436881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b1649d4eee71911bfcb934a424baed8c066f44bf92f1afcc405b1c888d886b`  
		Last Modified: Wed, 21 Nov 2018 01:50:33 GMT  
		Size: 9.1 MB (9087935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48ff2fb0684918c32251f960cd296ac5cd054aa32fe41b5e33b56f399d1452f`  
		Last Modified: Wed, 21 Nov 2018 01:50:32 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880e8863cc3b6e5fd4db7d7d261d6337b4296034d4b04c87a64cb0295cbb4104`  
		Last Modified: Wed, 21 Nov 2018 01:50:32 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

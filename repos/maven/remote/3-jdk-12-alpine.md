## `maven:3-jdk-12-alpine`

```console
$ docker pull maven@sha256:a16f3716bfcfc134b976528c0aafa2498441f21b10888a1046061dcc6258a3e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-12-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8c56b0bf228f237fb010d6f39a13cb9225c346f39fdacc1cee1cde4bcf9081ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.0 MB (210009880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ec89615eb9b19ea1c05ca294f50c3d777f93111898b753e07caed83d8f7576`
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
# Fri, 09 Nov 2018 22:52:33 GMT
ENV JAVA_VERSION=12-ea+18
# Fri, 09 Nov 2018 22:52:33 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/18/binaries/openjdk-12-ea+18_linux-x64-musl_bin.tar.gz
# Fri, 09 Nov 2018 22:52:34 GMT
ENV JAVA_SHA256=418ecbea7eee82241fdb3cacbddb139bd2563d3dd91d556b6e3309ca06a62254
# Fri, 09 Nov 2018 22:54:10 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 09 Nov 2018 22:54:10 GMT
CMD ["jshell"]
# Sat, 10 Nov 2018 01:27:28 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 10 Nov 2018 01:27:39 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 10 Nov 2018 01:27:39 GMT
ARG USER_HOME_DIR=/root
# Sat, 10 Nov 2018 01:27:39 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 10 Nov 2018 01:27:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 10 Nov 2018 01:27:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 10 Nov 2018 01:28:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 10 Nov 2018 01:28:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 10 Nov 2018 01:28:04 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 10 Nov 2018 01:28:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 10 Nov 2018 01:28:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 10 Nov 2018 01:28:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a80521626e262e3ded2f02fef1bbbf81e85b91aa366ebfac8667787c49ac37`  
		Last Modified: Fri, 09 Nov 2018 23:04:10 GMT  
		Size: 196.3 MB (196277082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c005661dcc0324f65bf79e6e6ef64bb9f8546a4b108ae911bda329ca6836ea0`  
		Last Modified: Sat, 10 Nov 2018 01:30:06 GMT  
		Size: 2.4 MB (2436821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca471068873e5494ec1967dd669eee9f6f95967a69e67b07f0b4d59415eee26`  
		Last Modified: Sat, 10 Nov 2018 01:30:06 GMT  
		Size: 9.1 MB (9087935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efae84d9df7be08d89dc012f15b9b72c533f6520749a08aa5cde74dc55b37afa`  
		Last Modified: Sat, 10 Nov 2018 01:30:05 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810a520a32391dec576f52cafd7204d984eccbc682090ce7c153d589c8d30686`  
		Last Modified: Sat, 10 Nov 2018 01:30:05 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-13-alpine`

```console
$ docker pull maven@sha256:f9f8bb759ebcde76e236c2ae5f8e55038ba97bbb5c44dd36d93a84560bb766b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-13-alpine` - linux; amd64

```console
$ docker pull maven@sha256:2deec53e4866f84c06325c8adf3dab0876d1aa2a358f83eac8fe5af298294eee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.2 MB (210160915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5fa985ccb2661574098b98215a49ba4a81e36e1e096754c80fe5a1d43b20539`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:49:28 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Wed, 10 Apr 2019 01:49:28 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Apr 2019 01:49:28 GMT
ENV JAVA_VERSION=13-ea+14
# Wed, 10 Apr 2019 01:49:29 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/14/binaries/openjdk-13-ea+14_linux-x64-musl_bin.tar.gz
# Wed, 10 Apr 2019 01:49:29 GMT
ENV JAVA_SHA256=65902947d71998184de49eec5b420c489f31cb9a33eafd431dad445e97438250
# Wed, 10 Apr 2019 01:51:36 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Wed, 10 Apr 2019 01:51:36 GMT
CMD ["jshell"]
# Wed, 10 Apr 2019 03:30:32 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 10 Apr 2019 03:30:32 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 10 Apr 2019 03:30:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 10 Apr 2019 03:30:33 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 10 Apr 2019 03:30:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 10 Apr 2019 03:30:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 10 Apr 2019 03:30:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 10 Apr 2019 03:30:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 10 Apr 2019 03:30:36 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 10 Apr 2019 03:30:36 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 10 Apr 2019 03:30:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 10 Apr 2019 03:30:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34775b16ae4d0d9b11c066d543b1a7469011b38a117108046667fd773e473b59`  
		Last Modified: Wed, 10 Apr 2019 01:56:43 GMT  
		Size: 195.9 MB (195870145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fcb95f4d2a7017e3b796b592ebaaf9a840feb342d86b7b96e32eeecec841332`  
		Last Modified: Wed, 10 Apr 2019 03:31:40 GMT  
		Size: 2.4 MB (2444724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e0478fa8fe962118f9e76a3c156c6a4a1197efc03534887a0db8a40fb368b1`  
		Last Modified: Wed, 10 Apr 2019 03:31:40 GMT  
		Size: 9.1 MB (9087931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d402b988d8848a29027639d561e72f0cd154cdc377c2972fe475e09332894b5`  
		Last Modified: Wed, 10 Apr 2019 03:31:40 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731620f090392a01313a4cc9dabc9398a76c08c23a27a20075627c74b71aa450`  
		Last Modified: Wed, 10 Apr 2019 03:31:39 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

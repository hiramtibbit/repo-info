## `maven:3-jdk-13-alpine`

```console
$ docker pull maven@sha256:76bc43f7d3a521f6dd98b2ddb8f2b88ec3a52fdce4211e00246e26acb904f17c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-13-alpine` - linux; amd64

```console
$ docker pull maven@sha256:81641024e64c1a0d3cbce81aabefbfa2a6d0b4d853f6d80a21412d5779c4d6e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211912951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67eed4e57b0847ef5845550da6302d9010421bc8ee4185c1c9b21fc77235e3ea`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:34:14 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Tue, 05 Feb 2019 20:34:15 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Feb 2019 01:21:35 GMT
ENV JAVA_VERSION=13-ea+7
# Fri, 15 Feb 2019 01:21:36 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/7/binaries/openjdk-13-ea+7_linux-x64-musl_bin.tar.gz
# Fri, 15 Feb 2019 01:21:36 GMT
ENV JAVA_SHA256=436d25bc7bf09afa7b8ca3cfa4cd6637687114431b45a06826597c8ae0d4dba3
# Fri, 15 Feb 2019 01:23:34 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Fri, 15 Feb 2019 01:23:34 GMT
CMD ["jshell"]
# Fri, 15 Feb 2019 01:46:55 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 15 Feb 2019 01:46:55 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 15 Feb 2019 01:46:56 GMT
ARG USER_HOME_DIR=/root
# Fri, 15 Feb 2019 01:46:56 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 15 Feb 2019 01:46:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 15 Feb 2019 01:46:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 15 Feb 2019 01:46:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 15 Feb 2019 01:46:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 15 Feb 2019 01:46:58 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 15 Feb 2019 01:46:59 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 15 Feb 2019 01:46:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 15 Feb 2019 01:46:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2518c14696f860a53775bd316a12eedc26f8bf5b116c892be83640797fa715e5`  
		Last Modified: Fri, 15 Feb 2019 01:29:06 GMT  
		Size: 197.6 MB (197627441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2e4b043881ba134334b9ac7e56bb3c441057022955ee37691f8be537fd7767`  
		Last Modified: Fri, 15 Feb 2019 01:47:56 GMT  
		Size: 2.4 MB (2441753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c7dbdf636dbabcec37d34b8569d2d65d912ff96ca6113f5d5142f76a49b2ee`  
		Last Modified: Fri, 15 Feb 2019 01:47:56 GMT  
		Size: 9.1 MB (9087923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975d388ead7282cb602af9ffe08935bba69080de562c1216e45bea3db3e859b5`  
		Last Modified: Fri, 15 Feb 2019 01:47:55 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7e994097053c24df9a1b274982ad8bf8f0c6232f4d03c48a3aaea30da3d182`  
		Last Modified: Fri, 15 Feb 2019 01:47:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-13-alpine`

```console
$ docker pull maven@sha256:912441f2d49d176832a4f72bb938a39dd15aa9c24847fcb56336f541cfe37ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-13-alpine` - linux; amd64

```console
$ docker pull maven@sha256:6a2c1779414d5134d487cbd76b964fe6a043b481ccb3cb90af86b377e1dcd05a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.1 MB (212110419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28fbd0b5f852bf35dfe04464d9ad67f7b1e806b223f5339d5ddb825b3e7ba85`
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
# Thu, 28 Feb 2019 01:22:59 GMT
ENV JAVA_VERSION=13-ea+9
# Thu, 28 Feb 2019 01:23:00 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/9/binaries/openjdk-13-ea+9_linux-x64-musl_bin.tar.gz
# Thu, 28 Feb 2019 01:23:00 GMT
ENV JAVA_SHA256=695fa4b71266858a674d560dec83a51e250f9a7165e8880210425fbcafa10691
# Thu, 28 Feb 2019 01:24:44 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 28 Feb 2019 01:24:45 GMT
CMD ["jshell"]
# Thu, 28 Feb 2019 01:55:08 GMT
RUN apk add --no-cache curl tar bash procps
# Thu, 28 Feb 2019 01:55:09 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 28 Feb 2019 01:55:09 GMT
ARG USER_HOME_DIR=/root
# Thu, 28 Feb 2019 01:55:09 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 28 Feb 2019 01:55:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 28 Feb 2019 01:55:11 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 28 Feb 2019 01:55:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 28 Feb 2019 01:55:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 28 Feb 2019 01:55:12 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 28 Feb 2019 01:55:12 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 28 Feb 2019 01:55:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 28 Feb 2019 01:55:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828f731a1a2dde5f1e736da680bf0e8ea7d2242f2aa9c1b9fb6989e9e1a2dbd5`  
		Last Modified: Thu, 28 Feb 2019 01:28:06 GMT  
		Size: 197.8 MB (197822904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d5c1ff33ece62d75b12dbfc2aa1ac5629a6160d5d9727603970b6d50a5b6da`  
		Last Modified: Thu, 28 Feb 2019 01:56:03 GMT  
		Size: 2.4 MB (2443746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03f5bde6cc58a289b042dbb3e3d004aab288571f0e4418179f6ce19b6e51a87`  
		Last Modified: Thu, 28 Feb 2019 01:56:03 GMT  
		Size: 9.1 MB (9087933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f8cb0f445683f631265b80c8ed2eab22da23bcdcef26fde4439bcc3b4c7ac`  
		Last Modified: Thu, 28 Feb 2019 01:56:03 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0457e4b09ff5ddf8826799986c19bc78928dfd04298a71f490b7b7dd84577f58`  
		Last Modified: Thu, 28 Feb 2019 01:56:03 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

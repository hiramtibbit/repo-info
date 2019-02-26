## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:f20072f79baa1f2f68b79eafa09627967538abf6d55ea7b27e59dc34a6421886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:cbcc2fd881f9d257d9e50d736ebb2279b50632a3565c8bc9fbbd60f5ccb720e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301281705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:364251ad96622477d140f6d50f88f8abd515b39fe3ee806eeaae0096b554ca59`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 26 Feb 2019 00:22:08 GMT
ADD file:3e10074b48c51f563af4a2b01b8e449c872ee7d119abdfb374d56a22c65149f0 in / 
# Tue, 26 Feb 2019 00:22:09 GMT
CMD ["/bin/bash"]
# Tue, 26 Feb 2019 00:41:42 GMT
RUN amazon-linux-extras enable corretto8  && yum -y install java-1.8.0-amazon-corretto-devel-1.8.0_202.b08-1.amzn2  && yum clean all
# Tue, 26 Feb 2019 00:58:23 GMT
ARG MAVEN_VERSION=3.6.0
# Tue, 26 Feb 2019 00:58:24 GMT
ARG USER_HOME_DIR=/root
# Tue, 26 Feb 2019 00:58:24 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Tue, 26 Feb 2019 00:58:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Tue, 26 Feb 2019 00:58:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN yum install -y tar which
# Tue, 26 Feb 2019 00:58:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 26 Feb 2019 00:58:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 26 Feb 2019 00:58:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 26 Feb 2019 00:58:37 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 26 Feb 2019 00:58:37 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 26 Feb 2019 00:58:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 26 Feb 2019 00:58:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d56dfdfb8504435b47d51e0f3ce14132b8242d2b479fa6d684adf958f84e712b`  
		Last Modified: Tue, 26 Feb 2019 00:23:01 GMT  
		Size: 61.3 MB (61300792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a494f869c5cd323f8f57b8c7435ac1d968e2d588b700b878c544c1140a83a2bd`  
		Last Modified: Tue, 26 Feb 2019 00:42:15 GMT  
		Size: 171.4 MB (171410477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af649e8fce29dba0a50866a622ecd048628305f8d47cb38780cf302479772b91`  
		Last Modified: Tue, 26 Feb 2019 00:59:12 GMT  
		Size: 59.5 MB (59481402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3167d8234df6a093b4be10d571666c2225ecc4416f9222300b8e1428f57735`  
		Last Modified: Tue, 26 Feb 2019 00:59:05 GMT  
		Size: 9.1 MB (9087931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875f63bb06b626ea7624140dc2fc674a469239fc152d7a97bf94e0869d8037ff`  
		Last Modified: Tue, 26 Feb 2019 00:59:04 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cf42086df1071d2e508914907dcd2e8bb97debe70f372891b1f52075ff6601`  
		Last Modified: Tue, 26 Feb 2019 00:59:04 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

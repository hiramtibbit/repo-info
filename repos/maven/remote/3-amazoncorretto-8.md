## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:5a68e55ff3a094a8da906da245bf49bc3e639d349b0932436d38ebb3603dcedc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:c6a0f323d04b5cdb4025c5f601d9bf0bba9fd1d796518d558fd4d4d782d211c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301311045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe80121fe52f9abd6add5db92ce0a2fa7ce8c41534500f23099a806b4ea36b3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 01 Mar 2019 22:39:46 GMT
RUN amazon-linux-extras enable corretto8  && yum -y install java-1.8.0-amazon-corretto-devel-1.8.0_202.b08-1.amzn2  && yum clean all
# Fri, 01 Mar 2019 22:57:53 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 01 Mar 2019 22:57:53 GMT
ARG USER_HOME_DIR=/root
# Fri, 01 Mar 2019 22:57:53 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 01 Mar 2019 22:57:53 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 01 Mar 2019 22:58:02 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN yum install -y tar which
# Fri, 01 Mar 2019 22:58:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 01 Mar 2019 22:58:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 01 Mar 2019 22:58:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 01 Mar 2019 22:58:04 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 01 Mar 2019 22:58:04 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 01 Mar 2019 22:58:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 01 Mar 2019 22:58:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6717d8e0127ffa7ddb72f8edb809cecdc20d3c6b5fe56e2aadd087f96b372f6`  
		Last Modified: Fri, 01 Mar 2019 22:40:32 GMT  
		Size: 171.4 MB (171421438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03f751ab2399460434214dbc0a72061da532070f9292e85c580e680e0a8a312`  
		Last Modified: Fri, 01 Mar 2019 22:58:37 GMT  
		Size: 59.5 MB (59490832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6df178bde1d55cf66dafaf7ea65027ff72a1e5775aef294e49c9f22f955cd2a`  
		Last Modified: Fri, 01 Mar 2019 22:58:31 GMT  
		Size: 9.1 MB (9087928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b77d622920ddb5a47f3501924713fd212189c6348b2818a21281fa27db1c662`  
		Last Modified: Fri, 01 Mar 2019 22:58:30 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4356f235be0fe42bf3f9f3a90a906372f7af0fa12fac07a2112382c9ceb12393`  
		Last Modified: Fri, 01 Mar 2019 22:58:30 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

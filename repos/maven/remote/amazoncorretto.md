## `maven:amazoncorretto`

```console
$ docker pull maven@sha256:943ab5b4dd8e1b7344b2468a1d6ee810c0b68933af8a76232026a6663cf20c40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:amazoncorretto` - linux; amd64

```console
$ docker pull maven@sha256:c29d88160d77287f71d2592a1c74bef0e4b8754eb5d1f88df084d4f02fea5e88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.2 MB (327166893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b145904c35c1a701399dca0d020268dc585f2f813d25e43337556307267789f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Apr 2019 22:20:46 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
# Tue, 16 Apr 2019 22:20:47 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1
# Tue, 16 Apr 2019 22:20:47 GMT
ARG key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28
# Tue, 16 Apr 2019 22:21:25 GMT
# ARGS: key=F6E978D911927C6B6ADBE616A3BBAC10F8152B28 path=https://d3pxv6yz143wms.cloudfront.net/11.0.3.7.1 rpm=java-11-amazon-corretto-devel-11.0.3.7-1.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Tue, 16 Apr 2019 22:21:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 16 Apr 2019 22:41:37 GMT
ARG MAVEN_VERSION=3.6.1
# Tue, 16 Apr 2019 22:41:37 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Apr 2019 22:41:37 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Tue, 16 Apr 2019 22:41:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Tue, 16 Apr 2019 22:41:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN yum install -y tar which gzip
# Tue, 16 Apr 2019 22:41:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Apr 2019 22:41:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Apr 2019 22:41:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Apr 2019 22:41:50 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Apr 2019 22:41:50 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 16 Apr 2019 22:41:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Apr 2019 22:41:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c2851dcafa74b9f85a95787d8e5a8a669964eeb5642aa0d89547e9bf60b5d6`  
		Last Modified: Tue, 16 Apr 2019 22:22:12 GMT  
		Size: 196.2 MB (196163431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44cffa82b93f8544f5ae5203c41206e6a3b644dfe506c74c4c2b7d9ad74f0d1`  
		Last Modified: Tue, 16 Apr 2019 22:43:57 GMT  
		Size: 60.5 MB (60530617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f4ce2fc7f0071c41bdcf04c3635f05ceaf0d89fe50f5a678edab12c78c5421`  
		Last Modified: Tue, 16 Apr 2019 22:43:49 GMT  
		Size: 9.2 MB (9161886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c322e5d8623cee221d3af2079fff63b8c65286854b0fd4cab0177d6a73af1b`  
		Last Modified: Tue, 16 Apr 2019 22:43:49 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a005e506e0e1a21cae6e7a9d41f6b1829a8ad8ea435db4cc77a905fe55e84a5`  
		Last Modified: Tue, 16 Apr 2019 22:43:49 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

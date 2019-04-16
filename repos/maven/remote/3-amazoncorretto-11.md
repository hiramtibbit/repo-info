## `maven:3-amazoncorretto-11`

```console
$ docker pull maven@sha256:7d18d7fc1b3998c8f11f517f069a5e32b1f5a2d08ea4e04b7a60b3cc3b815f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-amazoncorretto-11` - linux; amd64

```console
$ docker pull maven@sha256:995406a82245e1dd9fe0bc4aa2a6e1bb0dec04726bae5456ef00b373238e8bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.0 MB (327033880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd756ec02e1199bcba2a91dbc42265f2fc697baf0f5600a1e505ed4fdb522cf0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 15 Mar 2019 23:19:22 GMT
ARG rpm=java-11-amazon-corretto-devel-11.0.2.9-3.x86_64.rpm
# Fri, 15 Mar 2019 23:19:22 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/11.0.2.9.3
# Fri, 15 Mar 2019 23:19:22 GMT
ARG key=1BD3F7FB61E53C4F0F0B1C1E9471DD1D11E0D862
# Fri, 15 Mar 2019 23:19:46 GMT
# ARGS: key=1BD3F7FB61E53C4F0F0B1C1E9471DD1D11E0D862 path=https://d3pxv6yz143wms.cloudfront.net/11.0.2.9.3 rpm=java-11-amazon-corretto-devel-11.0.2.9-3.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Fri, 15 Mar 2019 23:19:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Mon, 15 Apr 2019 23:37:23 GMT
ARG MAVEN_VERSION=3.6.0
# Mon, 15 Apr 2019 23:37:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 15 Apr 2019 23:37:24 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Mon, 15 Apr 2019 23:37:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Mon, 15 Apr 2019 23:37:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN yum install -y tar which gzip
# Mon, 15 Apr 2019 23:37:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 15 Apr 2019 23:37:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 15 Apr 2019 23:37:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 15 Apr 2019 23:37:43 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 15 Apr 2019 23:37:43 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Mon, 15 Apr 2019 23:37:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 15 Apr 2019 23:37:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3d934c31277947df7d83f116135eb36eec4f980cf086daae3b92467bf3a2d8`  
		Last Modified: Fri, 15 Mar 2019 23:20:16 GMT  
		Size: 196.1 MB (196104423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be54fc2683054dd1b35ce3db9e0902e0b02d539a048dcf86c733b2b8e5cecba`  
		Last Modified: Mon, 15 Apr 2019 23:38:47 GMT  
		Size: 60.5 MB (60530677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0153466f39fe7894edff701e4da868d76fdbb16bef40db7e6b157bbee2048b1`  
		Last Modified: Mon, 15 Apr 2019 23:38:38 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910b14f69b7ca4dd7a3a1a2c3a1f5cf349b400c8b3de6cd1b5c9b72beccd1ca9`  
		Last Modified: Mon, 15 Apr 2019 23:38:37 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79afb17b761fe286977aa654a82d7f62392dff6dff2c680b704b9ef2ef0e8bee`  
		Last Modified: Mon, 15 Apr 2019 23:38:37 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

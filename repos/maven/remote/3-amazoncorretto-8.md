## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:bd87bafcff375fce5f12e5e5fcd3459f0540b336765a207ee75223676c86dfa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:11755ba3ef8786e93791646615bc7886c46347bd669d4c71972dcf57319a819e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255321420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5122990fbcead9f3cbf08f18a2edc61eae8416bbf3a1a19199001ace28ef138a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 23 May 2019 22:19:59 GMT
ADD file:3cf811fe5073384ff1d5f405992ef7e5e452ad6d4a4cb873eee65007382f3a4a in / 
# Thu, 23 May 2019 22:20:00 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 22:39:41 GMT
ARG rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
# Thu, 23 May 2019 22:39:41 GMT
ARG path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2
# Thu, 23 May 2019 22:39:42 GMT
ARG key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B
# Thu, 23 May 2019 22:40:05 GMT
# ARGS: key=0E50DA5A06C9F82E013C6561A5E4F647D043E83B path=https://d3pxv6yz143wms.cloudfront.net/8.212.04.2 rpm=java-1.8.0-amazon-corretto-devel-1.8.0_212.b04-2.x86_64.rpm
RUN curl -O $path/$rpm     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys $key     && gpg --armor --export $key > corretto.asc     && rpm --import corretto.asc     && rpm -K $rpm     && rpm -i $rpm     && rm -r $GNUPGHOME corretto.asc $rpm     && yum install -y fontconfig     && yum clean all
# Thu, 23 May 2019 22:40:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 23 May 2019 22:57:39 GMT
ARG MAVEN_VERSION=3.6.1
# Thu, 23 May 2019 22:57:39 GMT
ARG USER_HOME_DIR=/root
# Thu, 23 May 2019 22:57:40 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Thu, 23 May 2019 22:57:40 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Thu, 23 May 2019 22:57:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN yum install -y tar which gzip
# Thu, 23 May 2019 22:57:50 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 23 May 2019 22:57:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 23 May 2019 22:57:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 23 May 2019 22:57:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 23 May 2019 22:57:51 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 23 May 2019 22:57:51 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 23 May 2019 22:57:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 23 May 2019 22:57:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:72d97abdfae3b3c933ff41e39779cc72853d7bd9dc1e4800c5294d6715257799`  
		Last Modified: Thu, 23 May 2019 22:22:16 GMT  
		Size: 61.3 MB (61285177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d042b5f8e146b4ed8e5e7f5082aea6e9392d3ac1eb8fa75f7c4b12b48cfbf584`  
		Last Modified: Thu, 23 May 2019 22:40:58 GMT  
		Size: 121.3 MB (121279915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0ff326553984323fe66528ec7383490b09bceeca54c70fd18b07ad4bcffe43`  
		Last Modified: Thu, 23 May 2019 22:58:42 GMT  
		Size: 63.6 MB (63593237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8fac3f119632d6e9c29c1b72dbbcf7bb07c0e0259a8f4a3286dfdf73f23161`  
		Last Modified: Thu, 23 May 2019 22:58:35 GMT  
		Size: 9.2 MB (9161876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444a20b4d7ed770b03fb76371561ec475178d56ebf30dc5b75b5e85e54cd7375`  
		Last Modified: Thu, 23 May 2019 22:58:34 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b45e54168ac3be4b8a0c522bf1e8196a1b6275f16fa2ab726e76ebe64b01ad`  
		Last Modified: Thu, 23 May 2019 22:58:34 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

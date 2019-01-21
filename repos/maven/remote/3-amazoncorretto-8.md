## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:a935446a2c54530a4799a50927067d28b317e2de71451898eb2f0a2839958fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:d06519a35ec295479ab75360c1e4f2ea34707dbd2ac597c92d9bc29fbc58c4de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.7 MB (265746277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ec57f160f657b0bcb13e336bcd7a85ad93185a5334e2888f125f791569c735`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 21 Jan 2019 20:20:55 GMT
ADD file:d4a81b79ca9de0a2c33b9adb925cd6b676889f3f89203e2cf76d9bf7796e11e0 in / 
# Mon, 21 Jan 2019 20:20:55 GMT
CMD ["/bin/bash"]
# Mon, 21 Jan 2019 20:43:40 GMT
RUN amazon-linux-extras enable corretto8  && yum -y install java-1.8.0-amazon-corretto-devel-1.8.0_192.b12-1.amzn2  && yum clean all
# Mon, 21 Jan 2019 21:00:15 GMT
ARG MAVEN_VERSION=3.6.0
# Mon, 21 Jan 2019 21:00:15 GMT
ARG USER_HOME_DIR=/root
# Mon, 21 Jan 2019 21:00:15 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Mon, 21 Jan 2019 21:00:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Mon, 21 Jan 2019 21:00:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN yum install -y tar which
# Mon, 21 Jan 2019 21:00:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 21 Jan 2019 21:00:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 21 Jan 2019 21:00:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 21 Jan 2019 21:00:30 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 21 Jan 2019 21:00:30 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Mon, 21 Jan 2019 21:00:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 21 Jan 2019 21:00:30 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6c5ec16d4336267317a706197dd28a35e68dc1528c8838f2357acf6a3cb97359`  
		Last Modified: Mon, 21 Jan 2019 20:24:30 GMT  
		Size: 61.3 MB (61281937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744524323d30625abea063346a83c3d760c272a27b450cfae85ddc7c2265440e`  
		Last Modified: Mon, 21 Jan 2019 20:44:06 GMT  
		Size: 138.9 MB (138906678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eee85ecd643434a805c02ee2b1c07a8440ec59c64b0a08e76ee427c340a86f9`  
		Last Modified: Mon, 21 Jan 2019 21:01:08 GMT  
		Size: 56.5 MB (56468621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c10bc5731c6300a6f5555d259f3abf59a5b46d52938d7a369d2a9412092dc90`  
		Last Modified: Mon, 21 Jan 2019 21:01:01 GMT  
		Size: 9.1 MB (9087934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4edf914476cd2076a3cd350619a5fd49be2026a6e67aee4a7ec67c2da0b6260`  
		Last Modified: Mon, 21 Jan 2019 21:01:00 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e70f73fd3eeffe55fc237eb73f9169aa64e3ceff75ffdcb87335e983785bea`  
		Last Modified: Mon, 21 Jan 2019 21:01:01 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-13-alpine`

```console
$ docker pull maven@sha256:04959c0e28486a5343bf509d170ac2cb673d8f55592ac2fd6f51ee6fcd504672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-13-alpine` - linux; amd64

```console
$ docker pull maven@sha256:d70fc10fb48941afcb16a9a40572414effb822522fc420e307aeb3a5ede36e43
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211446904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1986d8720be944f8cc2e39432699b5af868283d28c6834b3e1ced8d449732ed5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:30:45 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Sat, 11 May 2019 01:30:45 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 01:30:45 GMT
ENV JAVA_VERSION=13-ea+19
# Sat, 11 May 2019 01:30:45 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/19/binaries/openjdk-13-ea+19_linux-x64-musl_bin.tar.gz
# Sat, 11 May 2019 01:30:46 GMT
ENV JAVA_SHA256=010ea985fba7e3d89a9170545c4e697da983cffc442b84e65dba3baa771299a5
# Sat, 11 May 2019 01:31:19 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Sat, 11 May 2019 01:31:20 GMT
CMD ["jshell"]
# Sat, 11 May 2019 04:20:39 GMT
RUN apk add --no-cache curl tar bash procps
# Sat, 11 May 2019 04:20:40 GMT
ARG MAVEN_VERSION=3.6.1
# Sat, 11 May 2019 04:20:40 GMT
ARG USER_HOME_DIR=/root
# Sat, 11 May 2019 04:20:40 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Sat, 11 May 2019 04:20:40 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Sat, 11 May 2019 04:20:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 11 May 2019 04:20:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 11 May 2019 04:20:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 11 May 2019 04:20:43 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 11 May 2019 04:20:43 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Sat, 11 May 2019 04:20:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 11 May 2019 04:20:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9064653447c3f50b807ac581e0d3384d516f665051fe8e54e77ba250b2fabe78`  
		Last Modified: Sat, 11 May 2019 01:36:24 GMT  
		Size: 197.1 MB (197082074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70646611d698a81281d0fff3ea60488ae849cf1b99230ddfa03457039338f28`  
		Last Modified: Sat, 11 May 2019 04:21:48 GMT  
		Size: 2.4 MB (2444719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb5483f2a0fc461fd8be5580eeb97c7fb2372d3d8643ee61b50bdac12cc2f04`  
		Last Modified: Sat, 11 May 2019 04:21:48 GMT  
		Size: 9.2 MB (9161865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a8ee84e917b0dbdb07e6caf47483d2fae8b8032f2e165e376f128041fe9135`  
		Last Modified: Sat, 11 May 2019 04:21:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bc97a2411ac4a9ba6925b95ad71471f27045fd904741646f9cd5518c808a23`  
		Last Modified: Sat, 11 May 2019 04:21:48 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

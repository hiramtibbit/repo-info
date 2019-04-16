## `maven:3-jdk-13-alpine`

```console
$ docker pull maven@sha256:e39c35e1f535f1ebf346eac3821316e7bea3f364cf3f53385a7b956e1d781794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-13-alpine` - linux; amd64

```console
$ docker pull maven@sha256:a588b575b25ff4d67999be1a14d2e72769c20264fc6fff855bc659dee9186b44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.2 MB (210234963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f49d54596d149dd6a2582c09179e2c3682574a2413d88be939ed6adc039413f6`
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
# Tue, 16 Apr 2019 22:38:15 GMT
ARG MAVEN_VERSION=3.6.1
# Tue, 16 Apr 2019 22:38:15 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Apr 2019 22:38:15 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Tue, 16 Apr 2019 22:38:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Tue, 16 Apr 2019 22:38:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Apr 2019 22:38:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Apr 2019 22:38:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Apr 2019 22:38:18 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Apr 2019 22:38:18 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Tue, 16 Apr 2019 22:38:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Apr 2019 22:38:19 GMT
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
	-	`sha256:4cac704b0d04ea7488d462835152ca6e858b5ea15ccdf87b8bd17ab22c2a9465`  
		Last Modified: Tue, 16 Apr 2019 22:42:51 GMT  
		Size: 9.2 MB (9161869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65c134629abf791517525dfc062618881321a4b7a7e8949c579ce95fd7e1b0e`  
		Last Modified: Tue, 16 Apr 2019 22:42:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fbce07719041b8f3e98f9118ff243d4f478835f0bd08ac3d768c1ead87ce58`  
		Last Modified: Tue, 16 Apr 2019 22:42:50 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

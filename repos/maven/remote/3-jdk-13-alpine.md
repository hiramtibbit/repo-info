## `maven:3-jdk-13-alpine`

```console
$ docker pull maven@sha256:ccfb6aeaa7acf7a01b2741b5f868fbc188b21c2d0597d2ed7dc6a070f2d28db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-13-alpine` - linux; amd64

```console
$ docker pull maven@sha256:6e2af2c79455cb05e67d51bf878ccf54965ab90558f61182d6cc7b153d49f986
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211548255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafe1a6873e6309b54dd2fe9e0f36d246724601e12590ad78851ca45a316993c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 03 Jan 2019 23:22:37 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Thu, 03 Jan 2019 23:22:37 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Jan 2019 23:22:37 GMT
ENV JAVA_VERSION=13-ea+1
# Thu, 03 Jan 2019 23:22:38 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/1/binaries/openjdk-13-ea+1_linux-x64-musl_bin.tar.gz
# Thu, 03 Jan 2019 23:22:38 GMT
ENV JAVA_SHA256=ce179bb08dff9980a7cca20df1b87b9556c5c71f3cf2fefbcf31d9bfa25b1804
# Thu, 03 Jan 2019 23:24:02 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 03 Jan 2019 23:24:02 GMT
CMD ["jshell"]
# Wed, 09 Jan 2019 22:20:00 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 09 Jan 2019 22:21:06 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 09 Jan 2019 22:21:07 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Jan 2019 22:21:07 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 09 Jan 2019 22:21:07 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 09 Jan 2019 22:21:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 09 Jan 2019 22:21:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Jan 2019 22:21:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Jan 2019 22:21:10 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 09 Jan 2019 22:21:10 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 09 Jan 2019 22:21:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Jan 2019 22:21:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75b3c089b6d212f09b475ec703098b32f4ea4b0f2f0b7967832edeaa77d4f10`  
		Last Modified: Thu, 03 Jan 2019 23:27:17 GMT  
		Size: 197.8 MB (197815105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e4e51ae11caf6391f2681bb5ded36c80c71736b4fdc8fbb240781178e42be9`  
		Last Modified: Wed, 09 Jan 2019 22:24:12 GMT  
		Size: 2.4 MB (2437095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e855154c87d832730b43e1d0c9397bbfe2f13a072b1d177e48c166dff16b6`  
		Last Modified: Wed, 09 Jan 2019 22:24:12 GMT  
		Size: 9.1 MB (9087924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32effd0fb26041ea583b865772e989947292456423cf17478acdb6eca7631ede`  
		Last Modified: Wed, 09 Jan 2019 22:24:11 GMT  
		Size: 749.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f442b10ae9a102b789294ef289b3a384e2a08dfd7bffba73b62924ca820b6ed3`  
		Last Modified: Wed, 09 Jan 2019 22:24:11 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

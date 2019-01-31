## `maven:3-jdk-13-alpine`

```console
$ docker pull maven@sha256:b4c847d55c6a87eec6acb988d58b7401971814cabece0d00a092f22b38e8bd6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-jdk-13-alpine` - linux; amd64

```console
$ docker pull maven@sha256:e35a5f2b21aa4f13c96811ba8c429dbf131c12007cf136570a2d9b9fc6e35472
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211422008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75c51d80e91ee059bfc4ad6e9e6cf2f1c7009611b90dc06999304875e47af595`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:38:23 GMT
ENV JAVA_HOME=/opt/openjdk-13
# Thu, 31 Jan 2019 02:38:23 GMT
ENV PATH=/opt/openjdk-13/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 02:38:23 GMT
ENV JAVA_VERSION=13-ea+5
# Thu, 31 Jan 2019 02:38:23 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/alpine/5/binaries/openjdk-13-ea+5_linux-x64-musl_bin.tar.gz
# Thu, 31 Jan 2019 02:38:23 GMT
ENV JAVA_SHA256=277c4238ac2c7c8e1d331ff87f851fefe051c9503e3e030fbdaec40dbff89529
# Thu, 31 Jan 2019 02:39:58 GMT
RUN set -eux; 		wget -O /openjdk.tgz "$JAVA_URL"; 	echo "$JAVA_SHA256 */openjdk.tgz" | sha256sum -c -; 	mkdir -p "$JAVA_HOME"; 	tar --extract --file /openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm /openjdk.tgz; 		java -Xshare:dump; 		java --version; 	javac --version
# Thu, 31 Jan 2019 02:39:58 GMT
CMD ["jshell"]
# Thu, 31 Jan 2019 03:24:21 GMT
RUN apk add --no-cache curl tar bash procps
# Thu, 31 Jan 2019 03:24:22 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 31 Jan 2019 03:24:22 GMT
ARG USER_HOME_DIR=/root
# Thu, 31 Jan 2019 03:24:22 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 31 Jan 2019 03:24:22 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 31 Jan 2019 03:24:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 31 Jan 2019 03:24:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 31 Jan 2019 03:24:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 31 Jan 2019 03:24:25 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 31 Jan 2019 03:24:25 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 31 Jan 2019 03:24:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 31 Jan 2019 03:24:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438a7199c60c93f109c957d51abdfb6a162d676b0f17debbf69150c36ff4332a`  
		Last Modified: Thu, 31 Jan 2019 02:44:39 GMT  
		Size: 197.7 MB (197682421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038563e9cf1cb6889c2ee7818d6a5fcaa20e342c0bff97a26b98a093e6845399`  
		Last Modified: Thu, 31 Jan 2019 03:25:46 GMT  
		Size: 2.4 MB (2443516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f9b9201ce8998866cabff115945c2472d97d4c2baa6690faf50a0f212a9f0e`  
		Last Modified: Thu, 31 Jan 2019 03:25:46 GMT  
		Size: 9.1 MB (9087928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc935331fd6462ddf0d0daa375050a214c5307b4992e14f6b3fe33d299a4f61`  
		Last Modified: Thu, 31 Jan 2019 03:25:45 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be22f79828c6d4f403282ac152a8f09dfd39f7d0c19e21ec66031966d989356`  
		Last Modified: Thu, 31 Jan 2019 03:25:45 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

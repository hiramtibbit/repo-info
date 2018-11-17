## `maven:slim`

```console
$ docker pull maven@sha256:24b2b717040b6d98098f92a8cc08c29e04ee7775eba878cac8c6077455c015ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `maven:slim` - linux; amd64

```console
$ docker pull maven@sha256:77e1cf8be9f11dcb7d4ead90549f7c02c62d2ea8fa62067646c37c2b4f40fde7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103723906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc214b652aa35b9c4099ff67e6175befb9386be6a657cf8e6bbdbd9e37bb91e2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:27:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:27:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:27:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:27:10 GMT
ENV JAVA_VERSION=8u181
# Mon, 29 Oct 2018 23:29:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:29:46 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:30:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:30:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 02 Nov 2018 22:26:27 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 02 Nov 2018 22:26:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Nov 2018 22:26:27 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 02 Nov 2018 22:26:27 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 02 Nov 2018 22:26:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:26:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Nov 2018 22:26:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Nov 2018 22:26:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 02 Nov 2018 22:26:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 02 Nov 2018 22:26:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Nov 2018 22:26:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c48fea920808538de92047d2615ee465bb0461b3a9c7030e22784400268ffc`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 454.8 KB (454840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beeeb05aa4653b87a6fa2268a20c197222c3223c01f5e20552ffaab449b6994`  
		Last Modified: Tue, 16 Oct 2018 05:56:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cf2782bd40eebe1d10c7efbde028e6c9321cd49331f11be5354633b0424a88`  
		Last Modified: Tue, 16 Oct 2018 05:56:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c36b48cf1e371776a9e2d07b042373463ffbf2af7f0e5007df73bb426de33`  
		Last Modified: Mon, 29 Oct 2018 23:37:26 GMT  
		Size: 67.5 MB (67495071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425e838cd2fa8dcd9e00d2f53da4aea1f7982283b1640c3697bc50ba7ea8bba7`  
		Last Modified: Mon, 29 Oct 2018 23:37:11 GMT  
		Size: 246.7 KB (246685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e25b515cabc0a4ebdc277535863af4a6505cfdf76d8f5c27b2c711d11cd71ed`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 4.0 MB (3951856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60fc97111fbcd38b136f759f12edbeb7a296a7fca7be86c51b5c248ea0fecd78`  
		Last Modified: Fri, 02 Nov 2018 22:39:29 GMT  
		Size: 9.1 MB (9087925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258a420bc5e72cb8b99584d684ada58b7b65d6487840b023057efa8a63e87598`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39237dcb7b5496c0b346b74e7891849346563d6541b11a19a6987ee06e7073b`  
		Last Modified: Fri, 02 Nov 2018 22:39:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:6f1b2511704d6bfa2a14458cc9a11e0bae08b00436843cf88ed444724c5c0f03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90309838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3edf4a1f047874c1bea93df9ea021821e0e2bace6e4788e1a587f2a4c13570`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Oct 2018 08:55:22 GMT
ADD file:8f2148adabc29587e17b50138f305f39e94e0e2bd9211a9f913fef56013ac35a in / 
# Tue, 16 Oct 2018 08:55:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:13:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:13:35 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:13:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:13:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:13:37 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:13:40 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:03:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:03:44 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:04:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:04:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 03 Nov 2018 08:52:12 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 03 Nov 2018 08:52:13 GMT
ARG USER_HOME_DIR=/root
# Sat, 03 Nov 2018 08:52:13 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 03 Nov 2018 08:52:14 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 03 Nov 2018 08:52:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 03 Nov 2018 08:52:40 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 03 Nov 2018 08:52:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 03 Nov 2018 08:52:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 03 Nov 2018 08:52:42 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 03 Nov 2018 08:52:42 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 03 Nov 2018 08:52:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 03 Nov 2018 08:52:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b7ffdf9817f718c84be550e8edf757070396d69165fa729c6ddd4e775428eb2`  
		Last Modified: Tue, 16 Oct 2018 09:04:44 GMT  
		Size: 21.2 MB (21162965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a37ecb314e4fc3bb5f9abc23bfb660388e8e8552bd586a01b41b77fc64798e`  
		Last Modified: Tue, 16 Oct 2018 09:25:59 GMT  
		Size: 447.7 KB (447675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d72cd2bb07250acf0f22d065e542f62dfce9e7a7d5886559a1c82091c1f8f2d`  
		Last Modified: Tue, 16 Oct 2018 09:25:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4071c2b551e55bc41e6824664d8598a78ccf4140096edab7d707825c128cf5c`  
		Last Modified: Tue, 16 Oct 2018 09:25:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f357af097be507790b608decc08b06b5859a889dffc3608e91e8f73b7d3cc3e9`  
		Last Modified: Tue, 30 Oct 2018 10:09:59 GMT  
		Size: 55.9 MB (55920645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e36b6081666e17ea7178f41714c5a956a702eb3b9a5f3fbe28f4693e4a93b0`  
		Last Modified: Tue, 30 Oct 2018 10:09:42 GMT  
		Size: 246.7 KB (246749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b64fa6ac3f5d26e78aa746dfc95450871bee5008196e1c9cd59419961a6cbfc`  
		Last Modified: Sat, 03 Nov 2018 08:56:22 GMT  
		Size: 3.4 MB (3442345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b293d5e5433b233814af6a2b51b61f7f3ed58ec870157d752e168d4a010058b`  
		Last Modified: Sat, 03 Nov 2018 08:56:22 GMT  
		Size: 9.1 MB (9087965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5e072950c7c0ca993e49dd3217ad85bcb9266520abeccf195bf86a6f18e36a`  
		Last Modified: Sat, 03 Nov 2018 08:56:21 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a835016b6ec6b01af27819faeba8cf4d56e3cb09ea128bc7555b6958e04fe3cd`  
		Last Modified: Sat, 03 Nov 2018 08:56:21 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:d3e1b661a70297bb9a8222160d98b19da48a649013db1c58f7b6fc6d98c5abf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90480274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95da37cc8be33cdef18b5801d27a56436d873c91fda3e8c09e92b9d9fa4b9844`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 01:50:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 01:50:11 GMT
ENV LANG=C.UTF-8
# Tue, 27 Mar 2018 01:50:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Mar 2018 01:50:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 01:53:09 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 01:53:10 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 01:53:10 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 01:53:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 01:53:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 01:53:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 03 Nov 2018 12:02:59 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 03 Nov 2018 12:02:59 GMT
ARG USER_HOME_DIR=/root
# Sat, 03 Nov 2018 12:03:00 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 03 Nov 2018 12:03:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 03 Nov 2018 12:03:17 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 03 Nov 2018 12:03:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 03 Nov 2018 12:03:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 03 Nov 2018 12:03:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 03 Nov 2018 12:03:26 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 03 Nov 2018 12:03:26 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 03 Nov 2018 12:03:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 03 Nov 2018 12:03:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b006c16d8c81f9d03b541fa686cb57f40818f1d13ca2a326b7685a357d63e5`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 447.7 KB (447679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4c60102a2d43ceb83f32f54bc9fc75f477a8b3b7b43521e705bca7293161f6`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b290902da6536cde53ecb48ed3327fcebd41dd015833f9822475ef20d500ef85`  
		Last Modified: Tue, 27 Mar 2018 02:13:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7a8f49bb9739647a90c2b283f2dddbb67e1363d20bc02afa973e221d2cb398`  
		Last Modified: Tue, 27 Mar 2018 02:15:42 GMT  
		Size: 56.1 MB (56061983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b662a98e0b944b59df2e43fea315c35651e6a6b17941cc68a3475e550b88f5b6`  
		Last Modified: Tue, 27 Mar 2018 02:15:27 GMT  
		Size: 272.2 KB (272191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7543618bc99830b0074ce813124371d15f2dce3d769a09ecb76a9de0da44d15`  
		Last Modified: Sat, 03 Nov 2018 12:07:05 GMT  
		Size: 3.4 MB (3444004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b35ad7e1686aaa73574ffd83ecc81d4c6c22d948f8301e20b0ae7510f98c21`  
		Last Modified: Sat, 03 Nov 2018 12:07:06 GMT  
		Size: 9.1 MB (9087966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3ebf864c6a82d10ca5192acc909ee33c11c4c5a9eb8e7cf1a6261ba29719c0`  
		Last Modified: Sat, 03 Nov 2018 12:07:04 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af19d5a8ff684c53a117b078e41e471f6d88b2eabe7e8eaaac8c9ff18d14500f`  
		Last Modified: Sat, 03 Nov 2018 12:07:04 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:9931ab7c8247fd56f81bd31e16a8bafb162ded5a88ec02bb9eaeaadad75620a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90825732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3bbfa405a3b7e1003824c0cf92f65749eef1b54ec66a4d03f4106ed7be25b5d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:16:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:16:12 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:16:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:16:16 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:16:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:16:17 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 09:05:28 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 09:05:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 09:06:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 09:07:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 03 Nov 2018 09:01:11 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 03 Nov 2018 09:01:12 GMT
ARG USER_HOME_DIR=/root
# Sat, 03 Nov 2018 09:01:13 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 03 Nov 2018 09:01:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 03 Nov 2018 09:01:41 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 03 Nov 2018 09:01:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 03 Nov 2018 09:02:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 03 Nov 2018 09:02:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 03 Nov 2018 09:02:03 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 03 Nov 2018 09:02:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 03 Nov 2018 09:02:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 03 Nov 2018 09:02:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7324d8335882a29fe8c0b3303f713c5dd3588ed146a85f7f92a197d97496f414`  
		Last Modified: Tue, 16 Oct 2018 09:31:31 GMT  
		Size: 440.9 KB (440859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18813557b28b8d4195cf501751c81b61df21e01bc189f1491b03c907cf4c0d5`  
		Last Modified: Tue, 16 Oct 2018 09:31:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a9482aee914f7b29117d12b2deab0e7df6413b6fb4cdb5eee6a61017f7811`  
		Last Modified: Tue, 16 Oct 2018 09:31:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05b1690da890ff114c8e3e1f07d120448517fc1061a0ba2ae6af3fbc201f401`  
		Last Modified: Tue, 30 Oct 2018 09:21:29 GMT  
		Size: 57.3 MB (57337507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9675a1ab1b81fd4ad903a259c118ef5932e62d79b549f99f22dd7b6c49aa42f4`  
		Last Modified: Tue, 30 Oct 2018 09:20:58 GMT  
		Size: 246.7 KB (246666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74c2ef40fa299bc9e85bfaf04bf2a97a376c69d53c79afbf2794247ff46c864`  
		Last Modified: Sat, 03 Nov 2018 09:10:28 GMT  
		Size: 3.4 MB (3379691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9318836d141458ed1614de0a6e2fc7c6db0e0732e0e7263b689df2d48f941d81`  
		Last Modified: Sat, 03 Nov 2018 09:10:28 GMT  
		Size: 9.1 MB (9087928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b972dab29aba9d44a6967655e43a80edac1210f876944a38173731d71e96d813`  
		Last Modified: Sat, 03 Nov 2018 09:10:27 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82465f4c5ec79a73b52209f7fdfe69b9de7f3018f945eac22a62ef1db5ad5cbd`  
		Last Modified: Sat, 03 Nov 2018 09:10:26 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; 386

```console
$ docker pull maven@sha256:5bbf6b1151bc8e84478f05e07c73ffb087f09d80f50877df4d7f2d5181df2685
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103512520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244f57e58184e507131d52d362fac15f3702e0baaba0ae29b3e868fa7f038616`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Oct 2018 10:49:05 GMT
ADD file:a71ef0e9adb528ae2dc5ca3395654522c23762d8936a4902378c6749bb357582 in / 
# Tue, 16 Oct 2018 10:49:05 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:33:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:33:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:33:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:33:08 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:33:08 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:33:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 11:08:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 11:08:54 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 11:09:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 11:09:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 03 Nov 2018 11:06:15 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 03 Nov 2018 11:06:15 GMT
ARG USER_HOME_DIR=/root
# Sat, 03 Nov 2018 11:06:16 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 03 Nov 2018 11:06:16 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 03 Nov 2018 11:06:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 03 Nov 2018 11:06:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 03 Nov 2018 11:06:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 03 Nov 2018 11:06:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 03 Nov 2018 11:06:28 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 03 Nov 2018 11:06:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 03 Nov 2018 11:06:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 03 Nov 2018 11:06:29 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2b7bcb618c4033f37486fd700e6d0debf2260935f888a192119c41eaddd29978`  
		Last Modified: Tue, 16 Oct 2018 11:06:15 GMT  
		Size: 23.1 MB (23126605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b9eebfdcdc50c2fc015902acabb5b081483ac42de35903ca5e8dc691b9d10e`  
		Last Modified: Tue, 16 Oct 2018 11:52:02 GMT  
		Size: 463.5 KB (463507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27881e30f22216eb10b6e36a1dc630790c4d1699785cf5ad4d23e7895ab0e21`  
		Last Modified: Tue, 16 Oct 2018 11:52:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077465a4cf36ea808537e9372e194ceafe0cb3dbaa47220476866c29545c89c8`  
		Last Modified: Tue, 16 Oct 2018 11:52:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fafa172f728e571b850c391ec2c1e1a7ff01447f9572d61b1efeec1e3450a89`  
		Last Modified: Tue, 30 Oct 2018 11:14:20 GMT  
		Size: 66.7 MB (66712381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaee5fea14f73087d66591f44002f5a3132c29100e0c5eb7713ac18e856f70ad`  
		Last Modified: Tue, 30 Oct 2018 11:14:07 GMT  
		Size: 246.7 KB (246687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de4ef25d9351229f4115504bc7cac30f747ec2431962f037f23931831dd5020`  
		Last Modified: Sat, 03 Nov 2018 11:12:45 GMT  
		Size: 3.9 MB (3873927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218f97f16564454029837b273b6b6eca92b1eb530f5829db6bafd0ba65bfeb56`  
		Last Modified: Sat, 03 Nov 2018 11:12:45 GMT  
		Size: 9.1 MB (9087921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba6592ffa78a15ec7a5778258d2d6c11eea998ae6ad3f494f39a009092bddff`  
		Last Modified: Sat, 03 Nov 2018 11:12:44 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77d9e005aeb539237644df407b2ed2aa09629af3d4a33d73ba1cb7040e7944a`  
		Last Modified: Sat, 03 Nov 2018 11:12:44 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; ppc64le

```console
$ docker pull maven@sha256:638c3e9c06d20658ef4f9f79e258219c4d7caf8a0a315ba82affbfc0764c0acb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94036388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597e97561f6e075dd541448945345d4dfd573a1d0ca8dd43c25ee3c73020c6f6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 22:11:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:11:41 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:11:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 22:11:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 22:11:47 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 22:11:48 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 22:11:48 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 22:11:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 22:12:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 22:13:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 06:15:22 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 17 Nov 2018 06:15:24 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Nov 2018 06:15:24 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 17 Nov 2018 06:15:25 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 17 Nov 2018 06:15:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:16:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 17 Nov 2018 06:16:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Nov 2018 06:16:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Nov 2018 06:16:03 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 17 Nov 2018 06:16:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 17 Nov 2018 06:16:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Nov 2018 06:16:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4afa5814d1a6b68fcdc7af12ef2fb2e6f8776d66c8deb23ca45c4577c7377`  
		Last Modified: Fri, 16 Nov 2018 22:50:49 GMT  
		Size: 449.8 KB (449757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f374edcd3118d2ac0f97ab11ef65aab9ea9a45af261412d47d94fb07d75e82e`  
		Last Modified: Fri, 16 Nov 2018 22:50:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68e4c4957a701e3624720cf48efb880aa7d40694f94f872dd918e8e6a3de5c6`  
		Last Modified: Fri, 16 Nov 2018 22:50:49 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a112493496a41c2468ac5c73aae7637508c4bb8f0a5565af535bc1515f589a`  
		Last Modified: Fri, 16 Nov 2018 22:51:07 GMT  
		Size: 57.9 MB (57856958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51986d5f64298ce7143f055a6257d9acb9d60280d887a75e1b4e88642c7e0e89`  
		Last Modified: Fri, 16 Nov 2018 22:50:49 GMT  
		Size: 246.7 KB (246715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3c6e58e1d92e6c03c8c6ea3f9cf225c0ed22bb190f71131700cf8b4663eb3f`  
		Last Modified: Sat, 17 Nov 2018 06:21:24 GMT  
		Size: 3.7 MB (3652797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e832d33c6fb1ae74523031b92a864e756865823aee2c0c037b39d46755960d`  
		Last Modified: Sat, 17 Nov 2018 06:21:24 GMT  
		Size: 9.1 MB (9087955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d9d53e4ad937900a9200d123217e6c35efd67caea8696a392ea6ba5a789e9d`  
		Last Modified: Sat, 17 Nov 2018 06:21:22 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1e92510f5e8909fa51657c0bac90bfb15d31a43d073618ac5c629bb99af43e`  
		Last Modified: Sat, 17 Nov 2018 06:21:22 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; s390x

```console
$ docker pull maven@sha256:e04560754f6b3ce2af0bf23af5fac4904c56f9ff231ed3d2344c64fe56118926
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92902901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d13ae8f420955228bd0142cb75ce499f4b877368c7bd4841cb9acbeb76f2f298`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:54:05 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 20:54:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 20:54:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 20:54:09 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 20:54:09 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 20:54:12 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 20:54:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 20:54:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 20:54:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:22:21 GMT
ARG MAVEN_VERSION=3.6.0
# Sat, 17 Nov 2018 07:22:21 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Nov 2018 07:22:21 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Sat, 17 Nov 2018 07:22:22 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Sat, 17 Nov 2018 07:22:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:22:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 17 Nov 2018 07:22:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Nov 2018 07:22:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Nov 2018 07:22:33 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 17 Nov 2018 07:22:33 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 17 Nov 2018 07:22:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Nov 2018 07:22:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d91749347b96136484261ecd380323abe2a6e1239b2fc43f11ac5b40645a54`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 465.7 KB (465732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b17441b229bdf6d8137039af83db434911ea884c98bf311a515910007f282f`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6480ba75456ebba63a18eb0020102f636815ca680c262e5e090de03dff12dcef`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9487ba7e9f84c2718183e65997f0d6fcc3d701f3503749ce2993f6e316c1029`  
		Last Modified: Fri, 16 Nov 2018 21:11:10 GMT  
		Size: 57.0 MB (57015362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5be88ac447675bf69867d69d1c097378545ebdf709496d20ed50cf368862e07`  
		Last Modified: Fri, 16 Nov 2018 21:10:56 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2c6585de7e45f31299de5568cfa184f646af3a853c5e449970d248eec748dc`  
		Last Modified: Sat, 17 Nov 2018 07:24:13 GMT  
		Size: 3.8 MB (3750973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989a0a737f925a2ea7edfc527f0ed77184ec0941675bd2bb23bf59c12d51ddd6`  
		Last Modified: Sat, 17 Nov 2018 07:24:12 GMT  
		Size: 9.1 MB (9087929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63835e98869537ed07f6259ef854d9fad051b16c4a811072cd636ca65d72ec5`  
		Last Modified: Sat, 17 Nov 2018 07:24:12 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a9a379224e1a2dc6a985940e5e563cbd4e77f2aae6d9ad4bfdb38863804691`  
		Last Modified: Sat, 17 Nov 2018 07:24:12 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

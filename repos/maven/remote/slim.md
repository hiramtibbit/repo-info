## `maven:slim`

```console
$ docker pull maven@sha256:ea3f36c466bae8b13f6043593c39cc799245a0d2afffb89caf17d7f429e9d709
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
$ docker pull maven@sha256:db8d63df1d95e2ae398938b736e751b8ba2c1def93bfcc482a8bd4bfdb20729e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307575311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee166833e498cb17f89bf66b3c883cc6f44480d528592f922f9d0ca950e81e0e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:13:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:13:29 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 22 Jan 2019 21:13:29 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:13:31 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:13:31 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:13:32 GMT
ENV JAVA_VERSION=11.0.1
# Tue, 22 Jan 2019 21:13:32 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Tue, 22 Jan 2019 21:14:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 22 Jan 2019 21:14:30 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 06:46:09 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 06:46:09 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 06:46:10 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 06:46:10 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 06:46:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 06:46:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Wed, 23 Jan 2019 06:46:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 06:46:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 06:46:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 06:46:27 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 06:46:27 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 06:46:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 06:46:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf4e4a3f53407278434f4de7f127f62c89a691ff5862fbdd936a2b8aa3d3e54`  
		Last Modified: Tue, 22 Jan 2019 21:39:35 GMT  
		Size: 454.9 KB (454862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9d21aca48025a2d2b48c19e6b5c17e1ac8b087599024c8c6eb030ab796c14e`  
		Last Modified: Tue, 22 Jan 2019 21:39:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a126fb8ec285a7d09f65c30e3efe29c34bf2a3d6693b6a4f085bef95dff38d6`  
		Last Modified: Tue, 22 Jan 2019 21:39:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1904df3245457cd0042438c35e356f8ac4d2944468a88d16a60ab2535089b73f`  
		Last Modified: Tue, 22 Jan 2019 21:39:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c216136e0ca316f5a42f90b9222985cf8df1cfa2409f3422e3122997428f441`  
		Last Modified: Tue, 22 Jan 2019 21:39:59 GMT  
		Size: 271.6 MB (271569412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afebcd54cb8d7c31dc8dbbf761cbe341b6af0abc16d3d0eeb11f92aade793f7e`  
		Last Modified: Wed, 23 Jan 2019 06:50:32 GMT  
		Size: 4.0 MB (3960459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71235795d2b05ce6cc20a925b1eb57f557cf407ed7e257cfa76a9fdd76d1f9c`  
		Last Modified: Wed, 23 Jan 2019 06:50:31 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231ae072124abed07c9a3303357316d6f71bf999b5e7b35ab3e150be5846e0e2`  
		Last Modified: Wed, 23 Jan 2019 06:50:32 GMT  
		Size: 9.1 MB (9087931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bc66b071e7dc825a9ce5d4d56ae7f02f23ac6a055ad006386cb8b28576c6a1`  
		Last Modified: Wed, 23 Jan 2019 06:50:31 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644ac02ef356d2f482a7bb09711080c00d8c7ba90cd0b85520e784ec7b3dd51a`  
		Last Modified: Wed, 23 Jan 2019 06:50:31 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:d2b9f8539be069e06b3ff70138b21c328076bf354658cd490e9160b257244a3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243225814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14a5f8b045a3530aa7abcef5cbf5502b109e2131578677db4d27b64c4e54520`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:42:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:42:27 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 12:42:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:42:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:42:30 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:42:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:42:31 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 12:42:31 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 12:44:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 12:44:51 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 16:35:57 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 16:35:57 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 16:35:58 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 16:35:58 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 16:36:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:36:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Wed, 23 Jan 2019 16:36:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 16:36:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 16:36:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 16:36:33 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 16:36:34 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 16:36:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 16:36:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0448a0274fb127b6c698658b3915c7c94f835e73f7b8698a2a288bbed1965c95`  
		Last Modified: Wed, 23 Jan 2019 13:06:49 GMT  
		Size: 447.8 KB (447751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4562147480dcf01a40da0fae5b80946c006abd1e2264dd32efa7ad67ad09914`  
		Last Modified: Wed, 23 Jan 2019 13:06:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e63797b15e650738a91e87c4d6b6537f1c88e25a2459df35068d664eec5ccb`  
		Last Modified: Wed, 23 Jan 2019 13:06:49 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55eabf13ce0ab6bf7c0693324a78df3ae1258329c8e383d9e736d8785e8d0f4`  
		Last Modified: Wed, 23 Jan 2019 13:06:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d3ac6467f44af06f3ae630e52cadaa4603077d93c6f58d14de6dfb06a238c5`  
		Last Modified: Wed, 23 Jan 2019 13:07:26 GMT  
		Size: 209.1 MB (209057113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe6c92460c8cf6a242adf9b2850703f491593c8f01ba8c7895ee3858c095e02`  
		Last Modified: Wed, 23 Jan 2019 16:39:59 GMT  
		Size: 3.4 MB (3449222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05dd91b8c873eb4f06be7057ea81f6314e8900c38894eeeecd18bee51505d62`  
		Last Modified: Wed, 23 Jan 2019 16:39:58 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4857f570289513caf11282998d21d7002af59aa2f84c19ef93f72435a7a65d53`  
		Last Modified: Wed, 23 Jan 2019 16:40:00 GMT  
		Size: 9.1 MB (9087955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2458dfd8ff6bceffa7302b45d01355c87299f4b519ad2681aab8c14e65eaa7`  
		Last Modified: Wed, 23 Jan 2019 16:39:58 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc92c77cf57aa9cc34b69f80ca8fc9973084fa287b0c670dab8b49a2fc27e98`  
		Last Modified: Wed, 23 Jan 2019 16:39:58 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:619e56d94ea4783b89510234db484cd5faa7817bf44e05163d1247dcda33ec6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.5 MB (260451672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d894ea7df4c21a2fcf640fda741c1030a5e5b05947fac8b6ee31fa1b29ddd3f1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:38:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:38:18 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 14:38:19 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:38:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:38:27 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:38:27 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 14:38:28 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 14:38:29 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 14:39:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 14:39:26 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 19:06:12 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 19:06:12 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 19:06:13 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 19:06:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 19:06:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:06:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Wed, 23 Jan 2019 19:06:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 19:06:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 19:06:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 19:06:36 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 19:06:37 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 19:06:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 19:06:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c7ddd72c1d6ab7cfac2d0836b5585cc06515862be46bdc9ea5a3d6cf9a2451`  
		Last Modified: Wed, 23 Jan 2019 15:05:43 GMT  
		Size: 430.6 KB (430613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efa67a94dc181684e6c68d84d7eb680128cc666dbd9779d8ff063c66a2c66ce`  
		Last Modified: Wed, 23 Jan 2019 15:05:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1eabf1a5f315975ccac5b1e42dbe7ec5343f042e7ff937bf5167725603b46d`  
		Last Modified: Wed, 23 Jan 2019 15:05:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b6e38d69f57e4bd1c42274960e14c985311f6fff50fc85550fbcbd262ccec`  
		Last Modified: Wed, 23 Jan 2019 15:05:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce923418064c0cc1f998527a5c8907f63a562bb8b1b9ab4907a81f1b18227bc0`  
		Last Modified: Wed, 23 Jan 2019 15:06:23 GMT  
		Size: 228.4 MB (228381839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a12d316e9fee2900de977ba48a2fbe3abd26b6dddbe67d73b051a125a9489db`  
		Last Modified: Wed, 23 Jan 2019 19:09:21 GMT  
		Size: 3.3 MB (3259021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df842dbd2d63069caf693bb6fd0a9c0f596a14e2b4ecfc6893b74a2407bd245`  
		Last Modified: Wed, 23 Jan 2019 19:09:19 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52a7bb5474ac7ad21619ffb9b02bef730f160785c463f8ed10f3c356c791f91`  
		Last Modified: Wed, 23 Jan 2019 19:09:21 GMT  
		Size: 9.1 MB (9087965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b39391a0d4898be3c0f882c561b9a2b22bbd1db12e9a5f3f087da7cf391b547`  
		Last Modified: Wed, 23 Jan 2019 19:09:19 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f2a7639165cb47b376d52c88efd92e82155e5766b770513af43331bf3ad5b3`  
		Last Modified: Wed, 23 Jan 2019 19:09:19 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:990a580a5b2c4acbd53100ea3de8fc9455fa4b2fa2db61a1a52f66535ca02a82
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281915974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d82707a880cb30ff904222f7d74788a236fb185567bf57de75193bf0081e10f2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 02:40:34 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Fri, 25 Jan 2019 02:40:35 GMT
ENV LANG=C.UTF-8
# Fri, 25 Jan 2019 02:40:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Jan 2019 02:40:41 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Jan 2019 02:40:44 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 25 Jan 2019 02:40:46 GMT
ENV JAVA_VERSION=11.0.1
# Fri, 25 Jan 2019 02:40:47 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Fri, 25 Jan 2019 02:44:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 25 Jan 2019 02:44:37 GMT
CMD ["jshell"]
# Fri, 25 Jan 2019 10:57:26 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 25 Jan 2019 10:57:26 GMT
ARG USER_HOME_DIR=/root
# Fri, 25 Jan 2019 10:57:27 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 25 Jan 2019 10:57:28 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 25 Jan 2019 10:57:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 10:58:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Fri, 25 Jan 2019 10:58:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 25 Jan 2019 10:58:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 25 Jan 2019 10:58:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 25 Jan 2019 10:58:12 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 25 Jan 2019 10:58:13 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 25 Jan 2019 10:58:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 25 Jan 2019 10:58:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76edf01497c9a4e831ad07bb27cbe0a56f58f853d7abf82120ad17cfd5d08be`  
		Last Modified: Fri, 25 Jan 2019 03:08:43 GMT  
		Size: 440.9 KB (440909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34b592703f05f6c7c3132f977ea52beb4b11ed3cb4ec5f8783943e909536b14`  
		Last Modified: Fri, 25 Jan 2019 03:08:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6465fe65a0dbcd78412409da1d2b918a80791e0d155448ddfebd6bd35087eb12`  
		Last Modified: Fri, 25 Jan 2019 03:08:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a25c412687b13b9982da665f6967d64c9642ed5b3911df5d8841fe5cbe88`  
		Last Modified: Fri, 25 Jan 2019 03:08:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ddac1235e9e3563e85482dd3617529d20b962339d1ae1102a986ad35f69421`  
		Last Modified: Fri, 25 Jan 2019 03:09:25 GMT  
		Size: 248.7 MB (248650183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c37c5f0dc89ed4ef78e00c032fbd395f725afd4f3677aff42ceca29d61aa68`  
		Last Modified: Fri, 25 Jan 2019 11:00:06 GMT  
		Size: 3.4 MB (3384835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f535c7854a15a9d66270bec13dac23bf61aa11dab425cc2aa24e2d7826142ec`  
		Last Modified: Fri, 25 Jan 2019 11:00:04 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a43ec34f2cced19cdfa249dc41ba6923886d4be453e6251d53ab006a26806e`  
		Last Modified: Fri, 25 Jan 2019 11:00:06 GMT  
		Size: 9.1 MB (9087922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325dd057c595a119f8330455a868d4e0edb9878c811b803f6e97f68515616c22`  
		Last Modified: Fri, 25 Jan 2019 11:00:04 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2017750116833d42d3908227b8e86356dc9e242fa8dc3732cb1087e2aab1a027`  
		Last Modified: Fri, 25 Jan 2019 11:00:04 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; 386

```console
$ docker pull maven@sha256:c899d03b97b6e173182cea30222ef165f31e18f1d37cf15073342da282a4b1db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.1 MB (370061262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bcbc7c1adca106cdc15e3dccdd12ce6021ba564e56115c97fce1b102ffc0d03`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:55:22 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 17:55:22 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:55:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 17:55:23 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 17:55:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 17:55:24 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 17:55:24 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 17:56:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 17:56:17 GMT
CMD ["jshell"]
# Thu, 24 Jan 2019 01:49:12 GMT
ARG MAVEN_VERSION=3.6.0
# Thu, 24 Jan 2019 01:49:13 GMT
ARG USER_HOME_DIR=/root
# Thu, 24 Jan 2019 01:49:13 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Thu, 24 Jan 2019 01:49:13 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Thu, 24 Jan 2019 01:49:21 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 01:49:22 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Thu, 24 Jan 2019 01:49:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 24 Jan 2019 01:49:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 24 Jan 2019 01:49:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 24 Jan 2019 01:49:25 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 24 Jan 2019 01:49:25 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Thu, 24 Jan 2019 01:49:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 24 Jan 2019 01:49:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce65d679f0c09f017a7a14ac8e4106ac49211945c1a5c56f91fde304a197df42`  
		Last Modified: Wed, 23 Jan 2019 18:24:59 GMT  
		Size: 463.6 KB (463558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61caefd00227eede44c926ff9640c641352d3a7b81fea5bcf1f40ea24dd5a6fc`  
		Last Modified: Wed, 23 Jan 2019 18:24:59 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b07f5d01504d3d9940243b99274d10217010042de006e78b0c133e26ac5575a`  
		Last Modified: Wed, 23 Jan 2019 18:24:59 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb2350aa4d1bb7cb1545b8d046b580cda9e6795978d9ddca3342915592439a8`  
		Last Modified: Wed, 23 Jan 2019 18:24:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad1914a771ae214436b10c0cc6595eac207624c90041042e0d4b0728309914a`  
		Last Modified: Wed, 23 Jan 2019 18:25:33 GMT  
		Size: 333.5 MB (333477496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f365d71f34a6a388eb102685b13e38364ad2e48a2eef4010cd4877f45d2e20c6`  
		Last Modified: Thu, 24 Jan 2019 01:54:00 GMT  
		Size: 3.9 MB (3883227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb33968301917a13a9374aeb3ea11d1f5d591f5484038afbb07b22548b303b23`  
		Last Modified: Thu, 24 Jan 2019 01:53:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764d457182c89f5c1d2ef783aaabc7e789fb5862589680025e74019aa95f67e5`  
		Last Modified: Thu, 24 Jan 2019 01:54:00 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5130c2846e02ae7e426b0eab6bc186cd3e9727905c928a6e360566005f8b953f`  
		Last Modified: Thu, 24 Jan 2019 01:53:59 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960a242c90e4462867664dbaae691abeb07dd7bd568a990f4253746ef3edd285`  
		Last Modified: Thu, 24 Jan 2019 01:53:59 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; ppc64le

```console
$ docker pull maven@sha256:f096a7a5414d58eb6f3dc9c3fdaa085a56ec3091527059135ae0e982b3ecd652
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.9 MB (274861770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a9af5f1322c337301b30790c929ba42081d4510bbaff509a12bdfea2f9520cf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:19:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:19:31 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 12:19:35 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:19:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:19:45 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:19:46 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 12:19:48 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 12:19:50 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 12:21:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 12:21:18 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 16:01:11 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 16:01:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 16:01:17 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 16:01:18 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 16:01:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:02:04 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Wed, 23 Jan 2019 16:02:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 16:02:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 16:02:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 16:02:14 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 16:02:15 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 16:02:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 16:02:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d96ccdc14a26f0f9430b22503ce06d0028bbdd769cd9a823ce26eab8def3fdc`  
		Last Modified: Wed, 23 Jan 2019 12:42:53 GMT  
		Size: 449.8 KB (449813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7fa173204e68003b4cecab44342e7c31360a78dd0fbd5a339964c57d957715`  
		Last Modified: Wed, 23 Jan 2019 12:42:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae1104baf044badd0f2c30d3290aeaacbebe7dd4b3927146ca776289bf3efb0`  
		Last Modified: Wed, 23 Jan 2019 12:42:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e704b266dfecff431badf2ca03ed4000106ab0abed3c4629a9ef0ea8334ed7`  
		Last Modified: Wed, 23 Jan 2019 12:42:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dbf054c0b3e1a6e6a48f5e378d6edbbb28dfff2061d4c2d59266af273825022`  
		Last Modified: Wed, 23 Jan 2019 12:43:25 GMT  
		Size: 238.9 MB (238911144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb5ad830dbe2725bc62467b74e6da4515a7f59b63da7b724d7743c0c6e7700d`  
		Last Modified: Wed, 23 Jan 2019 16:06:25 GMT  
		Size: 3.7 MB (3655604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfba757587f42fc06ba70ab6c30c455fc03336dd9d67e31a327a4fce6190602`  
		Last Modified: Wed, 23 Jan 2019 16:06:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b668d8f813e31d70c2b48c9d5557448802ffa47dd85a4789b8070d1d358c5f3`  
		Last Modified: Wed, 23 Jan 2019 16:06:25 GMT  
		Size: 9.1 MB (9087930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c5c73ba7b5b6ddb981f131a91da1ac37a77a5d8ade34f677483d4f14343620`  
		Last Modified: Wed, 23 Jan 2019 16:06:23 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77234ab499c29021531db9f6d3f92206825d868ab94b6d06c950c263238c2e41`  
		Last Modified: Wed, 23 Jan 2019 16:06:23 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; s390x

```console
$ docker pull maven@sha256:35240e8658fcbd57eabb55311c4ed87cb76f085579c9355cb3e473589c85a911
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274806601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de10588bf5a4f44af155311829083a6eba84bbaf2df5b67e54abd0b5f5323a4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:52:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:33 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 13:52:33 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:52:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 13:52:36 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 13:52:36 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 13:52:36 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 13:52:36 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 13:53:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 13:53:39 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 19:06:55 GMT
ARG MAVEN_VERSION=3.6.0
# Wed, 23 Jan 2019 19:06:56 GMT
ARG USER_HOME_DIR=/root
# Wed, 23 Jan 2019 19:06:56 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Wed, 23 Jan 2019 19:06:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Wed, 23 Jan 2019 19:07:07 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:07:08 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN ln -s /etc/java-11-openjdk /usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)/conf
# Wed, 23 Jan 2019 19:07:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 23 Jan 2019 19:07:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 23 Jan 2019 19:07:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 23 Jan 2019 19:07:13 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 23 Jan 2019 19:07:13 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 23 Jan 2019 19:07:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 23 Jan 2019 19:07:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac9c6d1fd006f717b1098b0d7f20cc9789857b7e45aeb4975a091bfa4ed1592`  
		Last Modified: Wed, 23 Jan 2019 13:59:47 GMT  
		Size: 465.8 KB (465766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e840a49863f206a566ee6f59525b5f36dbe15b592a3897593b3011145871e995`  
		Last Modified: Wed, 23 Jan 2019 13:59:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecbb3c4a3877e9f23d02ca99d64d1a14083929ba3b70a26436f6808b3cfa5da`  
		Last Modified: Wed, 23 Jan 2019 13:59:47 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f974ed95ef74b14c5cee274d16aa0ae2493cb940186f717a0826f965d8b0b019`  
		Last Modified: Wed, 23 Jan 2019 13:59:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c4c49d906889a25198ddd05f3491ae45b10575eedf47b3027dc4431cf78198`  
		Last Modified: Wed, 23 Jan 2019 14:00:05 GMT  
		Size: 239.1 MB (239139889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726b97c9cb25172197f726a7cbea54762299598dac93e55d7b52872f257cbc75`  
		Last Modified: Wed, 23 Jan 2019 19:09:30 GMT  
		Size: 3.8 MB (3757581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9baf1e377920706d1045ec4272dd74c895332e5ca257538a259f3e26e220cd`  
		Last Modified: Wed, 23 Jan 2019 19:09:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312e4ab846692011f6b957164d3242309128e22f6797ebc7ca151ac42f61e3b3`  
		Last Modified: Wed, 23 Jan 2019 19:09:30 GMT  
		Size: 9.1 MB (9087927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab09ab67e3ecbcd75b89c1f1b6e431c8bd32a8374d201ec9caf8efef8697d0`  
		Last Modified: Wed, 23 Jan 2019 19:09:28 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed192af342e5d429121dfa130fb8045453696625cacdc8913950b8783be02a5`  
		Last Modified: Wed, 23 Jan 2019 19:09:28 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

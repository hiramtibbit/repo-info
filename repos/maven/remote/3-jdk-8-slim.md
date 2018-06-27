## `maven:3-jdk-8-slim`

```console
$ docker pull maven@sha256:d306c5c3936df5164a8a071ef2248d765a6371518432237c34bee63f7d7c581b
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

### `maven:3-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:eb8857b04d7481c47436e1524cdf267c4f9556178e78a80c43811a3f346f40b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103692150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7825f346e86dc24a626bc8ee46224a575e5cdef2c01b814972ee52dd95439a80`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:29:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:29:08 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:29:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:29:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:29:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:29:10 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:29:10 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:29:11 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:29:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:29:44 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 06:06:58 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 27 Jun 2018 06:06:58 GMT
ARG USER_HOME_DIR=/root
# Wed, 27 Jun 2018 06:06:58 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 27 Jun 2018 06:06:58 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 27 Jun 2018 06:07:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 06:07:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 27 Jun 2018 06:07:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 27 Jun 2018 06:07:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 27 Jun 2018 06:07:13 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 27 Jun 2018 06:07:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 27 Jun 2018 06:07:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 27 Jun 2018 06:07:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70619f8ac7d8d30832d1ec95e08fb6d5d17d1d86d39dd8f018764e63c3f588`  
		Last Modified: Tue, 26 Jun 2018 23:50:42 GMT  
		Size: 454.8 KB (454842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959035743ee62348be1a940c042038c0304d1652d7c4d807fe7e6df899b700e0`  
		Last Modified: Tue, 26 Jun 2018 23:50:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db98f43f72929d9b60fa58b30adfefc8ddb6fc691e06283e0b9ba0769c72d17`  
		Last Modified: Tue, 26 Jun 2018 23:50:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0125f8b7b45a03041467fdc09b27aa97290854cacbbbeca69d7cb4f5effc094b`  
		Last Modified: Tue, 26 Jun 2018 23:51:01 GMT  
		Size: 67.5 MB (67525241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b101251de801db62634849463a4f26977353b45fca225a7e590662a476eba7fb`  
		Last Modified: Tue, 26 Jun 2018 23:50:41 GMT  
		Size: 272.1 KB (272117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63501e6876e3e5e43d550d67dfd9308acfaa734971e932baa87939065c43c324`  
		Last Modified: Wed, 27 Jun 2018 06:15:51 GMT  
		Size: 4.0 MB (3952281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d65f60c40500743cc56e49abe89a7b53e276bf983d3db18cff181eaa0cbb5ee`  
		Last Modified: Wed, 27 Jun 2018 06:15:51 GMT  
		Size: 9.0 MB (8989208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0f5f0bb47a9e251d975bd84ea9a62be14d59ba78e91793974edb5f68fe09c9`  
		Last Modified: Wed, 27 Jun 2018 06:15:49 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ae313c72a18688b91b92e955b8df84042931d2c97b038c7bd41af540da61c1`  
		Last Modified: Wed, 27 Jun 2018 06:15:49 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:89f9809f3c9ea3996242175361e98340dcc45ca33f2778c8a79ba9a771440405
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90213908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcda6077672954022532b8c84829b85e32a157269268066fd972746f242f627`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:34:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:34:37 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:34:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:34:41 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:34:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:34:42 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 12:34:42 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 12:34:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 12:35:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 12:35:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 14:59:55 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 27 Jun 2018 14:59:56 GMT
ARG USER_HOME_DIR=/root
# Wed, 27 Jun 2018 14:59:56 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 27 Jun 2018 14:59:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 27 Jun 2018 15:00:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:00:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 27 Jun 2018 15:00:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 27 Jun 2018 15:00:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 27 Jun 2018 15:00:45 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 27 Jun 2018 15:00:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 27 Jun 2018 15:00:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 27 Jun 2018 15:00:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf4041ca0a9d46e8ca473e39b754f0d76337a052965077e0bb6147633cfd7e4`  
		Last Modified: Wed, 27 Jun 2018 12:54:57 GMT  
		Size: 447.7 KB (447673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ba81e6d9e9058eabc6f1b3f7ae63406495ca484a6a084b13b9f7f92c0f59f1`  
		Last Modified: Wed, 27 Jun 2018 12:54:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f529b2393d747300b9e77063ee6a43f089f359d4b2bb0fce086f582fa3717c8`  
		Last Modified: Wed, 27 Jun 2018 12:54:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536b85fa77bd51e78d353a1b22166cd885cd5356b662ede7b013cdd78cff4cae`  
		Last Modified: Wed, 27 Jun 2018 12:55:11 GMT  
		Size: 55.9 MB (55883446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51d37d502da4395dc2424e2e19032ad2bb3a9bb0ce6608bb273c008cb23a42d`  
		Last Modified: Wed, 27 Jun 2018 12:54:57 GMT  
		Size: 272.2 KB (272181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9184f16abf7ebdcfc7df28099ccc565e3f60755e79280872d65483237f8e3fb2`  
		Last Modified: Wed, 27 Jun 2018 15:03:22 GMT  
		Size: 3.4 MB (3442595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2505056cfc139794d438ed96a4c44aeb6cb6148b79ca87469f3f5d2237ae48`  
		Last Modified: Wed, 27 Jun 2018 15:03:23 GMT  
		Size: 9.0 MB (8989234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a263ce07875c5194d91cbde573f821b90dc649b5e0f6b80bc8ebcbbbdbc509e4`  
		Last Modified: Wed, 27 Jun 2018 15:03:20 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc51ff5b47d12007a439b38cecee5812f6c8eb066fc47fefdb6f38eac0779105`  
		Last Modified: Wed, 27 Jun 2018 15:03:20 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:86dfc0692d5283498f52789fcbdc646f48926487e45e86c8d0978df6eee2a0c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267783077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c932bb01debfe766fd154b64a64a7b709b451c912bfb6eebc8b7a6c99aa69b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:14:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:02:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 13:02:21 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 13:02:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:02:24 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:02:25 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:02:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:03:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:03:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 23 Jun 2018 12:00:07 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 12:00:07 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 12:00:08 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 12:00:08 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 12:00:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 12:00:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 12:00:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 12:00:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 12:00:19 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 12:00:19 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 12:00:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 12:00:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10d0f9a54b8549a5831d24a81b301ee1e1112ba6045a85ab02050edbbeb9e96`  
		Last Modified: Sat, 05 May 2018 12:36:20 GMT  
		Size: 46.4 MB (46351195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cf2597c5534c6b8fa92e7c2ccefb5f8d61e783c3ee00f9a42f08acdd0732e0`  
		Last Modified: Sat, 05 May 2018 13:30:34 GMT  
		Size: 867.9 KB (867879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50a3154b114c80552aa6550bc5f76d6fc6922fb46c71c09723410e47c3a61f`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a276ab88cf860d6a3819c09c09c71b847abe2606d322863776761f5bb0267332`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a81ce76fdab6754bfcb98f674951b3eb2b338caf570a9df6a8afabaccdd438`  
		Last Modified: Sat, 05 May 2018 13:31:20 GMT  
		Size: 154.6 MB (154556031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16abac704ab259ff7bac79f8aa82dc45cae282ef903099a1c696bce2f0a91ab`  
		Last Modified: Sat, 05 May 2018 13:30:33 GMT  
		Size: 272.1 KB (272067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48958dbee1e39d1678ca22742a94e42f08aad4bd498d01bfecb97197cb4dda3c`  
		Last Modified: Sat, 23 Jun 2018 12:03:48 GMT  
		Size: 1.3 MB (1296121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3855fdfbaae2758611960f602bce1f41796d6503a798017d72615ebed67add7`  
		Last Modified: Sat, 23 Jun 2018 12:03:49 GMT  
		Size: 9.0 MB (8989243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d41433a1f83af7bd9fd7009eac106bc5ba327045c2ddb2beb668b16b66159a`  
		Last Modified: Sat, 23 Jun 2018 12:03:47 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015918434b46d8b9b095db2270549863401c997bfbb5e0d9abf1338e3b810217`  
		Last Modified: Sat, 23 Jun 2018 12:03:48 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:eee5852e76c95399819558454510f5a1a726b1fb98e8c673ab49ebd806cac783
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90731555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:148bdf731bde44d414d1bc2b56838f12bad40e0dda40b3c0a2c2e4ab58d84bba`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:35:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 10:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 10:35:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 10:35:33 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 10:35:35 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 10:35:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 10:35:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 10:38:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 10:38:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 18:31:22 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 27 Jun 2018 18:31:23 GMT
ARG USER_HOME_DIR=/root
# Wed, 27 Jun 2018 18:31:24 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 27 Jun 2018 18:31:25 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 27 Jun 2018 18:31:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 18:32:00 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 27 Jun 2018 18:32:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 27 Jun 2018 18:32:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 27 Jun 2018 18:32:03 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 27 Jun 2018 18:32:04 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 27 Jun 2018 18:32:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 27 Jun 2018 18:32:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c188af2663c2692b617929ecc379feec18f8c714a163e91ffefe4892b20ebe`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 440.8 KB (440827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bae1d6e46f95e052f094dc4f2dacf47cb7d307e2f57d0d521ef848ee9862f4`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469228b6cf78d13c8c9fad07633d71418ff610b9a6407eaf3af0bd4e6a59ab69`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455eea5a7e0c966f4cafb06633035c58e6af97f6d86d4c0063da25cb88b73104`  
		Last Modified: Wed, 27 Jun 2018 10:50:29 GMT  
		Size: 57.3 MB (57299655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb837725e7ff66a676b4e84649f5fa7c41168b2a12fbf9653814db3fb834e50`  
		Last Modified: Wed, 27 Jun 2018 10:50:12 GMT  
		Size: 272.1 KB (272113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67b45c22d1eb39ebb4b6c58dcb76e078d6475cd55651d75e09148d3526bce14`  
		Last Modified: Wed, 27 Jun 2018 18:33:50 GMT  
		Size: 3.4 MB (3380173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce2ce43bc0ad9fcf6efe60bffff94012992d87057c384ee04f2976ab2755771`  
		Last Modified: Wed, 27 Jun 2018 18:33:50 GMT  
		Size: 9.0 MB (8989221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6012d47888ca76358c9df5b1ae7b1969c41cad56e0ca357075fe3a2eac70f997`  
		Last Modified: Wed, 27 Jun 2018 18:33:49 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d57bda52be8c778f9485c3b45a2511192b4277cf5d5c75a6b843d7f50eb854b`  
		Last Modified: Wed, 27 Jun 2018 18:33:49 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; 386

```console
$ docker pull maven@sha256:92383d77014c41f8c5a7df30d67a75a4b16d5bd15c35e81fb2e04e20f9c9efc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103409459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db86a973020aba265649f5b605f4983b4f12ca1335572e2a6e8487a7cbeebfbe`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:14:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:14:33 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:14:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:14:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:14:36 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 15:14:36 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 15:14:36 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 15:14:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 15:15:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 15:15:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 17:13:44 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 27 Jun 2018 17:13:44 GMT
ARG USER_HOME_DIR=/root
# Wed, 27 Jun 2018 17:13:44 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 27 Jun 2018 17:13:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 27 Jun 2018 17:13:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:13:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 27 Jun 2018 17:13:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 27 Jun 2018 17:13:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 27 Jun 2018 17:13:59 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 27 Jun 2018 17:13:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 27 Jun 2018 17:14:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 27 Jun 2018 17:14:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf7f487754d69c6458537dd6a19ed49991ba093043ca5a37cb6b01ac586415f`  
		Last Modified: Wed, 27 Jun 2018 15:28:30 GMT  
		Size: 463.5 KB (463495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c60e2b319fe6cc1958f76d7f2fa2d982a3f2681283f6681172805207404a936`  
		Last Modified: Wed, 27 Jun 2018 15:28:30 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ae03f3d4451c49de540d77018d0b6c17b0a514a548984f1dab3c67371540ea`  
		Last Modified: Wed, 27 Jun 2018 15:28:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe627502cbc110f7c39d30a175e8833374c5eaf5790bdc876b6a3bc1ab8e054b`  
		Last Modified: Wed, 27 Jun 2018 15:28:50 GMT  
		Size: 66.7 MB (66668662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91d42a5d03a30989334eaa07714342d4b4f126ca27f92f62a1815a058a71a29`  
		Last Modified: Wed, 27 Jun 2018 15:28:29 GMT  
		Size: 272.1 KB (272116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf141b60b5207f201c531c5c1d87bc419863bd8c1ec7e242f1987ad9376033aa`  
		Last Modified: Wed, 27 Jun 2018 17:16:17 GMT  
		Size: 3.9 MB (3874368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1142d8402e53858866909d8254dcf5308e1f08e5b55b782ec2c9781d9dfc066`  
		Last Modified: Wed, 27 Jun 2018 17:16:17 GMT  
		Size: 9.0 MB (8989232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f2b472caf9d7875a96599b58ca15694d70a8cb384f88505b758f192b136e5d4`  
		Last Modified: Wed, 27 Jun 2018 17:16:15 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddbe7790bebc7ed254a2a7292a538326d4c0c55f55030cc0d9701e3b594150f`  
		Last Modified: Wed, 27 Jun 2018 17:16:15 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:62d634801ee9e6301468dbff45ec9043019128061af150a2b10a8b6021efb67c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93936514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99260b2cccaeb128ef4b95cb2a12824bf636a6095dc9d1b08b3e1641ed4bbf07`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:34:16 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:34:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 09:34:19 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 09:35:56 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 14:38:49 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 14:38:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 14:38:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:01:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:01:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 23 Jun 2018 08:22:45 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 08:22:47 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 08:22:48 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 08:22:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 08:23:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 08:23:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 08:23:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 08:23:30 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 08:23:31 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 08:23:33 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 08:23:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 08:23:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc33a1da85c5533fce9cfc9805b3eb2e761d8b4f7631ecbd90cd4a010f94908`  
		Last Modified: Sat, 28 Apr 2018 09:55:40 GMT  
		Size: 449.8 KB (449779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022ea33a084eecb4673a5740e10f27c92233479692a434e0d54dcecfbd7a76d2`  
		Last Modified: Sat, 28 Apr 2018 09:55:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091aae77173ee90e1756bb6f3fa323fb3f63bddbc058a6c361293efd48aadc5`  
		Last Modified: Sat, 28 Apr 2018 09:55:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5136bf86f7613c82b6e10846231bb9a01e22fc83ec40b238e1aef22610557350`  
		Last Modified: Tue, 15 May 2018 09:45:34 GMT  
		Size: 57.8 MB (57819714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c713e4563a15be92bb201587ed115bf4c9bd5fb2f38470c1f7f00d4a2981ef50`  
		Last Modified: Tue, 15 May 2018 09:45:15 GMT  
		Size: 272.1 KB (272075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea38ca98ea8a5b9b1caa23687b69dc7b7d01ad471ef8d7129b7f33c2024b044`  
		Last Modified: Sat, 23 Jun 2018 08:31:22 GMT  
		Size: 3.7 MB (3651146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca813ea847a96f71f45b40a688dc33a6407913cdaa410f28e983809df1bbe92e`  
		Last Modified: Sat, 23 Jun 2018 08:31:22 GMT  
		Size: 9.0 MB (8989206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffe22a12bf8398452b8c8866d9c7e9f12cf696e6f92ae50a877b82864df5874`  
		Last Modified: Sat, 23 Jun 2018 08:31:20 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b130ac73248b2214af32d74625fbf2a5a9684a19ed57bdceafccc70d3e4460f`  
		Last Modified: Sat, 23 Jun 2018 08:31:20 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; s390x

```console
$ docker pull maven@sha256:bae0a04a1aa3aee9fffdacaf6dafbbff37fae8653ca096e90a8f8646036d5284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.8 MB (92806985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f9cb41febfd1b995e93e6eebb2338001b3253a4125463678497c2a36a852dd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:56:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:56:49 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:56:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:56:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:56:50 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:56:50 GMT
ENV JAVA_VERSION=8u171
# Wed, 27 Jun 2018 13:56:51 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 27 Jun 2018 13:56:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 27 Jun 2018 13:57:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Jun 2018 13:57:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 17:37:05 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 27 Jun 2018 17:37:05 GMT
ARG USER_HOME_DIR=/root
# Wed, 27 Jun 2018 17:37:05 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 27 Jun 2018 17:37:06 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 27 Jun 2018 17:37:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:37:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 27 Jun 2018 17:37:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 27 Jun 2018 17:37:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 27 Jun 2018 17:37:39 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 27 Jun 2018 17:37:40 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 27 Jun 2018 17:37:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 27 Jun 2018 17:37:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98864f72d2f50de28cbc4c21989e206ade45beee445470d5998e020e706a28b8`  
		Last Modified: Wed, 27 Jun 2018 14:06:32 GMT  
		Size: 465.7 KB (465712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80055cec33c71631fdda816b6a3a1287ebde60cf763f4769406656a2b09f85fd`  
		Last Modified: Wed, 27 Jun 2018 14:06:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98774c95b6812a87cdf99c9c16d8b0f3dcf5cb9337e8659fb4d3d3ae8db7bc2e`  
		Last Modified: Wed, 27 Jun 2018 14:06:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5275da8820f1c0886960508213dff0c972b4b47fa3f0cf6913fff71263e71210`  
		Last Modified: Wed, 27 Jun 2018 14:06:41 GMT  
		Size: 57.0 MB (56978537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168d95102f02ea122c7368761d0675d79ac11e9923cbcb65f7a80f910e00ecba`  
		Last Modified: Wed, 27 Jun 2018 14:06:32 GMT  
		Size: 272.2 KB (272162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2925aad8f7bbc1bf9513225e994a90996dd78b159747ec7522368b2a4642af`  
		Last Modified: Wed, 27 Jun 2018 17:39:30 GMT  
		Size: 3.7 MB (3749993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae27d5497df240617efe54be0fd46f0042c64b80055ee50638e45d47f9a3446`  
		Last Modified: Wed, 27 Jun 2018 17:39:29 GMT  
		Size: 9.0 MB (8989221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498fabdff41952e8f86dae0ad70c98c3cdc72db7822a23be849f7d72005512c5`  
		Last Modified: Wed, 27 Jun 2018 17:39:29 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c628664439eeed6a1e1a6dfebf2eaa7bf0c529b0673e49ae9e6e6038cb5ee22b`  
		Last Modified: Wed, 27 Jun 2018 17:39:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

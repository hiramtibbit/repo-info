## `maven:slim`

```console
$ docker pull maven@sha256:645d089cc1d900c210d43927888323abdcf08c7b3053425527295e6c30dba998
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

### `maven:slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:e14f765791cb049da83268070f609bb71e2401b58d9919cb3f2e4797300a7dc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90212473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d4a2bd665a82a0d656652968d0ebeae339b030be7b1e3183b3edd8ece38505`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:48:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:48:31 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:48:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:48:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:51:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:34:40 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 09:34:41 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 09:34:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:48:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:49:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 23 Jun 2018 08:50:44 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 08:50:44 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 08:50:44 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 08:50:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 08:50:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 08:50:59 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 08:50:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 08:50:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 08:51:00 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 08:51:00 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 08:51:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 08:51:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fbc4bf09646719f2169da564fc13c0338c5d3ffad9d1529d01b7c51222ab6a`  
		Last Modified: Sat, 28 Apr 2018 13:24:35 GMT  
		Size: 447.7 KB (447689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0bc7f64f9c781a475de308113334713dc905ca7d4cbad091d2ea143f7a9678`  
		Last Modified: Sat, 28 Apr 2018 13:24:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0681ed43b7a56022b45c6755a8ff6db92d23fe3628cf2c3d37f67e8e7b8d51e2`  
		Last Modified: Sat, 28 Apr 2018 13:24:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b433b60f6c223d938af6c66c18b390ca9ea6652ca2f4fe6da51a9197a389c467`  
		Last Modified: Tue, 15 May 2018 10:27:32 GMT  
		Size: 55.9 MB (55883511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bb39658a84a526dde732105bb2587b0a7d5126595a89fa894fea30f6cf31f5`  
		Last Modified: Tue, 15 May 2018 10:27:17 GMT  
		Size: 272.2 KB (272195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f2ca333901b2bef8b4b467aed11d60320c56d17bc495b9cffe4cdbec3afa84`  
		Last Modified: Sat, 23 Jun 2018 08:53:56 GMT  
		Size: 3.4 MB (3442694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141fc1651a1cb700cf31bc9e07b845d08734676a12b536393ab6c517a23d08ad`  
		Last Modified: Sat, 23 Jun 2018 08:53:57 GMT  
		Size: 9.0 MB (8989224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d29cfd8b6d3fa8cae06fe49e77ff8634194a26e8ab2f6514e53a6705c1ae53`  
		Last Modified: Sat, 23 Jun 2018 08:53:55 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41af601dd05ffb87873dfcf07d8984931cdb7e9d8a4e90423bce1cf381be150`  
		Last Modified: Sat, 23 Jun 2018 08:53:55 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; arm variant v7

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

### `maven:slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:3bcdbceb6a6aa5a17ddbcc5bf60788b2bf9277363d1b55672d3385f789fd1818
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90731275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d182c1968fea0979dfaad8ac0cfabeea908c709fbbc86ebb29f43393eb8781`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:10:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:10:49 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:10:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:10:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:20:32 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 12:20:33 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:20:34 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:20:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 10:06:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 10:06:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 23 Jun 2018 08:44:58 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 08:44:59 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 08:45:00 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 08:45:00 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 08:45:27 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 08:45:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 08:45:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 08:45:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 08:45:34 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 08:45:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 08:45:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 08:45:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1356ac538eb57fd128c76210e69d8ea192739ab472c2fb3a454077a04f586e32`  
		Last Modified: Sat, 05 May 2018 13:03:11 GMT  
		Size: 440.9 KB (440854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404967e0deffced58d7fa59617c4f79114b54f83e611352df179e0ab16a4dcec`  
		Last Modified: Sat, 05 May 2018 13:03:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6bda87709b8348221cfb29ec6618a561250a0123b234348707f7efb5a8b6cf4`  
		Last Modified: Sat, 05 May 2018 13:03:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b0b2bfd1984f07018d7adbfadfafae638683bd64b4cbcd743a77f732562f40`  
		Last Modified: Tue, 15 May 2018 11:06:32 GMT  
		Size: 57.3 MB (57299553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eadea3de2c2cf549472c4365b5ae6c857ffb9dec21a92f166422633fa7582a8`  
		Last Modified: Tue, 15 May 2018 11:06:16 GMT  
		Size: 272.1 KB (272101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357f122e18d030beca5864a91922ccb37677c0ff5bd4d15964fe9b7a0f83dc3c`  
		Last Modified: Sat, 23 Jun 2018 08:52:55 GMT  
		Size: 3.4 MB (3380139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c97194211d804e8787b3bd849bae5fb43d1c1a6fe6a2fc711307b8592973ee`  
		Last Modified: Sat, 23 Jun 2018 08:52:56 GMT  
		Size: 9.0 MB (8989230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6639870bf6096a7fadc3d5e542537ca013643ea0f65be692e3926f278cc868af`  
		Last Modified: Sat, 23 Jun 2018 08:52:54 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6c36180c79c2a8097167360a68c58e98d1c5944a861960ad32466fbbb7da48`  
		Last Modified: Sat, 23 Jun 2018 08:52:54 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; 386

```console
$ docker pull maven@sha256:7afa687f02ed5a1b8b135c9381fb03d71b42c54fb501a8b703ff9f713b4bee64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103408165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61f7c39bd6a48e6047570704aac1f9cb0ad1da314211eb9858c7b08cd7e0b27`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Thu, 31 May 2018 06:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 06:01:53 GMT
ENV LANG=C.UTF-8
# Thu, 31 May 2018 06:01:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 May 2018 06:01:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 31 May 2018 06:04:05 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 31 May 2018 06:04:05 GMT
ENV JAVA_VERSION=8u171
# Thu, 31 May 2018 06:04:06 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Thu, 31 May 2018 06:04:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 31 May 2018 06:04:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 06:04:41 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 23 Jun 2018 10:42:37 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 10:42:37 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 10:42:37 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 10:42:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 10:42:50 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 10:42:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 10:42:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 10:42:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 10:42:54 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 10:42:54 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 10:42:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 10:42:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b454a28067110bf421699f878a0aae15d8ce26c443b4c1a8e0f3af04aafd21`  
		Last Modified: Thu, 31 May 2018 06:40:22 GMT  
		Size: 463.5 KB (463489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b99a754209b8eeff120bad47d735c30883fe13221341d29571db09ecf50d2c7`  
		Last Modified: Thu, 31 May 2018 06:40:21 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e46b4733cab8906e21512f53a48ff56245cb1b49e1faf71d19c64483631019`  
		Last Modified: Thu, 31 May 2018 06:40:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be86e6cd1143ef6b72ded0088f962555a00c1019c049b945e202969ceef0ff9c`  
		Last Modified: Thu, 31 May 2018 06:43:40 GMT  
		Size: 66.7 MB (66668934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1278a48626add25381f2055113d5b6a677ce0c93834326666d16f50980e57be9`  
		Last Modified: Thu, 31 May 2018 06:43:17 GMT  
		Size: 272.1 KB (272101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4443bb643a66931e2a5b2d417990c7942584f7b3015697b6034bc7fdbcc78cba`  
		Last Modified: Sat, 23 Jun 2018 10:51:32 GMT  
		Size: 3.9 MB (3874417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552c59cb6cb1ff8a885be8f173a04e513729e4ef08770d62f82f0675bccd223a`  
		Last Modified: Sat, 23 Jun 2018 10:51:32 GMT  
		Size: 9.0 MB (8989216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc27a818d35b6cf8791f91a87104246fd66cd1584a44b0d7a030e53715d01a9`  
		Last Modified: Sat, 23 Jun 2018 10:51:30 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207e0f2a91c17a7d742552d6e490b52ae79ca6b0a2b46f9d686c9fb4d5b0facc`  
		Last Modified: Sat, 23 Jun 2018 10:51:31 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; ppc64le

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

### `maven:slim` - linux; s390x

```console
$ docker pull maven@sha256:e84734ebc1b950387130d49bf240b482eb693b03de61eb00d2ea2f832938cdef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.8 MB (92807221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ef110d46697e2aafdeafb3f90e07108d90ec91efc064d253fa018a758a4422`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:30:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:30:01 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:30:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:30:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:31:36 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 13:15:50 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:15:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:15:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 12:10:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 12:11:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 23 Jun 2018 11:43:57 GMT
ARG MAVEN_VERSION=3.5.4
# Sat, 23 Jun 2018 11:43:57 GMT
ARG USER_HOME_DIR=/root
# Sat, 23 Jun 2018 11:43:57 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Sat, 23 Jun 2018 11:43:57 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Sat, 23 Jun 2018 11:44:06 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 23 Jun 2018 11:44:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 23 Jun 2018 11:44:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 23 Jun 2018 11:44:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 23 Jun 2018 11:44:13 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 23 Jun 2018 11:44:14 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 23 Jun 2018 11:44:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 23 Jun 2018 11:44:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90801d58a6d56c724d5792b8a42cc96a1e0561cd086660bf68d0291a40ddcbd`  
		Last Modified: Sat, 28 Apr 2018 14:54:24 GMT  
		Size: 465.7 KB (465749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a8f883c7ed4e5bc5ac600672c8b671b7da7b9b3165847d29ac63d7ccdf69d`  
		Last Modified: Sat, 28 Apr 2018 14:54:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52e66d8a2f90508e7dd2c1b398fe687ce2179feaeef82dd8f31d01eaa50e11f`  
		Last Modified: Sat, 28 Apr 2018 14:54:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d182695c749c9fcc4894a3aba9f33c2868134593c2ec24aec9070c1f9406fcc5`  
		Last Modified: Tue, 15 May 2018 12:47:03 GMT  
		Size: 57.0 MB (56978654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23f9a3cbdcab92ff9ebc61e17dc524d3da95d2c3306070c3d9fa7495ace2411`  
		Last Modified: Tue, 15 May 2018 12:46:48 GMT  
		Size: 272.2 KB (272178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7edc68f2ea1e323520f97c387669a3f1b3ecf9866d140a6b40ab7be97aa415`  
		Last Modified: Sat, 23 Jun 2018 11:47:33 GMT  
		Size: 3.8 MB (3750041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cad5815e1ef7e6d2657c64651dc85639bb0a3a4691db47c2f12927ce45c75c`  
		Last Modified: Sat, 23 Jun 2018 11:47:34 GMT  
		Size: 9.0 MB (8989206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf623fcc4bea76e2f2812a70cae141aa6a28624329cff269e8e6a4a4bf9e12d`  
		Last Modified: Sat, 23 Jun 2018 11:47:33 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea04233b32b3cf26bad824506ffadf8470a4cb2e7bcb948b176b5e4a31e9f9b9`  
		Last Modified: Sat, 23 Jun 2018 11:47:33 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-slim`

```console
$ docker pull maven@sha256:593c24d68191fbc5a4af79e2ade1042df03983e53a079f8b025a8f2ffa36adc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `maven:3-jdk-8-slim` - linux; amd64

```console
$ docker pull maven@sha256:cf2c65757ec14940d3d774f6fca0cb3d1610ffcce047e17dda835138e4a96a13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103787802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48626061ce37d4f19cb8831aa0f942ec6ab9d782bca3ceb58d455853c044d167`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:59:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:59:08 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 18:59:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Feb 2018 18:59:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Feb 2018 18:59:54 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Feb 2018 18:59:54 GMT
ENV JAVA_VERSION=8u151
# Fri, 16 Feb 2018 18:59:54 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Fri, 16 Feb 2018 18:59:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Feb 2018 19:00:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Feb 2018 19:00:23 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 09 Mar 2018 19:04:25 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 09 Mar 2018 19:04:25 GMT
ARG USER_HOME_DIR=/root
# Fri, 09 Mar 2018 19:04:25 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 09 Mar 2018 19:04:26 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 09 Mar 2018 19:04:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Fri, 09 Mar 2018 19:04:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 09 Mar 2018 19:04:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 09 Mar 2018 19:04:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 09 Mar 2018 19:04:38 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 09 Mar 2018 19:04:39 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 09 Mar 2018 19:04:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 09 Mar 2018 19:04:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2208661344b796f10a95853ee16808d1db921c94e10662cb33bf1f3dbd214e9c`  
		Last Modified: Fri, 16 Feb 2018 19:01:37 GMT  
		Size: 454.8 KB (454821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f28966f0b283d9e15f6d213f61d367003587b871594068f8238d3459585b5d`  
		Last Modified: Fri, 16 Feb 2018 19:01:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b55a806516fd0175d291b5cdb1e9a0833f247f5f0c508b44a4509713a7bf`  
		Last Modified: Fri, 16 Feb 2018 19:01:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee568884a8497712a7857f9db1993127ca4c4a774e08026d00fb5670f631d59`  
		Last Modified: Fri, 16 Feb 2018 19:04:25 GMT  
		Size: 67.7 MB (67665708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b6b371c215acf5c9f5cc165c77578d92108bf27bb003726e32977c5c08b350`  
		Last Modified: Fri, 16 Feb 2018 19:04:15 GMT  
		Size: 272.1 KB (272139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d32b9f0d917746914e641949136f81f7d1ea65690f5d0d49d999ed66e401bb64`  
		Last Modified: Fri, 09 Mar 2018 19:13:35 GMT  
		Size: 4.0 MB (3950878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7f2d50c9f073fa713f4f51a43be698207dee77899f04fcd8a20206bbbfc497`  
		Last Modified: Fri, 09 Mar 2018 19:13:35 GMT  
		Size: 8.9 MB (8945998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f6853c72f5fc1854cd3d1833bbb5fc12c3873d4220554a1a2956e4d0a3221c`  
		Last Modified: Fri, 09 Mar 2018 19:13:35 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970daea3eea05dec66f0a5aa8043c0aa4a6c1f17f9fd8d25778d97516fb315b7`  
		Last Modified: Fri, 09 Mar 2018 19:13:35 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:ab5ee5785cf06cf9f55f146664fd760e47c5fea5658cd78bc14108a13fe8bf4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90500908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93001040602a536917e6244b2e02f63e257ab72a6858b85ae2bd3738c095e655`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:41:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:41:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 21:41:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 21:41:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 21:42:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 21:42:10 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 21:42:10 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 21:42:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 21:42:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 21:42:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 10 Mar 2018 15:08:36 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 10 Mar 2018 15:08:37 GMT
ARG USER_HOME_DIR=/root
# Sat, 10 Mar 2018 15:08:37 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 10 Mar 2018 15:08:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 10 Mar 2018 15:08:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 10 Mar 2018 15:08:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 10 Mar 2018 15:08:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 10 Mar 2018 15:08:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 10 Mar 2018 15:08:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 10 Mar 2018 15:08:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 10 Mar 2018 15:08:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 10 Mar 2018 15:08:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dae2ed473b274806b6b49fb4790f79066c45610feb6af2cee29743cec60ed4f`  
		Last Modified: Thu, 15 Feb 2018 21:58:44 GMT  
		Size: 447.7 KB (447654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d47e0563e184d12b23741cb9795c53a36b40320f6cd0cad696f643b08ec59c0`  
		Last Modified: Thu, 15 Feb 2018 21:58:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72048ef552e0b8ff7c855763de1e4195eabc1ec8c38afc55c17d7ff94969ecbd`  
		Last Modified: Thu, 15 Feb 2018 21:58:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27daa55cb6cda081a3a1afc9e29e8d042784d7a037b4ad7d782ca42f5b342d4`  
		Last Modified: Thu, 15 Feb 2018 22:00:01 GMT  
		Size: 56.0 MB (56008895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d5646a6f0355295d70de460ca73cd5cbee76a15198e6226447d93425e78da9`  
		Last Modified: Thu, 15 Feb 2018 21:59:47 GMT  
		Size: 272.2 KB (272190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc14e312c1f7297e36fc7adf57f50e592bee922bb6372f3ec68f343bab50d94`  
		Last Modified: Sat, 10 Mar 2018 15:12:24 GMT  
		Size: 3.6 MB (3649521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cdce88e4fe2c4fceeefc66201fede554db6a533d30febb323afcd35dd0a442`  
		Last Modified: Sat, 10 Mar 2018 15:12:25 GMT  
		Size: 8.9 MB (8946125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6bd6ed1abc126d9c9c368010226305d41f8799870fb256ff61e51931f66989`  
		Last Modified: Sat, 10 Mar 2018 15:12:23 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942001eb082dc32bf8a142e90f7509d75d4d0e1c084bd978818efb56edb8a25`  
		Last Modified: Sat, 10 Mar 2018 15:12:23 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:5b6d19e15320fb413a1374fe34a377a528c973fbe76f9aacf4714aa067133e24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87679498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78091fe7c77b0f5a247472df95a9ad5875b71f9f9e7335335a3690a27bff6cd4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:05:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:05:30 GMT
ENV LANG=C.UTF-8
# Mon, 09 Oct 2017 23:05:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 09 Oct 2017 23:05:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 09 Oct 2017 23:05:33 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 09 Oct 2017 23:05:34 GMT
ENV JAVA_VERSION=8u141
# Mon, 09 Oct 2017 23:05:34 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Mon, 09 Oct 2017 23:05:35 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 09 Oct 2017 23:06:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 09 Oct 2017 23:06:14 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 10 Mar 2018 06:14:41 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 10 Mar 2018 06:14:42 GMT
ARG USER_HOME_DIR=/root
# Sat, 10 Mar 2018 06:14:42 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 10 Mar 2018 06:14:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 10 Mar 2018 06:14:53 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 10 Mar 2018 06:14:55 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 10 Mar 2018 06:14:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 10 Mar 2018 06:14:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 10 Mar 2018 06:14:56 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 10 Mar 2018 06:14:57 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 10 Mar 2018 06:14:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 10 Mar 2018 06:14:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6226915187b9d61d290e04413a4ccdf021b5e0fc267ba8129cc0126cab1f1a93`  
		Last Modified: Mon, 09 Oct 2017 23:24:02 GMT  
		Size: 430.6 KB (430580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98b9b3c90ff2ee65efc9f88b2383f6f1760df78bcd965fa0b22e001977eaf96`  
		Last Modified: Mon, 09 Oct 2017 23:24:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377cafaae0c7321b0549f3949d78826675109fe908cb8521f39fe433ccfced7c`  
		Last Modified: Mon, 09 Oct 2017 23:24:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b54cd082813272ec0eee997651297edb9bab1e57b36937aeb96ef819318ed1e`  
		Last Modified: Mon, 09 Oct 2017 23:24:18 GMT  
		Size: 55.5 MB (55499788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc34b3797b251df09cbf29653d3faf2fabcdf80cb0f026c5bd5a61c741cea657`  
		Last Modified: Mon, 09 Oct 2017 23:24:02 GMT  
		Size: 272.2 KB (272179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef99aec076b66439858bb5b94f413d364b120695832c8fea575788c3184000d`  
		Last Modified: Sat, 10 Mar 2018 06:18:40 GMT  
		Size: 3.3 MB (3252192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da79d60e2f5a692e075cdaa246469176cbc66d216945861d99cd911e9800189`  
		Last Modified: Sat, 10 Mar 2018 06:18:41 GMT  
		Size: 8.9 MB (8946132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad37a6ac5f466cf35347c698bfb0f86589da02f954ef74b06728d0442ed224d`  
		Last Modified: Sat, 10 Mar 2018 06:18:39 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53471ce5e83c3f3073d18010c50142cd9bed85bacbdc91a1af92fd38581ae33e`  
		Last Modified: Sat, 10 Mar 2018 06:18:39 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:7853594f73dc1e154947c036c136b12de1d265bac6cc6dfdbd3a984e56c6b4c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (91016411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe9e28fa6d008c0a1fe8b4ad08f852fbb5e002498ff752ee27e12ca31bfbf17`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:32:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:32:11 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:32:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 22:32:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 22:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 22:41:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 22:41:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 22:41:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 22:43:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 22:43:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 10 Mar 2018 17:33:16 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 10 Mar 2018 17:33:17 GMT
ARG USER_HOME_DIR=/root
# Sat, 10 Mar 2018 17:33:18 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 10 Mar 2018 17:33:18 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 10 Mar 2018 17:33:47 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 10 Mar 2018 17:33:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 10 Mar 2018 17:33:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 10 Mar 2018 17:33:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 10 Mar 2018 17:33:53 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 10 Mar 2018 17:33:54 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 10 Mar 2018 17:33:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 10 Mar 2018 17:33:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7076879d0019e63bae1939408a25e7089e3834fe8b7f43fbec922417699658c8`  
		Last Modified: Thu, 15 Feb 2018 23:20:08 GMT  
		Size: 440.8 KB (440785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28c6ebdeed04fe1032dcf717b07169a264a1d774d768a70ad2900ad90d4668e`  
		Last Modified: Thu, 15 Feb 2018 23:20:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fc4224fc2980672920da99764337cf5ab1110ddad0b0ef8e4a15a78afcb77d`  
		Last Modified: Thu, 15 Feb 2018 23:20:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d736d9ec8d0bf50a1141318bbac55543c6a06050f0f2bb2e0aeb10961367dfc9`  
		Last Modified: Thu, 15 Feb 2018 23:25:30 GMT  
		Size: 57.4 MB (57421272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d733eaf25f112b24a57808b6994f2d017d744a3a5b625249582caa3de64506`  
		Last Modified: Thu, 15 Feb 2018 23:25:13 GMT  
		Size: 272.1 KB (272104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3868d5a1936938fd5f9df6604a9b272454947153217c648044b59fd0583c4166`  
		Last Modified: Sat, 10 Mar 2018 17:42:56 GMT  
		Size: 3.6 MB (3587353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91665022f9c9d806bebddbbf313bf5d4e4f8500110fabcf3a64be4cfacdd12fe`  
		Last Modified: Sat, 10 Mar 2018 17:42:57 GMT  
		Size: 8.9 MB (8945976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8e0859b22283a5642085ef39546663d2f38e2ea709da964d0788cc80483bb0`  
		Last Modified: Sat, 10 Mar 2018 17:42:55 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698d4d3ccb25a14c1badf8be57d31f5d47cc113c5a6493776d3deed0dc99506d`  
		Last Modified: Sat, 10 Mar 2018 17:42:55 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; ppc64le

```console
$ docker pull maven@sha256:fae381892bd72e1e722513700c69473f6735d3e9c15280739e1adc7d2d24c364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94029209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7353be2fdff74fc9b2921f4ddb97d30f2b13a5e802b7069859f72a8a68087d26`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:47:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:48:00 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 03:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 03:48:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 03:54:10 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 03:54:11 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 03:54:12 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 03:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 03:58:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 03:58:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 10 Mar 2018 11:04:57 GMT
ARG MAVEN_VERSION=3.5.3
# Sat, 10 Mar 2018 11:04:58 GMT
ARG USER_HOME_DIR=/root
# Sat, 10 Mar 2018 11:04:59 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Sat, 10 Mar 2018 11:05:00 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Sat, 10 Mar 2018 11:05:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Sat, 10 Mar 2018 11:05:51 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 10 Mar 2018 11:05:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 10 Mar 2018 11:05:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 10 Mar 2018 11:05:55 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 10 Mar 2018 11:05:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 10 Mar 2018 11:05:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 10 Mar 2018 11:05:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db1eeca3bf1292993653ef54f89c085f0b33fd3db68eca1e8f4657565618b9d`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 449.8 KB (449803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa77403ca9aa744a957e13337b03002f2cdc936bd9d47b0f0ebb37e2be5cd5a`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfac90f183e02ebd54abdfdc0f57da55be8fb19f3f1d1fd6e9f41a19cbc2b68`  
		Last Modified: Thu, 15 Feb 2018 04:38:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db0b5c0c56a820154b0f8346cf68f693459b7535918482fb488988fb71186a0`  
		Last Modified: Thu, 15 Feb 2018 04:39:30 GMT  
		Size: 58.0 MB (57954935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4fb7130a5ce7a2d1ec8695936756fec7dc92c822622dbdec65d2dfcc515a4d`  
		Last Modified: Thu, 15 Feb 2018 04:39:18 GMT  
		Size: 272.0 KB (272032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b010605c4fbfd53c8828fbea66df6083e9a4a96e5f61c01dc32dd40c5d84bfec`  
		Last Modified: Sat, 10 Mar 2018 11:12:19 GMT  
		Size: 3.7 MB (3651717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42445ecc6db0162a2b635ea03cce11e9f7ba26fc9f578dcb6111b93f80ea3e5`  
		Last Modified: Sat, 10 Mar 2018 11:12:19 GMT  
		Size: 8.9 MB (8946130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2582fc5f81757f355d297c376e0aee984482a5dd3a099189f24dcc41f16cb480`  
		Last Modified: Sat, 10 Mar 2018 11:12:18 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03efb57c9eba8752101478b55c8efa600cda9583a7657ecd7208d0966ba50dd9`  
		Last Modified: Sat, 10 Mar 2018 11:12:18 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-8-slim` - linux; s390x

```console
$ docker pull maven@sha256:9b5ae0678b55e10fb6fcff364d201a00cf7103e9f2373513ec0f2c3e9d2edae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92905296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc393c6ceac4c94ec86821b273571984a7d3a9298b366b220bbebb4e35cf162`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 06:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:43:19 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:43:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:43:20 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:44:56 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 14 Mar 2018 06:44:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 14 Mar 2018 06:44:57 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Wed, 14 Mar 2018 06:44:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 14 Mar 2018 06:45:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 14 Mar 2018 06:45:18 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 14 Mar 2018 11:09:39 GMT
ARG MAVEN_VERSION=3.5.3
# Wed, 14 Mar 2018 11:09:39 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Mar 2018 11:09:40 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Wed, 14 Mar 2018 11:09:40 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Wed, 14 Mar 2018 11:09:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:49 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Mar 2018 11:09:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Mar 2018 11:09:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 14 Mar 2018 11:09:50 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 14 Mar 2018 11:09:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 14 Mar 2018 11:09:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 14 Mar 2018 11:09:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512c47784c512985a2f670e2a9aebfa09511f48279b95d9891a337a558a3ad3a`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 465.7 KB (465722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc17c7b5f20c51c5f2c4f4d919514f4d98fd1056c2f72b08ab8a805bcacec06`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7342609907d585fc4e70d60bdbe4417280ca389d6d95b71e976510cad8cecc9c`  
		Last Modified: Wed, 14 Mar 2018 06:57:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53025f19820d59efae308fa89634e3df37da281daff86f380b792ab378ae88f1`  
		Last Modified: Wed, 14 Mar 2018 06:59:23 GMT  
		Size: 57.1 MB (57129835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d552373abd85ad3f07f0ea7e3f925fba62ec929a420a48bcb4436390861e48a5`  
		Last Modified: Wed, 14 Mar 2018 06:59:13 GMT  
		Size: 272.2 KB (272160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28beaa613df71b03bf3d29523b3a97f1cf66ceb5a21495aba9a7494cb5c1d71e`  
		Last Modified: Wed, 14 Mar 2018 11:11:58 GMT  
		Size: 3.7 MB (3749650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76403bf583574f0e2ba7e66874834a7a2719fe3ef5ec934844b0ce8e074a083e`  
		Last Modified: Wed, 14 Mar 2018 11:11:58 GMT  
		Size: 8.9 MB (8945960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b8807ff61fc2c5dcf15784927237116457ec8de15d73b9ecfee5aca11403d`  
		Last Modified: Wed, 14 Mar 2018 11:11:57 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa496be5fcc3469ec37602d496d260e6ea32f44db04c75f95af26f04573dc0b`  
		Last Modified: Wed, 14 Mar 2018 11:11:57 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:slim`

```console
$ docker pull maven@sha256:cc9ceba1cc6a1c174fbe6a76e5c5fe2d22e1b74250b4f5bb3fb2cbd6757e7e99
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
$ docker pull maven@sha256:5daccf5eb3e0a05c0c5594883409f7c1313c23168c5f5efee45a5e79ab581bbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103625222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a045f84d6a3d67b59cb982fd994a082dc384a254e6d001a7673ca8b392219c6a`
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
# Tue, 30 Oct 2018 03:21:40 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 30 Oct 2018 03:21:40 GMT
ARG USER_HOME_DIR=/root
# Tue, 30 Oct 2018 03:21:40 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 30 Oct 2018 03:21:41 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 30 Oct 2018 03:21:56 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 30 Oct 2018 03:21:57 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 30 Oct 2018 03:21:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 30 Oct 2018 03:21:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 30 Oct 2018 03:21:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 30 Oct 2018 03:21:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 30 Oct 2018 03:21:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 30 Oct 2018 03:21:59 GMT
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
	-	`sha256:5f5edd63f937c96a688c7404fe3ee5b55c48e2c880acd1b95c51b97ec5e5bf59`  
		Last Modified: Tue, 30 Oct 2018 03:23:17 GMT  
		Size: 4.0 MB (3951876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7436b46f9127bcb29932dc463e60b811d09aa7ecc539fe9bd79b342c1ffbb28e`  
		Last Modified: Tue, 30 Oct 2018 03:23:17 GMT  
		Size: 9.0 MB (8989219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1436442ff75a5c699475d01394857acdd57aa63aadd5b9bdd234e4618faee473`  
		Last Modified: Tue, 30 Oct 2018 03:23:16 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259be081cb751ec54c856b0b2a364ba16c338293392bc987b579ad53f26679c3`  
		Last Modified: Tue, 30 Oct 2018 03:23:16 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; arm variant v5

```console
$ docker pull maven@sha256:ebdb9d1d39c7d89c2f9e669b813eab64dffe8a0022ffaaf80b43f047c009e08a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90211085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627d3e1a6b5fad681f0af7d592756f859942dc2985d8c5e4ee424f558ed8e7d9`
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
# Tue, 16 Oct 2018 09:13:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 09:13:41 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 09:14:29 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 09:14:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 13:12:07 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 13:12:07 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 13:12:08 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 13:12:09 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 13:12:24 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:12:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 13:12:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 13:12:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 13:12:33 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 13:12:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 13:12:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 13:12:35 GMT
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
	-	`sha256:c6e81bdf0cc59d44a6e2d096b35bca3a41193c84abb8952b3b68ad5cdb266651`  
		Last Modified: Tue, 16 Oct 2018 09:26:14 GMT  
		Size: 55.9 MB (55920684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e38350de2b153b7c286f6c5119943599e3b82e5c631056a8e4cc6885d3cb020`  
		Last Modified: Tue, 16 Oct 2018 09:25:59 GMT  
		Size: 246.7 KB (246744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbae5ab82b583b23eff1d0975d80f552c46dee77d6926bfa1fca6eb9b75654fa`  
		Last Modified: Tue, 16 Oct 2018 13:14:57 GMT  
		Size: 3.4 MB (3442278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da564b1e53200b3be295647f46654d13cb287fd76ce8d6540b09015498d0e2d3`  
		Last Modified: Tue, 16 Oct 2018 13:14:57 GMT  
		Size: 9.0 MB (8989246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05f02900f9d40f2e510b7b75d7cdbb6e574a407f17befbfc0d3d6a3290c470cf`  
		Last Modified: Tue, 16 Oct 2018 13:14:55 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ea559307516049f9baafaca54f7f6a9454f11503470b99ea131806d398a876`  
		Last Modified: Tue, 16 Oct 2018 13:14:56 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; arm variant v7

```console
$ docker pull maven@sha256:f6453b957ec3eb496b953418e040c3911cccfef2a3998de2cbe9d066d4b28cfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90381506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3d753518e3be91ae36ab71a2624bf6b739f11cbeda0730df0e801d589b9872`
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
# Tue, 17 Jul 2018 17:04:00 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 17 Jul 2018 17:04:00 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Jul 2018 17:04:01 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 17 Jul 2018 17:04:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 17 Jul 2018 17:04:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:04:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 17 Jul 2018 17:04:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Jul 2018 17:04:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Jul 2018 17:04:27 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 17 Jul 2018 17:04:28 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 17 Jul 2018 17:04:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Jul 2018 17:04:29 GMT
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
	-	`sha256:a213f40a2a76fcee0f776d2bfe292b2c77ff2927a8d358c9a69c92659026ddfa`  
		Last Modified: Tue, 17 Jul 2018 17:08:57 GMT  
		Size: 3.4 MB (3443955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3416f213a5b99dcbbeffe5fc97346f91901d6f71a9f26cd637bd7d4c8fb89794`  
		Last Modified: Tue, 17 Jul 2018 17:08:58 GMT  
		Size: 9.0 MB (8989247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20199f211c844501c1cb8eb8805154e812d92a31311e38bc41bffeb5ac761fcd`  
		Last Modified: Tue, 17 Jul 2018 17:08:56 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b9f9a31581d810fd64bb87fd4feea633b2ef7c9d549bbe3e1c89a9a9d92870`  
		Last Modified: Tue, 17 Jul 2018 17:08:56 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:a29beb2be6b9da8af7db80fbe64f0e96196e839b2d7cf1ead4343f5e6a3ec4a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90734804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46edf5534b081ec35375bf4f1635a9bc51b5b39937b74c1547f3cbf1bed034fd`
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
# Tue, 16 Oct 2018 09:16:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 09:16:19 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 09:17:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 09:17:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 23:28:42 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 23:28:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 23:28:43 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 23:28:43 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 23:29:09 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 23:29:15 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 23:29:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 23:29:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 23:29:17 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 23:29:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 23:29:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 23:29:19 GMT
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
	-	`sha256:e87fbc44317a3796b7611c58a124eb0175a55d28f849d48d97210d09a89158a3`  
		Last Modified: Tue, 16 Oct 2018 09:31:50 GMT  
		Size: 57.3 MB (57345374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b44fd4fb649c6d532453de98c0e4c496d44bde4be3828cf4346b9b050e57fbe`  
		Last Modified: Tue, 16 Oct 2018 09:31:31 GMT  
		Size: 246.7 KB (246657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6a0a166d3ffdb49f828110db529bc4bd49b5972262b0515579c7bcea8a2c09`  
		Last Modified: Tue, 16 Oct 2018 23:32:54 GMT  
		Size: 3.4 MB (3379624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0260659fb0afe2ffc40fc54da5fce6085cd4be42724c5a81086103328cb4f77b`  
		Last Modified: Tue, 16 Oct 2018 23:32:54 GMT  
		Size: 9.0 MB (8989212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681fc7a04b8578bc85081b5664c7f1eb8f486f0b3c6b74e5fad387a52f4bcd7f`  
		Last Modified: Tue, 16 Oct 2018 23:32:53 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2e750a1c8d95e9a2fb4051ecfb3d47a84c2b136600da13873ae3d2621081c2`  
		Last Modified: Tue, 16 Oct 2018 23:32:53 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; 386

```console
$ docker pull maven@sha256:f77c2447e85e42ed64634bec14c324534c43529a9d2d9e3c0aee189a1db2f455
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103408440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5e1768535b3a06e9b8612e2f787ef28af52e298117f3122af50a39d8bb1708`
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
# Tue, 16 Oct 2018 11:33:09 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 11:33:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 11:33:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 11:33:56 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 17 Oct 2018 04:57:16 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 17 Oct 2018 04:57:16 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Oct 2018 04:57:16 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 17 Oct 2018 04:57:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 17 Oct 2018 04:57:29 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 04:57:31 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Oct 2018 04:57:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Oct 2018 04:57:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Oct 2018 04:57:32 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Oct 2018 04:57:32 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 17 Oct 2018 04:57:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Oct 2018 04:57:33 GMT
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
	-	`sha256:b4076b97b8b36e34f8276fbee5803a3c99e802a8ad5119f6c4f171dbc0b14532`  
		Last Modified: Tue, 16 Oct 2018 11:52:29 GMT  
		Size: 66.7 MB (66706900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda77f25c81ac00c0e66051a1c276cd770e14141e7ddcb521bdb4256a8e0fd8b`  
		Last Modified: Tue, 16 Oct 2018 11:52:03 GMT  
		Size: 246.8 KB (246752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facbc9bead9620ecc6a1ceb4fa600bc28273dc8d88617345606fd683950fd956`  
		Last Modified: Wed, 17 Oct 2018 05:01:01 GMT  
		Size: 3.9 MB (3873969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371d016953505ccfa391957dce7fb736d4b94a62bfbd0da3e4d6911b0cbf7a55`  
		Last Modified: Wed, 17 Oct 2018 05:01:01 GMT  
		Size: 9.0 MB (8989218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8250e84b9f7340bef974ccadfcfad4c12d6bdec10005b0f8ca63f580baa9025a`  
		Last Modified: Wed, 17 Oct 2018 05:01:00 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62078f105aa05852aac31c83d03d4df360ed41c49648ffe2a82ab24328e309c0`  
		Last Modified: Wed, 17 Oct 2018 05:01:00 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; ppc64le

```console
$ docker pull maven@sha256:18a0f33143c08a33cb38f2e5043ba02bbf259624e6f4d218bd63245171325fdd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93925589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a6cbca0d9689ec11ed1e7e9ba0265227d848778bcfb29b87b16a0e7ae124ff`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Oct 2018 08:22:25 GMT
ADD file:b1fa1d0ffa2b206311dfd95642d74c3312565a1ec2e6e3a2197bfd2a4b3de6c6 in / 
# Tue, 16 Oct 2018 08:22:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:38:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:44 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:38:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 08:38:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 08:38:56 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 08:38:58 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 08:38:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 08:39:00 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 08:40:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 08:40:50 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 15:42:36 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 15:42:37 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 15:42:39 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 15:42:40 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 15:43:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:43:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 15:43:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 15:43:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 15:43:28 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 15:43:30 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 15:43:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 15:43:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:202f659db3e53c01ac947538d8b37251e9fa16c4a6a699dc6c2a8910afcdfed4`  
		Last Modified: Tue, 16 Oct 2018 08:30:59 GMT  
		Size: 22.7 MB (22740583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432b5543e9d8921bca55226b6b02359bff99fcbba14a5e4fafef43e85cd22be8`  
		Last Modified: Tue, 16 Oct 2018 09:02:08 GMT  
		Size: 449.8 KB (449756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a61c52170d68c0edcd064ac4a7786028f65b5494155795a597c3b8b7acda56`  
		Last Modified: Tue, 16 Oct 2018 09:02:08 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9398f12a0760b2cbf7c8ee799fcea4024bf516290710da0b88d3bab698b4cca8`  
		Last Modified: Tue, 16 Oct 2018 09:02:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a3f16cc981510bbe6f77649ec4c2f222a305bea6615bb5109339a4c8bb0c6c`  
		Last Modified: Tue, 16 Oct 2018 09:02:29 GMT  
		Size: 57.8 MB (57846868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771af1f912fee862cbf62ab5d1b39d2a4a779a30ce86a6c893790342421da89b`  
		Last Modified: Tue, 16 Oct 2018 09:02:07 GMT  
		Size: 246.6 KB (246649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5358a3891fe43edf1deaa3365f31dea393ea9f70261da66a3e6acc0bb975b2`  
		Last Modified: Tue, 16 Oct 2018 15:46:49 GMT  
		Size: 3.7 MB (3651003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8271c94a31fec8e0e1aaf7b44ddc947090ac35c4e1a8fd9e0dda127e0f6a35f8`  
		Last Modified: Tue, 16 Oct 2018 15:46:49 GMT  
		Size: 9.0 MB (8989231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548883742ec4db4e9403af4a2495754e27faa863e320df1c45649cc76c1b5941`  
		Last Modified: Tue, 16 Oct 2018 15:46:47 GMT  
		Size: 753.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1db356c612fe945819095853a60986330704658e7141a677ebeb3f85e9b6cc`  
		Last Modified: Tue, 16 Oct 2018 15:46:48 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:slim` - linux; s390x

```console
$ docker pull maven@sha256:7346e3b6cdff565011b6dcaa047891f23ffb138a10ab1665b298645c167e2294
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.8 MB (92796654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca82c64e7ba8a8c2829a7bf16a54669c867d0298927c20e52b8955915b9a2f2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:52 GMT
ADD file:a7cc9e5280b465a6e72c8b1331e009ddd18bff12c000c9e49ababac631179edc in / 
# Tue, 16 Oct 2018 11:42:52 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:51:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:51:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:51:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:51:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:51:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:51:19 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 11:51:19 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 11:51:19 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 11:51:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 11:51:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 15:06:37 GMT
ARG MAVEN_VERSION=3.5.4
# Tue, 16 Oct 2018 15:06:37 GMT
ARG USER_HOME_DIR=/root
# Tue, 16 Oct 2018 15:06:38 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Tue, 16 Oct 2018 15:06:38 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Tue, 16 Oct 2018 15:06:48 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl procps   && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:06:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 16 Oct 2018 15:06:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 16 Oct 2018 15:06:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 16 Oct 2018 15:06:55 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 16 Oct 2018 15:06:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 16 Oct 2018 15:06:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 16 Oct 2018 15:06:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b16a7816eac3ca0893b75f07b37e5e276ba331e1a35619343718d1c33f877877`  
		Last Modified: Tue, 16 Oct 2018 11:46:03 GMT  
		Size: 22.3 MB (22334662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e94b0d505f538ae54afb9dc971dc4f184f951b9b7c0a6386e55119be35cec7`  
		Last Modified: Tue, 16 Oct 2018 11:56:15 GMT  
		Size: 465.8 KB (465777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accba0e259d42eea864d5eaade6d14caeb1b80f07936da1d4498a932c01a901d`  
		Last Modified: Tue, 16 Oct 2018 11:56:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fc725da6f78df007778d52100ad914a775759c2c780f3313ac9413f8b048432`  
		Last Modified: Tue, 16 Oct 2018 11:56:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611dcbe887f4a609acab0a6e4956898f5b9dcfbfa82f84341c202787d10eb07a`  
		Last Modified: Tue, 16 Oct 2018 11:56:24 GMT  
		Size: 57.0 MB (57009317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c4874ea85aad888267b67eb0e890f2034215d4bb9f7120c8aeca6c20dbc18c`  
		Last Modified: Tue, 16 Oct 2018 11:56:15 GMT  
		Size: 246.7 KB (246685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20f9ea00cae450525885ebb35cb9d90f3c3d463ce1655517d02481d14355764c`  
		Last Modified: Tue, 16 Oct 2018 15:08:35 GMT  
		Size: 3.7 MB (3749487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253d07d3da408fb92fcc385b781634e250589f147e5ffcfad87aa2a38a96bc39`  
		Last Modified: Tue, 16 Oct 2018 15:08:35 GMT  
		Size: 9.0 MB (8989234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:148c34ec3f98ce4303d3b2ef5deff49e439704d118ce21584541016b061996d5`  
		Last Modified: Tue, 16 Oct 2018 15:08:34 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b933c298f194af7d1cdf3e7a69f49257965e578fd82c4247af78c0a080d9cd5`  
		Last Modified: Tue, 16 Oct 2018 15:08:33 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

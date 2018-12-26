<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rapidoid`

-	[`rapidoid:5`](#rapidoid5)
-	[`rapidoid:5.4`](#rapidoid54)
-	[`rapidoid:5.4.6`](#rapidoid546)
-	[`rapidoid:latest`](#rapidoidlatest)

## `rapidoid:5`

```console
$ docker pull rapidoid@sha256:81e8881a1d534b7fbe1e5d0e02b59526628fed777d831531028f9792e8be261b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:5` - linux; amd64

```console
$ docker pull rapidoid@sha256:1fa2f65c7cc793c814bbc5a5fd385c39a3ef5484a95a02f79b1288940fde7500
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93893434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059565899220ce0dd5fdd32962a06dffc1198033f4cbe7e021538fea7dbe6118`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:59:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:59:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:03:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:03:26 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:03:27 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:35:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:14:36 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 26 Dec 2018 10:14:37 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 26 Dec 2018 10:14:37 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 26 Dec 2018 10:14:37 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 26 Dec 2018 10:14:37 GMT
WORKDIR /opt
# Wed, 26 Dec 2018 10:14:37 GMT
EXPOSE 8888
# Wed, 26 Dec 2018 10:14:38 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 10:14:38 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 26 Dec 2018 10:14:38 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 26 Dec 2018 10:14:38 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 26 Dec 2018 10:14:49 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:14:50 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f6dd39b85823bd8b7dedf55493b2571443143909aa32cecfcce74bf0280d18`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 454.8 KB (454816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e0730514ffad1a18c952b64cb142bc90d2fb8dae84958e7f4cbe0f45fc77fd`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dae24989f4b7d5e9ffab8e282103fd96960a02525281093fac8c2fac3e3e35`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec731051d622ff77084352ee4a307a3040bf5ed6307af90e9298b37bfa43c8a`  
		Last Modified: Wed, 26 Dec 2018 08:41:29 GMT  
		Size: 55.8 MB (55843518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3690856979c06c5fa55985552b034aad93d7a6037152c4381696b394e2ca57`  
		Last Modified: Wed, 26 Dec 2018 10:14:57 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d3b1303cbd61ffe86a1c7064ada74dab87874ec8c2c4e3442d17e27287da00`  
		Last Modified: Wed, 26 Dec 2018 10:14:59 GMT  
		Size: 15.1 MB (15108078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:5` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:e5eee119ab253c28b7695bfb27f9cefe09d3054b22fd79fde92fecf659c8c770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83399490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ae7f5ab5d5b65ed8b146f8752195eea05b4c4eb8b9c826acc60232b2292c94`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:01:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:01:31 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:01:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:01:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:09:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:09:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:09:37 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:09:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:10:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:11:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 21:46:31 GMT
MAINTAINER Nikolche Mihajlovski
# Sat, 17 Nov 2018 21:46:34 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Sat, 17 Nov 2018 21:46:38 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Sat, 17 Nov 2018 21:46:42 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Sat, 17 Nov 2018 21:46:44 GMT
WORKDIR /opt
# Sat, 17 Nov 2018 21:46:48 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 21:46:51 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 21:46:55 GMT
ENV RAPIDOID_VERSION=5.4.6
# Sat, 17 Nov 2018 21:46:59 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Sat, 17 Nov 2018 21:47:03 GMT
COPY file:604b8053d63179f0e45204cfaceba95b6ea008beaf1c685b80fa09ca1e982e4c in /opt/ 
# Sat, 17 Nov 2018 21:49:10 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 21:49:14 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d594caf9c11b4dd5588375b02cdab683c1f3ff4e66526d98aa006e849a8dea`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 440.9 KB (440857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df53400c62e60586cf50ab4f031bb0ef450d7bc7d26fa4f1e82718c5748e3f9`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2767e9387e76b486b12cc446ecd4a98e7cc06bc83637d321ab0f1d062a46136`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4562c1b1fbeeb60502c1b5a13bcd66d2e30312c26824ea3cb4d08aca0db7058e`  
		Last Modified: Sat, 17 Nov 2018 05:54:50 GMT  
		Size: 48.0 MB (48005165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f11ba3bcd33b85545ed15cb167b138cc4176dacb43c939cd9af3d1c4e1e8b0`  
		Last Modified: Sat, 17 Nov 2018 05:54:32 GMT  
		Size: 246.7 KB (246688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871400567c58ff160725572a15c5635a74cdd0b0b998a64cbf8b3a1b1d3e3b84`  
		Last Modified: Sat, 17 Nov 2018 21:49:49 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae5ce679c7f44487d3630c2300a147ffbe1fa4561a2c9dbb7c2a0ba806dc72`  
		Last Modified: Sat, 17 Nov 2018 21:49:52 GMT  
		Size: 14.4 MB (14374724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:5.4`

```console
$ docker pull rapidoid@sha256:81e8881a1d534b7fbe1e5d0e02b59526628fed777d831531028f9792e8be261b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:5.4` - linux; amd64

```console
$ docker pull rapidoid@sha256:1fa2f65c7cc793c814bbc5a5fd385c39a3ef5484a95a02f79b1288940fde7500
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93893434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059565899220ce0dd5fdd32962a06dffc1198033f4cbe7e021538fea7dbe6118`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:59:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:59:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:03:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:03:26 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:03:27 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:35:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:14:36 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 26 Dec 2018 10:14:37 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 26 Dec 2018 10:14:37 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 26 Dec 2018 10:14:37 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 26 Dec 2018 10:14:37 GMT
WORKDIR /opt
# Wed, 26 Dec 2018 10:14:37 GMT
EXPOSE 8888
# Wed, 26 Dec 2018 10:14:38 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 10:14:38 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 26 Dec 2018 10:14:38 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 26 Dec 2018 10:14:38 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 26 Dec 2018 10:14:49 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:14:50 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f6dd39b85823bd8b7dedf55493b2571443143909aa32cecfcce74bf0280d18`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 454.8 KB (454816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e0730514ffad1a18c952b64cb142bc90d2fb8dae84958e7f4cbe0f45fc77fd`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dae24989f4b7d5e9ffab8e282103fd96960a02525281093fac8c2fac3e3e35`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec731051d622ff77084352ee4a307a3040bf5ed6307af90e9298b37bfa43c8a`  
		Last Modified: Wed, 26 Dec 2018 08:41:29 GMT  
		Size: 55.8 MB (55843518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3690856979c06c5fa55985552b034aad93d7a6037152c4381696b394e2ca57`  
		Last Modified: Wed, 26 Dec 2018 10:14:57 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d3b1303cbd61ffe86a1c7064ada74dab87874ec8c2c4e3442d17e27287da00`  
		Last Modified: Wed, 26 Dec 2018 10:14:59 GMT  
		Size: 15.1 MB (15108078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:5.4` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:e5eee119ab253c28b7695bfb27f9cefe09d3054b22fd79fde92fecf659c8c770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83399490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ae7f5ab5d5b65ed8b146f8752195eea05b4c4eb8b9c826acc60232b2292c94`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:01:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:01:31 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:01:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:01:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:09:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:09:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:09:37 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:09:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:10:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:11:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 21:46:31 GMT
MAINTAINER Nikolche Mihajlovski
# Sat, 17 Nov 2018 21:46:34 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Sat, 17 Nov 2018 21:46:38 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Sat, 17 Nov 2018 21:46:42 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Sat, 17 Nov 2018 21:46:44 GMT
WORKDIR /opt
# Sat, 17 Nov 2018 21:46:48 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 21:46:51 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 21:46:55 GMT
ENV RAPIDOID_VERSION=5.4.6
# Sat, 17 Nov 2018 21:46:59 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Sat, 17 Nov 2018 21:47:03 GMT
COPY file:604b8053d63179f0e45204cfaceba95b6ea008beaf1c685b80fa09ca1e982e4c in /opt/ 
# Sat, 17 Nov 2018 21:49:10 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 21:49:14 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d594caf9c11b4dd5588375b02cdab683c1f3ff4e66526d98aa006e849a8dea`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 440.9 KB (440857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df53400c62e60586cf50ab4f031bb0ef450d7bc7d26fa4f1e82718c5748e3f9`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2767e9387e76b486b12cc446ecd4a98e7cc06bc83637d321ab0f1d062a46136`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4562c1b1fbeeb60502c1b5a13bcd66d2e30312c26824ea3cb4d08aca0db7058e`  
		Last Modified: Sat, 17 Nov 2018 05:54:50 GMT  
		Size: 48.0 MB (48005165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f11ba3bcd33b85545ed15cb167b138cc4176dacb43c939cd9af3d1c4e1e8b0`  
		Last Modified: Sat, 17 Nov 2018 05:54:32 GMT  
		Size: 246.7 KB (246688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871400567c58ff160725572a15c5635a74cdd0b0b998a64cbf8b3a1b1d3e3b84`  
		Last Modified: Sat, 17 Nov 2018 21:49:49 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae5ce679c7f44487d3630c2300a147ffbe1fa4561a2c9dbb7c2a0ba806dc72`  
		Last Modified: Sat, 17 Nov 2018 21:49:52 GMT  
		Size: 14.4 MB (14374724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:5.4.6`

```console
$ docker pull rapidoid@sha256:81e8881a1d534b7fbe1e5d0e02b59526628fed777d831531028f9792e8be261b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:5.4.6` - linux; amd64

```console
$ docker pull rapidoid@sha256:1fa2f65c7cc793c814bbc5a5fd385c39a3ef5484a95a02f79b1288940fde7500
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93893434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059565899220ce0dd5fdd32962a06dffc1198033f4cbe7e021538fea7dbe6118`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:59:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:59:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:03:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:03:26 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:03:27 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:35:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:14:36 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 26 Dec 2018 10:14:37 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 26 Dec 2018 10:14:37 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 26 Dec 2018 10:14:37 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 26 Dec 2018 10:14:37 GMT
WORKDIR /opt
# Wed, 26 Dec 2018 10:14:37 GMT
EXPOSE 8888
# Wed, 26 Dec 2018 10:14:38 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 10:14:38 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 26 Dec 2018 10:14:38 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 26 Dec 2018 10:14:38 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 26 Dec 2018 10:14:49 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:14:50 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f6dd39b85823bd8b7dedf55493b2571443143909aa32cecfcce74bf0280d18`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 454.8 KB (454816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e0730514ffad1a18c952b64cb142bc90d2fb8dae84958e7f4cbe0f45fc77fd`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dae24989f4b7d5e9ffab8e282103fd96960a02525281093fac8c2fac3e3e35`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec731051d622ff77084352ee4a307a3040bf5ed6307af90e9298b37bfa43c8a`  
		Last Modified: Wed, 26 Dec 2018 08:41:29 GMT  
		Size: 55.8 MB (55843518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3690856979c06c5fa55985552b034aad93d7a6037152c4381696b394e2ca57`  
		Last Modified: Wed, 26 Dec 2018 10:14:57 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d3b1303cbd61ffe86a1c7064ada74dab87874ec8c2c4e3442d17e27287da00`  
		Last Modified: Wed, 26 Dec 2018 10:14:59 GMT  
		Size: 15.1 MB (15108078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:5.4.6` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:e5eee119ab253c28b7695bfb27f9cefe09d3054b22fd79fde92fecf659c8c770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83399490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ae7f5ab5d5b65ed8b146f8752195eea05b4c4eb8b9c826acc60232b2292c94`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:01:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:01:31 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:01:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:01:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:09:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:09:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:09:37 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:09:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:10:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:11:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 21:46:31 GMT
MAINTAINER Nikolche Mihajlovski
# Sat, 17 Nov 2018 21:46:34 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Sat, 17 Nov 2018 21:46:38 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Sat, 17 Nov 2018 21:46:42 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Sat, 17 Nov 2018 21:46:44 GMT
WORKDIR /opt
# Sat, 17 Nov 2018 21:46:48 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 21:46:51 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 21:46:55 GMT
ENV RAPIDOID_VERSION=5.4.6
# Sat, 17 Nov 2018 21:46:59 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Sat, 17 Nov 2018 21:47:03 GMT
COPY file:604b8053d63179f0e45204cfaceba95b6ea008beaf1c685b80fa09ca1e982e4c in /opt/ 
# Sat, 17 Nov 2018 21:49:10 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 21:49:14 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d594caf9c11b4dd5588375b02cdab683c1f3ff4e66526d98aa006e849a8dea`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 440.9 KB (440857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df53400c62e60586cf50ab4f031bb0ef450d7bc7d26fa4f1e82718c5748e3f9`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2767e9387e76b486b12cc446ecd4a98e7cc06bc83637d321ab0f1d062a46136`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4562c1b1fbeeb60502c1b5a13bcd66d2e30312c26824ea3cb4d08aca0db7058e`  
		Last Modified: Sat, 17 Nov 2018 05:54:50 GMT  
		Size: 48.0 MB (48005165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f11ba3bcd33b85545ed15cb167b138cc4176dacb43c939cd9af3d1c4e1e8b0`  
		Last Modified: Sat, 17 Nov 2018 05:54:32 GMT  
		Size: 246.7 KB (246688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871400567c58ff160725572a15c5635a74cdd0b0b998a64cbf8b3a1b1d3e3b84`  
		Last Modified: Sat, 17 Nov 2018 21:49:49 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae5ce679c7f44487d3630c2300a147ffbe1fa4561a2c9dbb7c2a0ba806dc72`  
		Last Modified: Sat, 17 Nov 2018 21:49:52 GMT  
		Size: 14.4 MB (14374724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rapidoid:latest`

```console
$ docker pull rapidoid@sha256:81e8881a1d534b7fbe1e5d0e02b59526628fed777d831531028f9792e8be261b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rapidoid:latest` - linux; amd64

```console
$ docker pull rapidoid@sha256:1fa2f65c7cc793c814bbc5a5fd385c39a3ef5484a95a02f79b1288940fde7500
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93893434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059565899220ce0dd5fdd32962a06dffc1198033f4cbe7e021538fea7dbe6118`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 14:59:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:59:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:00:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:00:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:03:26 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 15:03:26 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 15:03:27 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:35:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:14:36 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 26 Dec 2018 10:14:37 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 26 Dec 2018 10:14:37 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 26 Dec 2018 10:14:37 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 26 Dec 2018 10:14:37 GMT
WORKDIR /opt
# Wed, 26 Dec 2018 10:14:37 GMT
EXPOSE 8888
# Wed, 26 Dec 2018 10:14:38 GMT
VOLUME [/data]
# Wed, 26 Dec 2018 10:14:38 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 26 Dec 2018 10:14:38 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 26 Dec 2018 10:14:38 GMT
COPY file:54eb4a0f21aca6721ebea0745a2cbfeb12c799c7a0902f588f490fc0afa8e8ea in /opt/ 
# Wed, 26 Dec 2018 10:14:49 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:14:50 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f6dd39b85823bd8b7dedf55493b2571443143909aa32cecfcce74bf0280d18`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 454.8 KB (454816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e0730514ffad1a18c952b64cb142bc90d2fb8dae84958e7f4cbe0f45fc77fd`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dae24989f4b7d5e9ffab8e282103fd96960a02525281093fac8c2fac3e3e35`  
		Last Modified: Fri, 16 Nov 2018 16:00:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec731051d622ff77084352ee4a307a3040bf5ed6307af90e9298b37bfa43c8a`  
		Last Modified: Wed, 26 Dec 2018 08:41:29 GMT  
		Size: 55.8 MB (55843518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3690856979c06c5fa55985552b034aad93d7a6037152c4381696b394e2ca57`  
		Last Modified: Wed, 26 Dec 2018 10:14:57 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d3b1303cbd61ffe86a1c7064ada74dab87874ec8c2c4e3442d17e27287da00`  
		Last Modified: Wed, 26 Dec 2018 10:14:59 GMT  
		Size: 15.1 MB (15108078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rapidoid:latest` - linux; arm64 variant v8

```console
$ docker pull rapidoid@sha256:e5eee119ab253c28b7695bfb27f9cefe09d3054b22fd79fde92fecf659c8c770
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83399490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ae7f5ab5d5b65ed8b146f8752195eea05b4c4eb8b9c826acc60232b2292c94`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 05:01:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 05:01:31 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 05:01:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 05:01:36 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 05:09:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 05:09:36 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 05:09:37 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 05:09:37 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:10:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:11:01 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 21:46:31 GMT
MAINTAINER Nikolche Mihajlovski
# Sat, 17 Nov 2018 21:46:34 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Sat, 17 Nov 2018 21:46:38 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Sat, 17 Nov 2018 21:46:42 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Sat, 17 Nov 2018 21:46:44 GMT
WORKDIR /opt
# Sat, 17 Nov 2018 21:46:48 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 21:46:51 GMT
VOLUME [/data]
# Sat, 17 Nov 2018 21:46:55 GMT
ENV RAPIDOID_VERSION=5.4.6
# Sat, 17 Nov 2018 21:46:59 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Sat, 17 Nov 2018 21:47:03 GMT
COPY file:604b8053d63179f0e45204cfaceba95b6ea008beaf1c685b80fa09ca1e982e4c in /opt/ 
# Sat, 17 Nov 2018 21:49:10 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 21:49:14 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d594caf9c11b4dd5588375b02cdab683c1f3ff4e66526d98aa006e849a8dea`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 440.9 KB (440857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df53400c62e60586cf50ab4f031bb0ef450d7bc7d26fa4f1e82718c5748e3f9`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2767e9387e76b486b12cc446ecd4a98e7cc06bc83637d321ab0f1d062a46136`  
		Last Modified: Sat, 17 Nov 2018 05:49:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4562c1b1fbeeb60502c1b5a13bcd66d2e30312c26824ea3cb4d08aca0db7058e`  
		Last Modified: Sat, 17 Nov 2018 05:54:50 GMT  
		Size: 48.0 MB (48005165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f11ba3bcd33b85545ed15cb167b138cc4176dacb43c939cd9af3d1c4e1e8b0`  
		Last Modified: Sat, 17 Nov 2018 05:54:32 GMT  
		Size: 246.7 KB (246688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871400567c58ff160725572a15c5635a74cdd0b0b998a64cbf8b3a1b1d3e3b84`  
		Last Modified: Sat, 17 Nov 2018 21:49:49 GMT  
		Size: 368.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae5ce679c7f44487d3630c2300a147ffbe1fa4561a2c9dbb7c2a0ba806dc72`  
		Last Modified: Sat, 17 Nov 2018 21:49:52 GMT  
		Size: 14.4 MB (14374724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
